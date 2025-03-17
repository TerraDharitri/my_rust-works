(module
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
  (type (;11;) (func (result i64)))
  (type (;12;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;13;) (func))
  (type (;14;) (func (param i64)))
  (type (;15;) (func (param i64 i32 i32 i32 i32) (result i32)))
  (type (;16;) (func (param i64 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;17;) (func (param i32 i64 i32 i32 i32 i32 i32)))
  (type (;18;) (func (param i32 i32 i32 i32)))
  (type (;19;) (func (param i32 i32 i32 i32 i32)))
  (type (;20;) (func (param i32 i32 i32 i64 i32 i32)))
  (type (;21;) (func (param i32 i32 i64 i32 i64 i32 i32)))
  (type (;22;) (func (param i32 i32 i64 i32 i32)))
  (type (;23;) (func (param i32 i32) (result i64)))
  (type (;24;) (func (param i32 i32 i32 i64)))
  (type (;25;) (func (param i64) (result i64)))
  (type (;26;) (func (param i32 i64 i32)))
  (type (;27;) (func (param i64 i32)))
  (import "env" "bigIntSetInt64" (func $bigIntSetInt64 (;0;) (type 0)))
  (import "env" "bigIntAdd" (func $bigIntAdd (;1;) (type 1)))
  (import "env" "mBufferNew" (func $mBufferNew (;2;) (type 2)))
  (import "env" "mBufferAppend" (func $mBufferAppend (;3;) (type 3)))
  (import "env" "mBufferSetBytes" (func $mBufferSetBytes (;4;) (type 4)))
  (import "env" "managedExecuteOnDestContext" (func $managedExecuteOnDestContext (;5;) (type 5)))
  (import "env" "managedMultiTransferDCDTNFTExecute" (func $managedMultiTransferDCDTNFTExecute (;6;) (type 6)))
  (import "env" "managedSCAddress" (func $managedSCAddress (;7;) (type 7)))
  (import "env" "bigIntGetCallValue" (func $bigIntGetCallValue (;8;) (type 7)))
  (import "env" "managedGetMultiDCDTCallValue" (func $managedGetMultiDCDTCallValue (;9;) (type 7)))
  (import "env" "mBufferGetLength" (func $mBufferGetLength (;10;) (type 8)))
  (import "env" "signalError" (func $signalError (;11;) (type 9)))
  (import "env" "mBufferGetArgument" (func $mBufferGetArgument (;12;) (type 3)))
  (import "env" "mBufferAppendBytes" (func $mBufferAppendBytes (;13;) (type 4)))
  (import "env" "managedSignalError" (func $managedSignalError (;14;) (type 7)))
  (import "env" "getNumDCDTTransfers" (func $getNumDCDTTransfers (;15;) (type 2)))
  (import "env" "smallIntGetUnsignedArgument" (func $smallIntGetUnsignedArgument (;16;) (type 10)))
  (import "env" "getNumArguments" (func $getNumArguments (;17;) (type 2)))
  (import "env" "managedGetOriginalTxHash" (func $managedGetOriginalTxHash (;18;) (type 7)))
  (import "env" "getGasLeft" (func $getGasLeft (;19;) (type 11)))
  (import "env" "mBufferCopyByteSlice" (func $mBufferCopyByteSlice (;20;) (type 12)))
  (import "env" "bigIntTDiv" (func $bigIntTDiv (;21;) (type 1)))
  (import "env" "mBufferFromBigIntUnsigned" (func $mBufferFromBigIntUnsigned (;22;) (type 3)))
  (import "env" "mBufferToBigIntUnsigned" (func $mBufferToBigIntUnsigned (;23;) (type 3)))
  (import "env" "mBufferStorageLoad" (func $mBufferStorageLoad (;24;) (type 3)))
  (import "env" "mBufferStorageStore" (func $mBufferStorageStore (;25;) (type 3)))
  (import "env" "mBufferFinish" (func $mBufferFinish (;26;) (type 8)))
  (import "env" "managedTransferValueExecute" (func $managedTransferValueExecute (;27;) (type 6)))
  (import "env" "managedWriteLog" (func $managedWriteLog (;28;) (type 9)))
  (import "env" "checkNoPayment" (func $checkNoPayment (;29;) (type 13)))
  (import "env" "finish" (func $finish (;30;) (type 9)))
  (import "env" "smallIntFinishUnsigned" (func $smallIntFinishUnsigned (;31;) (type 14)))
  (import "env" "bigIntFinishUnsigned" (func $bigIntFinishUnsigned (;32;) (type 7)))
  (import "env" "managedExecuteOnSameContext" (func $managedExecuteOnSameContext (;33;) (type 5)))
  (import "env" "managedExecuteReadOnly" (func $managedExecuteReadOnly (;34;) (type 15)))
  (import "env" "managedCreateContract" (func $managedCreateContract (;35;) (type 16)))
  (import "env" "managedDeployFromSourceContract" (func $managedDeployFromSourceContract (;36;) (type 16)))
  (import "env" "managedUpgradeContract" (func $managedUpgradeContract (;37;) (type 17)))
  (import "env" "managedUpgradeFromSourceContract" (func $managedUpgradeFromSourceContract (;38;) (type 17)))
  (import "env" "bigIntSign" (func $bigIntSign (;39;) (type 8)))
  (import "env" "mBufferGetByteSlice" (func $mBufferGetByteSlice (;40;) (type 12)))
  (import "env" "managedAsyncCall" (func $managedAsyncCall (;41;) (type 18)))
  (func $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0fd93bb9f6467013E (;42;) (type 8) (param i32) (result i32)
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
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E (;43;) (type 2) (result i32)
    (local i32)
    i32.const 0
    i32.const 0
    i32.load offset=131732
    i32.const -1
    i32.add
    local.tee 0
    i32.store offset=131732
    local.get 0
  )
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1af899a91db679ecE (;44;) (type 19) (param i32 i32 i32 i32 i32)
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
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE (;45;) (type 9) (param i32 i32)
    call $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E
    unreachable
  )
  (func $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E (;46;) (type 8) (param i32) (result i32)
    (local i32)
    call $mBufferNew
    local.tee 1
    local.get 0
    call $mBufferAppend
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$26direct_dcdt_with_gas_limit17hc101320e6a162421E (;47;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    i64.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h5dc0220355b2dcbeE
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE (;48;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i32.const 131716
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h5dc0220355b2dcbeE (;49;) (type 20) (param i32 i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    i64.const 0
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h4a8e46e768f2396fE
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h3cff81cef5a33db7E (;50;) (type 18) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13send_api_node123_$LT$impl$u20$dharitri_sc..api..send_api..SendApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$14async_call_raw17hcba505d2f5fa12cbE (;51;) (type 18) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $managedAsyncCall
    unreachable
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h4a8e46e768f2396fE (;52;) (type 21) (param i32 i32 i64 i32 i64 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    local.set 8
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
    local.set 1
    local.get 7
    local.get 3
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0fd93bb9f6467013E
    i32.store offset=12
    local.get 7
    local.get 2
    i64.store
    local.get 7
    local.get 1
    i32.store offset=8
    local.get 8
    local.get 7
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hd284f96e7ba05c0fE
    local.get 0
    local.get 8
    local.get 4
    local.get 5
    local.get 6
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h3e1847c35b91f318E
    local.get 7
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17heb9b8e19a53f8944E (;53;) (type 7) (param i32)
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
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hd284f96e7ba05c0fE (;54;) (type 9) (param i32 i32)
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
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27multi_dcdt_transfer_execute17h3e1847c35b91f318E (;55;) (type 22) (param i32 i32 i64 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $managedMultiTransferDCDTNFTExecute
    drop
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17he71c2465f5805da8E (;56;) (type 15) (param i64 i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 5
    call $managedExecuteOnDestContext
    drop
    local.get 5
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hba8d48fba3f7922dE (;57;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    call $managedSCAddress
    local.get 0
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h71dab8bb5c32f371E (;58;) (type 2) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=141748
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
    i32.store8 offset=141748
    i32.const -11
    call $bigIntGetCallValue
    i32.const -11
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h2c418173388f8cfeE (;59;) (type 2) (result i32)
    (local i32)
    block ;; label = @1
      i32.const 0
      i32.load8_u offset=141752
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
    i32.store8 offset=141752
    i32.const -21
    call $managedGetMultiDCDTCallValue
    i32.const -21
  )
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$20single_fungible_dcdt17h53c5c557ee733f5bE (;60;) (type 7) (param i32)
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
        call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h2c418173388f8cfeE
        local.tee 3
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h5d4563981fc626c0E
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
          call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
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
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h9a6215e660097d57E
          local.set 11
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h7e3759733cd00a44E
          local.set 12
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.const 28
          i32.add
          call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h9a6215e660097d57E
          local.set 13
          local.get 9
          local.set 4
          i32.const 0
          local.set 2
          local.get 10
          br_if 0 (;@3;)
        end
        local.get 8
        i32.const 1
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
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
    i32.const 131669
    i32.const 28
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h5d4563981fc626c0E (;61;) (type 8) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h657ef4db8566c2a5E
    i32.const 4
    i32.shr_u
  )
  (func $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E (;62;) (type 12) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 3
    local.get 2
    call $mBufferGetByteSlice
    i32.const 0
    i32.ne
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h9a6215e660097d57E (;63;) (type 3) (param i32 i32) (result i32)
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
    local.get 0
    local.get 1
    i32.load
    local.tee 3
    local.get 3
    i32.const 4
    i32.add
    local.tee 3
    call $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hd0ec625ddfc8c945E
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
  (func $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h7e3759733cd00a44E (;64;) (type 23) (param i32 i32) (result i64)
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
    local.get 0
    local.get 1
    i32.load
    local.tee 3
    local.get 3
    i32.const 8
    i32.add
    local.tee 3
    call $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hd0ec625ddfc8c945E
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
  (func $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hb2e6ee8984586800E (;65;) (type 7) (param i32)
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
              call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h2c418173388f8cfeE
              local.tee 2
              call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h5d4563981fc626c0E
              br_table 1 (;@4;) 2 (;@3;) 0 (;@5;)
            end
            i32.const 131072
            i32.const 34
            call $signalError
            unreachable
          end
          i32.const 2147483646
          local.set 2
          call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h71dab8bb5c32f371E
          call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0fd93bb9f6467013E
          local.set 3
          br 1 (;@2;)
        end
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h2bf9c2480a1cc3abE
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
    i32.const 131669
    i32.const 28
    call $signalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h2bf9c2480a1cc3abE (;66;) (type 9) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0c594be5c67767f6E
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
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h9a6215e660097d57E
    local.set 3
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h7e3759733cd00a44E
    local.set 4
    local.get 2
    i32.const 8
    i32.add
    local.get 2
    i32.const 28
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h9a6215e660097d57E
    local.set 5
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      i32.const 131315
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
  (func $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hf649a5e500c5c8a8E (;67;) (type 8) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferGetArgument
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4b916e753516bff5E (;68;) (type 18) (param i32 i32 i32 i32)
    (local i32)
    i32.const 131106
    i32.const 23
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h04cf44036d2bc88eE
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h04cf44036d2bc88eE (;69;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferSetBytes
    drop
    local.get 2
  )
  (func $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h9de7707fd5e38953E (;70;) (type 13)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E (;71;) (type 4) (param i32 i32 i32) (result i32)
    (local i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    local.set 3
    local.get 0
    i32.load
    local.set 4
    block ;; label = @1
      loop ;; label = @2
        local.get 4
        i32.const 0
        i32.load offset=141744
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
        call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hf649a5e500c5c8a8E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE
        local.get 5
        local.set 4
        br 0 (;@2;)
      end
    end
    local.get 3
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE (;72;) (type 9) (param i32 i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h065e7c835d51b01cE (;73;) (type 8) (param i32) (result i32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hf649a5e500c5c8a8E
    local.tee 2
    call $mBufferGetLength
    local.set 0
    local.get 1
    i32.const 24
    i32.add
    i32.const 0
    i32.store8
    local.get 1
    i32.const 20
    i32.add
    local.get 0
    i32.store
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
        call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h6fae4a7f34288b7aE
        br_if 0 (;@2;)
        local.get 1
        i32.const 30
        i32.add
        i32.const 2
        call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
        local.set 3
        local.get 1
        i32.load offset=12
        local.get 1
        i32.load offset=8
        i32.const 2
        i32.add
        i32.ne
        br_if 1 (;@1;)
        block ;; label = @3
          local.get 1
          i32.load8_u offset=24
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          i32.const 0
          i32.store offset=141736
          i32.const 0
          i32.const 0
          i32.store8 offset=141740
        end
        local.get 1
        i32.const 32
        i32.add
        global.set $__stack_pointer
        local.get 3
        i32.wrap_i64
        i32.const 1286
        i32.and
        return
      end
      i32.const 131455
      i32.const 13
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h6cffb8fb51211119E
      unreachable
    end
    i32.const 131455
    i32.const 13
    i32.const 131286
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4b916e753516bff5E
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h6fae4a7f34288b7aE (;74;) (type 12) (param i32 i32 i32 i32) (result i32)
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
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h657ef4db8566c2a5E
          local.tee 6
          i32.const 10000
          i32.gt_u
          br_if 1 (;@2;)
          i32.const 0
          i32.load8_u offset=141740
          i32.const 255
          i32.and
          br_if 1 (;@2;)
          i32.const 0
          local.get 6
          i32.store offset=141736
          i32.const 0
          i32.const 1
          i32.store8 offset=141740
          local.get 4
          i32.const 8
          i32.add
          local.get 6
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h27bcb7a412a8b165E
          local.get 5
          i32.const 0
          local.get 4
          i32.load offset=8
          local.get 4
          i32.load offset=12
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0c594be5c67767f6E
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
        i32.load offset=141736
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0c594be5c67767f6E
      local.set 0
    end
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E (;75;) (type 23) (param i32 i32) (result i64)
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h6cffb8fb51211119E (;76;) (type 9) (param i32 i32)
    local.get 0
    local.get 1
    i32.const 131300
    i32.const 15
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4b916e753516bff5E
    unreachable
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E (;77;) (type 4) (param i32 i32 i32) (result i32)
    block ;; label = @1
      local.get 0
      call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hf649a5e500c5c8a8E
      local.tee 0
      call $mBufferGetLength
      i32.const 32
      i32.eq
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 131543
      i32.const 16
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4b916e753516bff5E
      unreachable
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h5ff2d88fc2cfb562E (;78;) (type 2) (result i32)
    (local i64)
    block ;; label = @1
      i32.const 0
      call $smallIntGetUnsignedArgument
      local.tee 0
      i64.const 4294967296
      i64.lt_u
      br_if 0 (;@1;)
      i32.const 131441
      i32.const 5
      i32.const 131286
      i32.const 14
      call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4b916e753516bff5E
      unreachable
    end
    local.get 0
    i32.wrap_i64
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h760afa2d42d69f93E (;79;) (type 8) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc2io12arg_de_input24ArgDecodeInput$LT$AA$GT$17to_managed_buffer17hf649a5e500c5c8a8E
  )
  (func $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE (;80;) (type 7) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141744
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7ebf0c039c6bd686E (;81;) (type 7) (param i32)
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E (;82;) (type 7) (param i32)
    block ;; label = @1
      i32.const 0
      i32.load offset=141744
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
  (func $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE (;83;) (type 13)
    i32.const 0
    call $getNumArguments
    i32.store offset=141744
  )
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17h17a86897c2d809eaE (;84;) (type 7) (param i32)
    (local i32 i32 i32 i32)
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
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
      local.tee 3
      call $managedGetOriginalTxHash
      i32.const 131276
      i32.const 10
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h04cf44036d2bc88eE
      local.tee 4
      local.get 3
      call $mBufferAppend
      drop
      local.get 1
      i32.const 16
      i32.add
      call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h0522b21586aec254E
      local.get 1
      local.get 1
      i32.load8_u offset=20
      i32.store8 offset=32
      local.get 1
      local.get 1
      i32.load offset=16
      i32.store offset=28
      local.get 2
      local.get 0
      i32.const 20
      i32.add
      i32.load
      local.get 1
      i32.const 28
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17hf376b7bb060a4a1eE
      local.get 0
      i32.const 24
      i32.add
      local.tee 2
      i32.load
      local.tee 3
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h59d30283ce8fbbd4E
      local.get 1
      i32.const 28
      i32.add
      call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h4316023c7d1b6ec1E
      local.get 1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h657ef4db8566c2a5E
      i32.store offset=44
      local.get 1
      i32.const 0
      i32.store offset=40
      local.get 1
      local.get 2
      i32.store offset=36
      block ;; label = @2
        loop ;; label = @3
          local.get 1
          i32.const 8
          i32.add
          local.get 1
          i32.const 36
          i32.add
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc216c9844f3eceb4E
          local.get 1
          i32.load offset=8
          i32.eqz
          br_if 1 (;@2;)
          local.get 1
          i32.load offset=12
          local.get 1
          i32.const 28
          i32.add
          call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8e1693eac1c467d6E
          br 0 (;@3;)
        end
      end
      local.get 4
      local.get 1
      i32.load offset=28
      local.get 1
      i32.load8_u offset=32
      call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h7a96f39af36a37a5E
    end
    local.get 0
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17hf4e8c5f1f8db0048E
    unreachable
  )
  (func $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h0522b21586aec254E (;85;) (type 7) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        i32.const 0
        i32.load8_u offset=141740
        local.tee 2
        br_if 0 (;@2;)
        i32.const 0
        i32.const 1
        i32.store8 offset=141740
        i32.const 0
        i32.const 0
        i32.store offset=141736
        local.get 1
        i32.const 8
        i32.add
        i32.const 0
        call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h27bcb7a412a8b165E
        local.get 1
        i32.load offset=8
        local.get 1
        i32.load offset=12
        i32.const 131716
        i32.const 0
        call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
        local.set 3
        br 1 (;@1;)
      end
      i32.const 131716
      i32.const 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h04cf44036d2bc88eE
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
  (func $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17hf376b7bb060a4a1eE (;86;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h4316023c7d1b6ec1E
    local.get 2
    local.get 0
    local.get 1
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h534bad8bceb4c30eE
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h59d30283ce8fbbd4E (;87;) (type 8) (param i32) (result i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h657ef4db8566c2a5E
    i32.const 2
    i32.shr_u
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned86_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$usize$GT$24dep_encode_or_handle_err17h4316023c7d1b6ec1E (;88;) (type 9) (param i32 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h534bad8bceb4c30eE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h657ef4db8566c2a5E (;89;) (type 8) (param i32) (result i32)
    local.get 0
    call $mBufferGetLength
  )
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc216c9844f3eceb4E (;90;) (type 9) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0c594be5c67767f6E
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
  (func $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8e1693eac1c467d6E (;91;) (type 9) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h657ef4db8566c2a5E
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h534bad8bceb4c30eE
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          local.get 1
          i32.load8_u offset=4
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h657ef4db8566c2a5E
          local.set 3
          i32.const 10000
          i32.const 0
          i32.load offset=141736
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17he05e6e60f84f40a5E
          local.get 0
          i32.const 0
          local.get 2
          i32.load
          local.get 2
          i32.load offset=4
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0c594be5c67767f6E
          drop
          i32.const 0
          local.get 3
          i32.store offset=141736
          br 2 (;@1;)
        end
        local.get 1
        i32.load
        local.get 0
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h81de7a7b41a19de4E
        br 1 (;@1;)
      end
      local.get 1
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h002fa1a5656f3a95E
      local.get 1
      i32.load
      local.get 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h81de7a7b41a19de4E
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h7a96f39af36a37a5E (;92;) (type 1) (param i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17heb07ada6ce741825E
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17hf4e8c5f1f8db0048E (;93;) (type 7) (param i32)
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h3cff81cef5a33db7E
    unreachable
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h02e657649a4eeb2dE (;94;) (type 1) (param i32 i32 i32)
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h04cf44036d2bc88eE
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h4af84704534a9195E (;95;) (type 24) (param i32 i32 i32 i64)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h9c9e81be4fc432bdE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h9c9e81be4fc432bdE (;96;) (type 0) (param i32 i64)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    local.tee 2
    local.get 1
    call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h4d2176eb4beb2303E
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h854bcbb5667ef668E (;97;) (type 18) (param i32 i32 i32 i32)
    local.get 2
    local.get 3
    call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc060a72d3c1344f3E
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc060a72d3c1344f3E (;98;) (type 9) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    drop
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h6b7b24214d30faedE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17ha998a3c1df1a806aE (;99;) (type 18) (param i32 i32 i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    drop
    local.get 2
    local.get 3
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store
  )
  (func $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hc78f78a6d604ae0bE (;100;) (type 19) (param i32 i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block ;; label = @1
      local.get 3
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h657ef4db8566c2a5E
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      local.get 3
      call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17ha09d58ba3901950cE
      local.get 4
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h657ef4db8566c2a5E
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0c594be5c67767f6E
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
        call $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17ha09d58ba3901950cE
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
  (func $_ZN166_$LT$dharitri_sc..types..interaction..managed_arg_buffer..ManagedArgBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17ha09d58ba3901950cE (;101;) (type 9) (param i32 i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    drop
    local.get 0
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE
  )
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0c594be5c67767f6E (;102;) (type 12) (param i32 i32 i32 i32) (result i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
  )
  (func $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17hdadbcdc698676aedE (;103;) (type 25) (param i64) (result i64)
    block ;; label = @1
      local.get 0
      i64.const -1
      i64.ne
      br_if 0 (;@1;)
      call $getGasLeft
      local.tee 0
      i64.const -100000
      i64.add
      local.get 0
      local.get 0
      i64.const 100000
      i64.gt_u
      select
      local.set 0
    end
    local.get 0
  )
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h1cbd3caf6dc8d83cE (;104;) (type 9) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 72
    i32.add
    i32.const 16
    i32.add
    local.tee 3
    local.get 1
    i32.const 16
    i32.add
    i64.load
    i64.store
    local.get 2
    i32.const 72
    i32.add
    i32.const 8
    i32.add
    local.tee 4
    local.get 1
    i32.const 8
    i32.add
    i64.load
    i64.store
    local.get 2
    local.get 1
    i64.load
    i64.store offset=72
    local.get 2
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h58601a8c416896a9E
    i32.store offset=96
    block ;; label = @1
      block ;; label = @2
        block ;; label = @3
          block ;; label = @4
            local.get 1
            i32.load offset=24
            local.tee 5
            call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h5d4563981fc626c0E
            br_table 1 (;@3;) 2 (;@2;) 0 (;@4;)
          end
          call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hba8d48fba3f7922dE
          local.set 4
          local.get 2
          i32.load offset=76
          local.set 6
          local.get 2
          i32.load offset=72
          local.set 7
          local.get 2
          local.get 5
          i32.store offset=124
          local.get 2
          i32.const 32
          i32.add
          i32.const 131229
          i32.const 20
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h02e657649a4eeb2dE
          local.get 2
          i32.load offset=32
          local.set 3
          local.get 2
          i32.load offset=36
          local.set 1
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
          drop
          local.get 1
          local.get 2
          i32.load offset=88
          call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE
          local.get 5
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h5d4563981fc626c0E
          local.set 8
          call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
          local.tee 9
          local.get 8
          i64.extend_i32_u
          call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h4d2176eb4beb2303E
          local.get 1
          local.get 9
          call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE
          local.get 2
          local.get 5
          call $mBufferGetLength
          i32.store offset=112
          local.get 2
          i32.const 0
          i32.store offset=108
          local.get 2
          local.get 2
          i32.const 124
          i32.add
          i32.store offset=104
          block ;; label = @4
            loop ;; label = @5
              local.get 2
              i32.const 40
              i32.add
              local.get 2
              i32.const 104
              i32.add
              call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbd2f5b4a0b177617E
              local.get 2
              i64.load offset=40
              i64.eqz
              br_if 1 (;@4;)
              local.get 2
              i32.load offset=60
              local.set 5
              local.get 2
              i32.const 24
              i32.add
              local.get 3
              local.get 1
              local.get 2
              i32.load offset=56
              call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17ha998a3c1df1a806aE
              local.get 2
              i32.const 16
              i32.add
              local.get 2
              i32.load offset=24
              local.get 2
              i32.load offset=28
              local.get 2
              i64.load offset=48
              call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h4af84704534a9195E
              local.get 2
              i32.const 8
              i32.add
              local.get 2
              i32.load offset=16
              local.get 2
              i32.load offset=20
              local.get 5
              call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h854bcbb5667ef668E
              local.get 2
              i32.load offset=12
              local.set 1
              local.get 2
              i32.load offset=8
              local.set 3
              br 0 (;@5;)
            end
          end
          local.get 2
          local.get 3
          local.get 1
          local.get 7
          local.get 6
          call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hc78f78a6d604ae0bE
          local.get 2
          i64.load
          local.set 10
          local.get 2
          call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h58601a8c416896a9E
          i32.store offset=64
          local.get 2
          local.get 4
          i32.store offset=56
          local.get 2
          local.get 10
          i64.store offset=40
          br 2 (;@1;)
        end
        local.get 2
        i32.const 40
        i32.add
        i32.const 24
        i32.add
        local.get 2
        i32.const 72
        i32.add
        i32.const 24
        i32.add
        i64.load
        i64.store
        local.get 2
        i32.const 40
        i32.add
        i32.const 16
        i32.add
        local.get 3
        i64.load
        i64.store
        local.get 2
        i32.const 40
        i32.add
        i32.const 8
        i32.add
        local.get 4
        i64.load
        i64.store
        local.get 2
        local.get 2
        i64.load offset=72
        i64.store offset=40
        br 1 (;@1;)
      end
      local.get 2
      i32.const 104
      i32.add
      local.get 5
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3get17h2bf9c2480a1cc3abE
      local.get 2
      i32.const 40
      i32.add
      local.get 2
      i32.const 72
      i32.add
      local.get 2
      i32.const 104
      i32.add
      call $_ZN11dharitri_sc5types11interaction21contract_call_convert123_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_with_rewa..ContractCallWithRewa$LT$SA$C$OriginalResult$GT$$GT$36convert_to_single_transfer_dcdt_call17h071b881d223c673eE
    end
    local.get 0
    local.get 2
    i32.load offset=64
    i32.store offset=12
    local.get 0
    local.get 2
    i32.load offset=56
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 2
    i64.load offset=40
    i64.store align=4
    local.get 2
    i32.const 128
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h58601a8c416896a9E (;105;) (type 2) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 0
    i64.const 0
    call $bigIntSetInt64
    local.get 0
  )
  (func $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h4d2176eb4beb2303E (;106;) (type 0) (param i32 i64)
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
  (func $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbd2f5b4a0b177617E (;107;) (type 9) (param i32 i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0c594be5c67767f6E
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h9a6215e660097d57E
      local.set 4
      local.get 2
      i32.const 8
      i32.add
      local.get 2
      i32.const 28
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h7e3759733cd00a44E
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
      call $_ZN11dharitri_sc5types7managed7wrapped18dcdt_token_payment27managed_vec_item_from_slice17h9a6215e660097d57E
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
  (func $_ZN11dharitri_sc5types11interaction21contract_call_convert123_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_with_rewa..ContractCallWithRewa$LT$SA$C$OriginalResult$GT$$GT$36convert_to_single_transfer_dcdt_call17h071b881d223c673eE (;108;) (type 1) (param i32 i32 i32)
    (local i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 2
        i64.load
        local.tee 4
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 1
        i32.load offset=16
        local.set 5
        local.get 1
        i32.load offset=4
        local.set 6
        local.get 1
        i32.load
        local.set 7
        local.get 3
        i32.const 32
        i32.add
        i32.const 131264
        i32.const 12
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h02e657649a4eeb2dE
        local.get 3
        i32.const 24
        i32.add
        local.get 3
        i32.load offset=32
        local.get 3
        i32.load offset=36
        local.get 2
        i32.load offset=8
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17ha998a3c1df1a806aE
        local.get 3
        i32.const 16
        i32.add
        local.get 3
        i32.load offset=24
        local.get 3
        i32.load offset=28
        local.get 2
        i32.load offset=12
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h854bcbb5667ef668E
        local.get 3
        i32.const 8
        i32.add
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=20
        local.get 7
        local.get 6
        call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hc78f78a6d604ae0bE
        local.get 3
        i32.load offset=12
        local.set 2
        local.get 3
        i32.load offset=8
        local.set 6
        br 1 (;@1;)
      end
      call $_ZN11dharitri_sc13contract_base8wrappers18blockchain_wrapper26BlockchainWrapper$LT$A$GT$14get_sc_address17hba8d48fba3f7922dE
      local.set 5
      local.get 1
      i32.load offset=4
      local.set 6
      local.get 1
      i32.load
      local.set 7
      local.get 3
      i32.const 72
      i32.add
      i32.const 131249
      i32.const 15
      call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$3new17h02e657649a4eeb2dE
      local.get 3
      i32.const 64
      i32.add
      local.get 3
      i32.load offset=72
      local.get 3
      i32.load offset=76
      local.get 2
      i32.load offset=8
      call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17ha998a3c1df1a806aE
      local.get 3
      i32.const 56
      i32.add
      local.get 3
      i32.load offset=64
      local.get 3
      i32.load offset=68
      local.get 4
      call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h4af84704534a9195E
      local.get 3
      i32.const 48
      i32.add
      local.get 3
      i32.load offset=56
      local.get 3
      i32.load offset=60
      local.get 2
      i32.load offset=12
      call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17h854bcbb5667ef668E
      local.get 3
      i32.load offset=48
      local.set 8
      local.get 3
      i32.load offset=52
      local.set 2
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
      drop
      local.get 2
      local.get 1
      i32.load offset=16
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE
      local.get 3
      i32.const 40
      i32.add
      local.get 8
      local.get 2
      local.get 7
      local.get 6
      call $_ZN11dharitri_sc5types11interaction13function_call23FunctionCall$LT$Api$GT$8argument17hc78f78a6d604ae0bE
      local.get 3
      i32.load offset=44
      local.set 2
      local.get 3
      i32.load offset=40
      local.set 6
    end
    local.get 1
    i64.load offset=8
    local.set 4
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h58601a8c416896a9E
    i32.store offset=24
    local.get 0
    local.get 5
    i32.store offset=16
    local.get 0
    local.get 4
    i64.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 0
    local.get 6
    i32.store
    local.get 3
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h6cbe81d017e3e0d0E (;109;) (type 9) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    block ;; label = @1
      block ;; label = @2
        local.get 1
        i32.load offset=8
        i32.const 2147483646
        i32.eq
        br_if 0 (;@2;)
        local.get 2
        i32.const 48
        i32.add
        local.get 1
        i32.const 32
        i32.add
        i64.load
        i64.store
        local.get 2
        i32.const 40
        i32.add
        local.get 1
        i32.const 24
        i32.add
        i64.load
        i64.store
        local.get 2
        local.get 1
        i64.load offset=16
        i64.store offset=32
        local.get 2
        call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h58601a8c416896a9E
        i32.store offset=56
        local.get 2
        i32.const 64
        i32.add
        local.get 1
        call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$11unwrap_dcdt17hde54af1680bc7b0fE
        local.get 2
        local.get 2
        i32.const 32
        i32.add
        local.get 2
        i32.const 64
        i32.add
        call $_ZN11dharitri_sc5types11interaction21contract_call_convert123_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_with_rewa..ContractCallWithRewa$LT$SA$C$OriginalResult$GT$$GT$36convert_to_single_transfer_dcdt_call17h071b881d223c673eE
        local.get 2
        i32.load offset=24
        local.set 1
        br 1 (;@1;)
      end
      local.get 2
      i32.const 8
      i32.add
      local.get 1
      i32.const 24
      i32.add
      i64.load
      i64.store
      local.get 2
      i32.const 16
      i32.add
      local.get 1
      i32.const 32
      i32.add
      i64.load
      i64.store
      local.get 2
      local.get 1
      i64.load offset=16
      i64.store
      local.get 1
      i32.load offset=12
      local.set 1
    end
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 2
    i32.load offset=16
    i32.store offset=8
    local.get 0
    i32.const 0
    i32.store offset=16
    local.get 0
    local.get 2
    i64.load
    i64.store align=4
    local.get 2
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$11unwrap_dcdt17hde54af1680bc7b0fE (;110;) (type 9) (param i32 i32)
    (local i32)
    block ;; label = @1
      local.get 1
      i32.load offset=8
      local.tee 2
      i32.const 2147483646
      i32.ne
      br_if 0 (;@1;)
      i32.const 131344
      i32.const 13
      call $signalError
      unreachable
    end
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 0
    local.get 1
    i32.load offset=12
    i32.store offset=12
    local.get 0
    local.get 1
    i64.load
    i64.store
  )
  (func $_ZN11dharitri_sc5types11interaction29contract_call_with_multi_dcdt52ContractCallWithMultiDcdt$LT$SA$C$OriginalResult$GT$3new17h5b818ccdcf938616E (;111;) (type 1) (param i32 i32 i32)
    (local i32 i32)
    i32.const 131412
    i32.const 29
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h04cf44036d2bc88eE
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    local.set 4
    local.get 0
    local.get 2
    i32.store offset=24
    local.get 0
    local.get 1
    i32.store offset=16
    local.get 0
    i64.const -1
    i64.store offset=8
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h3579bcfa627f4bb9E (;112;) (type 8) (param i32) (result i32)
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h0661e58db5381d95E
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
      i32.const 131300
      i32.const 15
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h2757f22b2cee5aa8E
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
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h0661e58db5381d95E (;113;) (type 1) (param i32 i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 8
      i32.add
      local.get 0
      i32.load
      local.get 1
      local.get 2
      call $_ZN11dharitri_sc5types7managed7wrapped24preloaded_managed_buffer31PreloadedManagedBuffer$LT$M$GT$10load_slice17h6fae4a7f34288b7aE
      i32.eqz
      br_if 0 (;@1;)
      call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h15c461d5f02cf77aE
      unreachable
    end
    local.get 0
    local.get 0
    i32.load
    local.get 2
    i32.add
    i32.store
  )
  (func $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h2757f22b2cee5aa8E (;114;) (type 9) (param i32 i32)
    (local i32)
    i32.const 131517
    i32.const 22
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h04cf44036d2bc88eE
    local.tee 2
    local.get 0
    local.get 1
    call $mBufferAppendBytes
    drop
    local.get 2
    call $managedSignalError
    unreachable
  )
  (func $_ZN11dharitri_sc5types7managed11multi_value24multi_value_encoded_iter165_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$GT$9into_iter17h1875ce835ce8cbadE (;115;) (type 9) (param i32 i32)
    (local i32)
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$3len17h59d30283ce8fbbd4E
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
  (func $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$6append17h81de7a7b41a19de4E (;116;) (type 9) (param i32 i32)
    local.get 0
    local.get 1
    call $mBufferAppend
    drop
  )
  (func $_ZN11dharitri_sc5types7managed5basic18big_uint_operators125_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3div17hf4165b2c48f9b7eaE (;117;) (type 8) (param i32) (result i32)
    local.get 0
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$9make_temp17hf8830d48320b8dfcE
    call $bigIntTDiv
    local.get 0
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$9make_temp17hf8830d48320b8dfcE (;118;) (type 2) (result i32)
    i32.const -14
    i64.const 2
    call $bigIntSetInt64
    i32.const -14
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h6b7b24214d30faedE (;119;) (type 8) (param i32) (result i32)
    (local i32)
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    local.get 0
    call $mBufferFromBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h2f29efd1d75c3ad2E (;120;) (type 8) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferToBigIntUnsigned
    drop
    local.get 1
  )
  (func $_ZN4core5slice5index74_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$5index17hd0ec625ddfc8c945E (;121;) (type 18) (param i32 i32 i32 i32)
    block ;; label = @1
      block ;; label = @2
        local.get 3
        local.get 2
        i32.lt_u
        br_if 0 (;@2;)
        local.get 3
        i32.const 16
        i32.gt_u
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        local.get 2
        i32.sub
        i32.store offset=4
        local.get 0
        local.get 1
        local.get 2
        i32.add
        i32.store
        return
      end
      local.get 2
      local.get 3
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
      unreachable
    end
    local.get 3
    i32.const 16
    call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
    unreachable
  )
  (func $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E (;122;) (type 18) (param i32 i32 i32 i32)
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
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h27bcb7a412a8b165E (;123;) (type 9) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    i32.const 131736
    i32.const 10000
    local.get 1
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h2d9bf1abd3d6a2d7E
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
  (func $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$5index17h95dd1a03576b7dfcE (;124;) (type 1) (param i32 i32 i32)
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
    i32.const 131736
    i32.add
    i32.store
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17heb07ada6ce741825E (;125;) (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store8 offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h002fa1a5656f3a95E
    local.get 2
    i32.load offset=8
    local.set 1
    block ;; label = @1
      local.get 2
      i32.load8_u offset=12
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      i32.const 0
      i32.store offset=141736
      i32.const 0
      i32.const 0
      i32.store8 offset=141740
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 1
  )
  (func $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h002fa1a5656f3a95E (;126;) (type 7) (param i32)
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
      i32.load offset=141736
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
      i32.store offset=141736
      i32.const 0
      i32.const 0
      i32.store8 offset=141740
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h056980fb99fa1f2eE (;127;) (type 8) (param i32) (result i32)
    (local i32)
    local.get 0
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 1
    call $mBufferStorageLoad
    drop
    local.get 1
  )
  (func $_ZN11dharitri_sc7storage11storage_set13storage_clear17h53f162c0faea06d0E (;128;) (type 7) (param i32)
    i32.const -20
    i32.const 131716
    i32.const 0
    call $mBufferSetBytes
    drop
    local.get 0
    i32.const -20
    call $mBufferStorageStore
    drop
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h6f46e1c0c2643ab3E (;129;) (type 9) (param i32 i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h04cf44036d2bc88eE
    call $mBufferStorageStore
    drop
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN17dharitri_sc_codec8num_conv17top_encode_number17hfa66c899aa066fc8E (;130;) (type 26) (param i32 i64 i32)
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
        i32.const 131716
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
      i32.const 8
      i32.const 8
      call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17he2ddc4e697a9eb6eE
      unreachable
    end
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 0
    local.get 3
    i32.store
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$13get_unchecked17h59fa527af0b93fa2E (;131;) (type 3) (param i32 i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$8item_key17h19d1a5b21362108aE
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h056980fb99fa1f2eE
    local.set 3
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    local.set 4
    i32.const 0
    local.set 0
    local.get 3
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
          i32.store offset=141736
          i32.const 0
          i32.const 0
          i32.store8 offset=141740
        end
        local.get 2
        i32.const 32
        i32.add
        global.set $__stack_pointer
        local.get 4
        return
      end
      local.get 4
      local.get 2
      i32.const 12
      i32.add
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h3579bcfa627f4bb9E
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE
      local.get 2
      i32.load offset=12
      local.set 0
      local.get 2
      i32.load offset=16
      local.set 1
      br 0 (;@1;)
    end
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$8item_key17h19d1a5b21362108aE (;132;) (type 3) (param i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
    local.tee 0
    i32.const 131361
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
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$13get_unchecked17h73744946469aadecE (;133;) (type 1) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 1
    local.get 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$8item_key17h19d1a5b21362108aE
    call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h056980fb99fa1f2eE
    local.tee 1
    call $mBufferGetLength
    local.set 2
    local.get 3
    i32.const 20
    i32.add
    i32.const 0
    i32.store8
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    i32.store
    local.get 3
    local.get 1
    i32.store offset=12
    local.get 3
    local.get 2
    i32.store offset=8
    local.get 3
    i32.const 0
    i32.store offset=4
    block ;; label = @1
      local.get 3
      i32.const 4
      i32.add
      call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h3579bcfa627f4bb9E
      local.tee 2
      call $mBufferGetLength
      i32.const 4
      i32.ne
      br_if 0 (;@1;)
      local.get 3
      i32.const 0
      i32.store offset=24
      local.get 2
      i32.const 0
      local.get 3
      i32.const 24
      i32.add
      i32.const 4
      call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
      drop
      i32.const 2147483646
      local.get 2
      local.get 3
      i32.load offset=24
      i32.const 1096238418
      i32.eq
      select
      local.set 2
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
    call $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9read_into17h0661e58db5381d95E
    local.get 3
    i32.const 24
    i32.add
    i32.const 8
    call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
    local.set 4
    local.get 3
    i32.const 4
    i32.add
    call $_ZN11dharitri_sc5types7managed10codec_util30managed_buffer_nested_de_input39ManagedBufferNestedDecodeInput$LT$M$GT$19read_managed_buffer17h3579bcfa627f4bb9E
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h2f29efd1d75c3ad2E
    local.set 1
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
        i32.store offset=141736
        i32.const 0
        i32.const 0
        i32.store8 offset=141740
      end
      local.get 0
      local.get 1
      i32.store offset=12
      local.get 0
      local.get 2
      i32.store offset=8
      local.get 0
      local.get 4
      i64.store
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      return
    end
    i32.const 131286
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h2757f22b2cee5aa8E
    unreachable
  )
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17h70be6810730ab43fE (;134;) (type 8) (param i32) (result i32)
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
        call $_ZN11dharitri_sc7storage11storage_get24StorageGetInput$LT$A$GT$17to_managed_buffer17h056980fb99fa1f2eE
        local.tee 0
        call $mBufferGetLength
        local.tee 2
        i32.const 9
        i32.ge_u
        br_if 0 (;@2;)
        local.get 1
        local.get 1
        i32.const 8
        i32.add
        local.get 2
        call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h0a49361cc4178fd8E
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
      i32.const 131286
      i32.const 14
      call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h2757f22b2cee5aa8E
      unreachable
    end
    i32.const 131286
    i32.const 14
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h2757f22b2cee5aa8E
    unreachable
  )
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h0a49361cc4178fd8E (;135;) (type 1) (param i32 i32 i32)
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
    i32.const 8
    local.get 2
    call $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h2d9bf1abd3d6a2d7E
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
  (func $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17ha511e60dadca8982E (;136;) (type 1) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17h70be6810730ab43fE
    i32.const 1
    i32.add
    local.tee 4
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$8item_key17h19d1a5b21362108aE
    local.set 0
    local.get 3
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h0522b21586aec254E
    local.get 3
    local.get 3
    i32.load8_u offset=4
    i32.store8 offset=12
    local.get 3
    local.get 3
    i32.load
    i32.store offset=8
    local.get 2
    i32.load offset=8
    local.get 3
    i32.const 8
    i32.add
    call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hf7497467e2d276b1E
    local.get 2
    i64.load
    local.get 3
    i32.const 8
    i32.add
    call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h2aec014cc8300dd1E
    local.get 2
    i32.load offset=12
    local.get 3
    i32.const 8
    i32.add
    call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hdb7187b4e2167d49E
    local.get 0
    local.get 3
    i32.load offset=8
    local.get 3
    i32.load8_u offset=12
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h7a96f39af36a37a5E
    local.get 1
    local.get 4
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h6f46e1c0c2643ab3E
    local.get 3
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hf7497467e2d276b1E (;137;) (type 9) (param i32 i32)
    block ;; label = @1
      local.get 0
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8e1693eac1c467d6E
      return
    end
    i32.const 131357
    i32.const 4
    local.get 1
    call $_ZN17dharitri_sc_codec14impl_for_types10impl_slice96_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$$RF$$u5b$T$u5d$$GT$24dep_encode_or_handle_err17hf376b7bb060a4a1eE
  )
  (func $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h2aec014cc8300dd1E (;138;) (type 27) (param i64 i32)
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
    call $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h534bad8bceb4c30eE
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hdb7187b4e2167d49E (;139;) (type 9) (param i32 i32)
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h6b7b24214d30faedE
    local.get 1
    call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8e1693eac1c467d6E
  )
  (func $_ZN11dharitri_sc8log_util18serialize_log_data17he173596236a13a77E (;140;) (type 8) (param i32) (result i32)
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
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    i32.store offset=12
    local.get 1
    i32.const 8
    i32.add
    local.get 1
    i32.const 12
    i32.add
    call $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hc28106b788af584eE
    local.get 1
    i32.load offset=12
    local.set 0
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0
  )
  (func $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hc28106b788af584eE (;141;) (type 9) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 1
    i32.load
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
    local.set 3
    local.get 2
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h657ef4db8566c2a5E
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
      call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc216c9844f3eceb4E
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
  (func $_ZN11dharitri_sc8log_util23event_topic_accumulator17hb292e72e7540225dE (;142;) (type 3) (param i32 i32) (result i32)
    (local i32)
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    local.tee 2
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h04cf44036d2bc88eE
    call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE
    local.get 2
  )
  (func $_ZN120_$LT$dharitri_sc..storage..mappers..vec_mapper..Iter$LT$SA$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h588a1a701b2ed0e3E (;143;) (type 9) (param i32 i32)
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
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$13get_unchecked17h73744946469aadecE
      i64.const 1
      local.set 2
    end
    local.get 0
    local.get 2
    i64.store
  )
  (func $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h1560f6fa5a7ea02bE (;144;) (type 9) (param i32 i32)
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$19into_managed_buffer17heb07ada6ce741825E
    call $mBufferFinish
    drop
  )
  (func $_ZN138_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17h99b44e69738e5797E (;145;) (type 2) (result i32)
    i32.const 131386
    i32.const 26
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h04cf44036d2bc88eE
  )
  (func $_ZN188_$LT$dharitri_sc..types..managed..wrapped..managed_buffer_cached_builder..ManagedBufferCachedBuilder$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en_output..NestedEncodeOutput$GT$5write17h534bad8bceb4c30eE (;146;) (type 1) (param i32 i32 i32)
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
          i32.load offset=141736
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
          call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17he05e6e60f84f40a5E
          local.get 3
          i32.load offset=8
          local.get 3
          i32.load offset=12
          local.get 1
          local.get 2
          call $_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h52764188d348be02E
          i32.const 0
          local.get 0
          i32.store offset=141736
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
      call $_ZN11dharitri_sc5types7managed7wrapped29managed_buffer_cached_builder35ManagedBufferCachedBuilder$LT$M$GT$23flush_to_managed_buffer17h002fa1a5656f3a95E
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
  (func $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17he05e6e60f84f40a5E (;147;) (type 1) (param i32 i32 i32)
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
    i32.const 131736
    i32.const 10000
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1af899a91db679ecE
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
  (func $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hba769f16a627f4edE (;148;) (type 8) (param i32) (result i32)
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
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$10load_slice17h0c594be5c67767f6E
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
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
      local.set 3
      local.get 1
      i32.const 16
      i32.add
      global.set $__stack_pointer
      local.get 3
      return
    end
    i32.const 131559
    i32.const 8
    i32.const 131169
    i32.const 17
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4b916e753516bff5E
    unreachable
  )
  (func $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h84bd7cecce315ffdE (;149;) (type 9) (param i32 i32)
    (local i32 i64 i32 i32 i32 i32)
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
        call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hba769f16a627f4edE
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
        local.set 4
        local.get 1
        call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hba769f16a627f4edE
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
        local.get 2
        local.get 2
        i32.const 8
        i32.add
        local.get 6
        call $_ZN4core5array88_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u3b$$u20$N$u5d$$GT$9index_mut17h0a49361cc4178fd8E
        local.get 5
        i32.const 0
        local.get 2
        i32.load
        local.tee 6
        local.get 2
        i32.load offset=4
        local.tee 7
        call $_ZN24dharitri_sc_wasm_adapter3api13managed_types23managed_buffer_api_node157_$LT$impl$u20$dharitri_sc..api..managed_types..managed_buffer_api..ManagedBufferApiImpl$u20$for$u20$dharitri_sc_wasm_adapter..api..vm_api_node..VmApiImpl$GT$13mb_load_slice17hde7522e3fbee25d7E
        drop
        local.get 6
        local.get 7
        call $_ZN17dharitri_sc_codec8num_conv23universal_decode_number17h666288254044f467E
        local.set 3
        local.get 0
        i32.const 20
        i32.add
        local.get 1
        call $_ZN161_$LT$dharitri_sc..io..managed_result_arg_loader..ManagedResultArgLoader$LT$A$GT$$u20$as$u20$dharitri_sc_codec..multi..top_de_multi_input..TopDecodeMultiInput$GT$16next_value_input17hba769f16a627f4edE
        call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$20from_bytes_be_buffer17h2f29efd1d75c3ad2E
        i32.store
        local.get 0
        i32.const 16
        i32.add
        local.get 4
        i32.store
        local.get 0
        local.get 3
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
    i32.const 131559
    i32.const 8
    i32.const 131286
    i32.const 14
    call $_ZN11dharitri_sc2io12signal_error19signal_arg_de_error17h4b916e753516bff5E
    unreachable
  )
  (func $_ZN194_$LT$dharitri_sc..types..managed..codec_util..managed_buffer_nested_de_input..ManagedBufferNestedDecodeInput$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_de_input..NestedDecodeInput$GT$9peek_into28_$u7b$$u7b$closure$u7d$$u7d$17h15c461d5f02cf77aE (;150;) (type 13)
    i32.const 131300
    i32.const 15
    call $_ZN143_$LT$dharitri_sc..storage..storage_get..StorageGetErrorHandler$LT$M$GT$$u20$as$u20$dharitri_sc_codec..codec_err_handler..DecodeErrorHandler$GT$12handle_error17h2757f22b2cee5aa8E
    unreachable
  )
  (func $_ZN229_$LT$dharitri_sc..types..interaction..contract_call_with_rewa_or_single_dcdt..ContractCallWithRewaOrSingleDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$16transfer_execute17hd3738cfe5267f07bE (;151;) (type 7) (param i32)
    (local i32 i32 i32 i32 i64 i32 i64)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 0
    i32.const 20
    i32.add
    i32.load
    local.set 2
    local.get 0
    i32.load offset=16
    local.set 3
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=8
        i32.const 2147483646
        i32.eq
        br_if 0 (;@2;)
        local.get 0
        i32.const 32
        i32.add
        i32.load
        local.set 4
        local.get 0
        i32.const 24
        i32.add
        i64.load
        local.set 5
        local.get 1
        local.get 0
        call $_ZN11dharitri_sc5types7managed7wrapped26rewa_or_dcdt_token_payment31RewaOrDcdtTokenPayment$LT$M$GT$11unwrap_dcdt17hde54af1680bc7b0fE
        local.get 5
        call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17hdadbcdc698676aedE
        local.set 5
        local.get 1
        i32.load offset=12
        local.set 0
        local.get 1
        i32.load offset=8
        local.set 6
        block ;; label = @3
          local.get 1
          i64.load
          local.tee 7
          i64.const 0
          i64.ne
          br_if 0 (;@3;)
          local.get 4
          local.get 6
          local.get 0
          local.get 5
          local.get 3
          local.get 2
          call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$21transfer_dcdt_execute17h5dc0220355b2dcbeE
          br 2 (;@1;)
        end
        local.get 4
        local.get 6
        local.get 7
        local.get 0
        local.get 5
        local.get 3
        local.get 2
        call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$25transfer_dcdt_nft_execute17h4a8e46e768f2396fE
        br 1 (;@1;)
      end
      local.get 0
      i32.const 32
      i32.add
      i32.load
      local.get 0
      i32.load offset=12
      local.get 0
      i32.const 24
      i32.add
      i64.load
      call $_ZN11dharitri_sc5types11interaction18contract_call_exec125_$LT$impl$u20$dharitri_sc..types..interaction..contract_call_no_payment..ContractCallNoPayment$LT$SA$C$OriginalResult$GT$$GT$31resolve_gas_limit_with_leftover17hdadbcdc698676aedE
      local.get 3
      local.get 2
      call $managedTransferValueExecute
      drop
    end
    local.get 1
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h996d7077d3326327E (;152;) (type 9) (param i32 i32)
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
  (func $_ZN4core5slice5index77_$LT$impl$u20$core..ops..index..IndexMut$LT$I$GT$$u20$for$u20$$u5b$T$u5d$$GT$9index_mut17h2d9bf1abd3d6a2d7E (;153;) (type 18) (param i32 i32 i32 i32)
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
    call $_ZN106_$LT$core..ops..range..Range$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h1af899a91db679ecE
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
  (func $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h964a35f6639cf3b8E (;154;) (type 7) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 16
    i32.add
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h0522b21586aec254E
    local.get 1
    local.get 1
    i32.load8_u offset=20
    i32.store8 offset=32
    local.get 1
    local.get 1
    i32.load offset=16
    i32.store offset=28
    local.get 1
    local.get 0
    i32.load
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3len17h657ef4db8566c2a5E
    i32.store offset=44
    local.get 1
    i32.const 0
    i32.store offset=40
    local.get 1
    local.get 0
    i32.store offset=36
    block ;; label = @1
      loop ;; label = @2
        local.get 1
        i32.const 8
        i32.add
        local.get 1
        i32.const 36
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc216c9844f3eceb4E
        local.get 1
        i32.load offset=8
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        i32.load offset=12
        local.get 1
        i32.const 28
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8e1693eac1c467d6E
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.load offset=28
    local.get 1
    i32.load8_u offset=32
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h1560f6fa5a7ea02bE
    local.get 1
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$13callback_args17hf2e7f78b9391bafdE (;155;) (type 7) (param i32)
    (local i32 i32)
    i32.const 131579
    i32.const 13
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h04cf44036d2bc88eE
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
    local.tee 2
    i32.const 131539
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
  (func $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17hff66e6e57ab93858E (;156;) (type 7) (param i32)
    (local i32 i32)
    i32.const 131592
    i32.const 17
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$14new_from_bytes17h04cf44036d2bc88eE
    local.tee 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
    local.tee 2
    i32.const 131539
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
  (func $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$30execute_on_dest_context_result17h120372a7a9bdd751E (;157;) (type 7) (param i32)
    i32.const 131609
    i32.const 30
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17hb292e72e7540225dE
    local.get 0
    call $_ZN11dharitri_sc8log_util18serialize_log_data17he173596236a13a77E
    call $managedWriteLog
  )
  (func $rust_begin_unwind (;158;) (type 13)
    call $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE
    unreachable
  )
  (func $_ZN24dharitri_sc_wasm_adapter5panic9panic_fmt17h6a94b9865fae414fE (;159;) (type 13)
    i32.const 131716
    i32.const 14
    call $signalError
    unreachable
  )
  (func $init (;160;) (type 13)
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7ebf0c039c6bd686E
  )
  (func $callback_args (;161;) (type 13)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7ebf0c039c6bd686E
    local.get 0
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$13callback_args17hf2e7f78b9391bafdE
    local.get 0
    i32.load
    local.set 1
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17h70be6810730ab43fE
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
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$13get_unchecked17h59fa527af0b93fa2E
        i32.store offset=12
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        local.get 0
        i32.const 12
        i32.add
        call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h964a35f6639cf3b8E
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $callback_payments (;162;) (type 13)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7ebf0c039c6bd686E
    local.get 0
    i32.const 16
    i32.add
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17hff66e6e57ab93858E
    local.get 0
    local.get 0
    i32.load offset=20
    local.tee 1
    i32.store offset=32
    local.get 0
    local.get 0
    i32.load offset=16
    i32.store offset=28
    local.get 0
    local.get 1
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17h70be6810730ab43fE
    i32.store offset=44
    local.get 0
    i32.const 1
    i32.store offset=40
    local.get 0
    local.get 0
    i32.const 28
    i32.add
    i32.store offset=36
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        i32.const 48
        i32.add
        local.get 0
        i32.const 36
        i32.add
        call $_ZN120_$LT$dharitri_sc..storage..mappers..vec_mapper..Iter$LT$SA$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h588a1a701b2ed0e3E
        local.get 0
        i64.load offset=48
        i64.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=68
        local.set 1
        local.get 0
        i32.load offset=64
        local.set 2
        local.get 0
        i32.const 8
        i32.add
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h0522b21586aec254E
        local.get 0
        local.get 0
        i32.load8_u offset=12
        i32.store8 offset=76
        local.get 0
        local.get 0
        i32.load offset=8
        i32.store offset=72
        local.get 2
        local.get 0
        i32.const 72
        i32.add
        call $_ZN174_$LT$dharitri_sc..types..managed..wrapped..rewa_or_dcdt_token_identifier..RewaOrDcdtTokenIdentifier$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hf7497467e2d276b1E
        local.get 0
        i64.load offset=56
        local.get 0
        i32.const 72
        i32.add
        call $_ZN17dharitri_sc_codec14impl_for_types17impl_num_unsigned84_$LT$impl$u20$dharitri_sc_codec..single..nested_en..NestedEncode$u20$for$u20$u64$GT$24dep_encode_or_handle_err17h2aec014cc8300dd1E
        local.get 1
        local.get 0
        i32.const 72
        i32.add
        call $_ZN133_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17hdb7187b4e2167d49E
        local.get 0
        i32.load offset=72
        local.get 0
        i32.load8_u offset=76
        call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h1560f6fa5a7ea02bE
        br 0 (;@2;)
      end
    end
    local.get 0
    i32.const 80
    i32.add
    global.set $__stack_pointer
  )
  (func $callback_payments_triples (;163;) (type 13)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7ebf0c039c6bd686E
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17hff66e6e57ab93858E
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
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17h70be6810730ab43fE
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
        call $_ZN120_$LT$dharitri_sc..storage..mappers..vec_mapper..Iter$LT$SA$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h588a1a701b2ed0e3E
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
        call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
        local.set 2
        block ;; label = @3
          block ;; label = @4
            local.get 3
            i32.const 2147483646
            i32.eq
            br_if 0 (;@4;)
            local.get 3
            call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
            local.set 2
            br 1 (;@3;)
          end
          local.get 2
          i32.const 131357
          i32.const 4
          call $mBufferSetBytes
          drop
        end
        local.get 1
        local.get 2
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE
        local.get 1
        local.get 0
        i64.load offset=48
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17h9c9e81be4fc432bdE
        local.get 1
        local.get 4
        call $_ZN235_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$GT$$u20$as$u20$dharitri_sc_codec..multi..top_en_multi_output..TopEncodeMultiOutput$GT$17push_single_value17hc060a72d3c1344f3E
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
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc216c9844f3eceb4E
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
  (func $clear_callback_info (;164;) (type 13)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7ebf0c039c6bd686E
    local.get 0
    i32.const 24
    i32.add
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$13callback_args17hf2e7f78b9391bafdE
    local.get 0
    i32.load offset=24
    local.set 1
    local.get 0
    i32.load offset=28
    local.tee 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17h70be6810730ab43fE
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
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h996d7077d3326327E
        local.get 0
        i32.load offset=16
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i32.load offset=20
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$8item_key17h19d1a5b21362108aE
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h53f162c0faea06d0E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 0
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h6f46e1c0c2643ab3E
    local.get 0
    i32.const 8
    i32.add
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17hff66e6e57ab93858E
    local.get 0
    i32.load offset=8
    local.set 1
    local.get 0
    i32.load offset=12
    local.tee 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17h70be6810730ab43fE
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
        call $_ZN4core4iter5range110_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..RangeInclusive$LT$A$GT$$GT$4next17h996d7077d3326327E
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 1
        local.get 0
        i32.load offset=4
        call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$8item_key17h19d1a5b21362108aE
        call $_ZN11dharitri_sc7storage11storage_set13storage_clear17h53f162c0faea06d0E
        br 0 (;@2;)
      end
    end
    local.get 2
    i32.const 0
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h6f46e1c0c2643ab3E
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $callback_args_at_index (;165;) (type 13)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7ebf0c039c6bd686E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h5ff2d88fc2cfb562E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$13callback_args17hf2e7f78b9391bafdE
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.set 2
      local.get 0
      i32.load offset=12
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17h70be6810730ab43fE
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$13get_unchecked17h59fa527af0b93fa2E
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
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc216c9844f3eceb4E
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
    i32.const 131697
    i32.const 18
    call $signalError
    unreachable
  )
  (func $callback_payment_at_index (;166;) (type 13)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7ebf0c039c6bd686E
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h5ff2d88fc2cfb562E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17hff66e6e57ab93858E
    block ;; label = @1
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=8
      local.set 2
      local.get 0
      i32.load offset=12
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17h70be6810730ab43fE
      local.get 1
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 16
      i32.add
      local.get 2
      local.get 1
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$13get_unchecked17h73744946469aadecE
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
        i32.const 131357
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
    i32.const 131697
    i32.const 18
    call $signalError
    unreachable
  )
  (func $forward_payment (;167;) (type 13)
    (local i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7ebf0c039c6bd686E
    i32.const 0
    i32.const 131370
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hb2e6ee8984586800E
    local.get 0
    i32.load offset=12
    local.set 2
    block ;; label = @1
      block ;; label = @2
        local.get 0
        i32.load offset=8
        local.tee 3
        i32.const 2147483646
        i32.eq
        br_if 0 (;@2;)
        local.get 1
        local.get 3
        local.get 2
        call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$26direct_dcdt_with_gas_limit17hc101320e6a162421E
        br 1 (;@1;)
      end
      local.get 1
      local.get 2
      i64.const 0
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
      call $managedTransferValueExecute
      drop
    end
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_direct_dcdt_via_transf_exec (;168;) (type 13)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7ebf0c039c6bd686E
    i32.const 0
    i32.const 131370
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$20single_fungible_dcdt17h53c5c557ee733f5bE
    local.get 1
    local.get 0
    i32.load offset=8
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc13contract_base8wrappers12send_wrapper20SendWrapper$LT$A$GT$26direct_dcdt_with_gas_limit17hc101320e6a162421E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_direct_dcdt_multi (;169;) (type 13)
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_eq17h7ebf0c039c6bd686E
    i32.const 0
    i32.const 131370
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h2c418173388f8cfeE
    i64.const 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    call $managedMultiTransferDCDTNFTExecute
    drop
  )
  (func $forward_async_call (;170;) (type 13)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    i32.const 131370
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h760afa2d42d69f93E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    i32.const 131366
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 3
    local.get 0
    i32.load offset=40
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hb2e6ee8984586800E
    local.get 0
    i64.load
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    drop
    local.get 0
    i32.const 72
    i32.add
    local.get 1
    i32.store
    local.get 0
    i32.const 64
    i32.add
    i64.const -1
    i64.store
    local.get 0
    i32.const 60
    i32.add
    local.get 3
    i32.store
    local.get 0
    local.get 2
    i32.store offset=56
    local.get 0
    local.get 4
    i64.store offset=48
    local.get 0
    i64.const 0
    i64.store offset=40
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h6cbe81d017e3e0d0E
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17h17a86897c2d809eaE
    unreachable
  )
  (func $forward_async_call_half_payment (;171;) (type 13)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    i32.const 131370
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h760afa2d42d69f93E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=40
    local.get 0
    i32.const 40
    i32.add
    i32.const 131366
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 3
    local.get 0
    i32.load offset=40
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hb2e6ee8984586800E
    local.get 0
    i32.load
    local.set 4
    local.get 0
    i32.load offset=4
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators125_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3div17hf4165b2c48f9b7eaE
    local.set 5
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    drop
    local.get 0
    i32.const 72
    i32.add
    local.get 1
    i32.store
    local.get 0
    i32.const 64
    i32.add
    i64.const -1
    i64.store
    local.get 0
    i32.const 60
    i32.add
    local.get 3
    i32.store
    local.get 0
    local.get 2
    i32.store offset=56
    local.get 0
    local.get 5
    i32.store offset=52
    local.get 0
    local.get 4
    i32.store offset=48
    local.get 0
    i64.const 0
    i64.store offset=40
    local.get 0
    i32.const 12
    i32.add
    local.get 0
    i32.const 40
    i32.add
    call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h6cbe81d017e3e0d0E
    local.get 0
    i32.const 12
    i32.add
    call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$13call_and_exit17h17a86897c2d809eaE
    unreachable
  )
  (func $forward_transf_exec_rewa (;172;) (type 13)
    (local i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h9de7707fd5e38953E
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    i32.const 131370
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h760afa2d42d69f93E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 131366
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 3
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h71dab8bb5c32f371E
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0fd93bb9f6467013E
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    drop
    call $getGasLeft
    local.set 5
    local.get 0
    local.get 1
    i32.store offset=40
    local.get 0
    local.get 3
    i32.store offset=28
    local.get 0
    local.get 2
    i32.store offset=24
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
    local.get 5
    i64.const 1
    i64.shr_u
    i64.store offset=32
    local.get 0
    i32.const 8
    i32.add
    call $_ZN229_$LT$dharitri_sc..types..interaction..contract_call_with_rewa_or_single_dcdt..ContractCallWithRewaOrSingleDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$16transfer_execute17hd3738cfe5267f07bE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_dcdt (;173;) (type 13)
    (local i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    i32.const 131370
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h760afa2d42d69f93E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 131366
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 3
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$20single_fungible_dcdt17h53c5c557ee733f5bE
    local.get 0
    i64.load
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    drop
    call $getGasLeft
    local.set 5
    local.get 0
    local.get 1
    i32.store offset=40
    local.get 0
    local.get 3
    i32.store offset=28
    local.get 0
    local.get 2
    i32.store offset=24
    local.get 0
    local.get 4
    i64.store offset=16
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 5
    i64.const 1
    i64.shr_u
    i64.store offset=32
    local.get 0
    i32.const 8
    i32.add
    call $_ZN229_$LT$dharitri_sc..types..interaction..contract_call_with_rewa_or_single_dcdt..ContractCallWithRewaOrSingleDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$16transfer_execute17hd3738cfe5267f07bE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec (;174;) (type 13)
    (local i32 i32 i32 i32 i64 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    i32.const 131370
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h760afa2d42d69f93E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=8
    local.get 0
    i32.const 8
    i32.add
    i32.const 131366
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 3
    local.get 0
    i32.load offset=8
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hb2e6ee8984586800E
    local.get 0
    i64.load
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    drop
    call $getGasLeft
    local.set 5
    local.get 0
    local.get 1
    i32.store offset=40
    local.get 0
    local.get 3
    i32.store offset=28
    local.get 0
    local.get 2
    i32.store offset=24
    local.get 0
    local.get 4
    i64.store offset=16
    local.get 0
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 5
    i64.const 1
    i64.shr_u
    i64.store offset=32
    local.get 0
    i32.const 8
    i32.add
    call $_ZN229_$LT$dharitri_sc..types..interaction..contract_call_with_rewa_or_single_dcdt..ContractCallWithRewaOrSingleDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$16transfer_execute17hd3738cfe5267f07bE
    local.get 0
    i32.const 48
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_transf_exec_twice (;175;) (type 13)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    i32.const 131370
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h760afa2d42d69f93E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 131366
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 3
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    local.get 0
    local.get 3
    i32.store offset=20
    local.get 0
    i32.const 8
    i32.add
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$28rewa_or_single_fungible_dcdt17hb2e6ee8984586800E
    i32.const 2147483646
    local.set 4
    local.get 0
    i32.load offset=8
    local.set 5
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc5types7managed5basic18big_uint_operators125_$LT$impl$u20$core..ops..arith..Div$LT$u32$GT$$u20$for$u20$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$GT$3div17hf4165b2c48f9b7eaE
    local.set 6
    local.get 1
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
    local.set 7
    block ;; label = @1
      local.get 5
      i32.const 2147483646
      i32.eq
      br_if 0 (;@1;)
      local.get 5
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
      local.set 4
    end
    local.get 6
    call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0fd93bb9f6467013E
    local.set 8
    local.get 2
    call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
    local.set 9
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    local.set 10
    local.get 0
    local.get 3
    call $mBufferGetLength
    i32.store offset=32
    local.get 0
    i32.const 0
    i32.store offset=28
    local.get 0
    local.get 0
    i32.const 20
    i32.add
    i32.store offset=24
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 24
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc216c9844f3eceb4E
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 10
        local.get 0
        i32.load offset=4
        call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
        call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE
        br 0 (;@2;)
      end
    end
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    drop
    call $getGasLeft
    local.set 11
    local.get 0
    local.get 7
    i32.store offset=56
    local.get 0
    local.get 10
    i32.store offset=44
    local.get 0
    local.get 9
    i32.store offset=40
    local.get 0
    local.get 8
    i32.store offset=36
    local.get 0
    local.get 4
    i32.store offset=32
    local.get 0
    i64.const 0
    i64.store offset=24
    local.get 0
    local.get 11
    i64.const 1
    i64.shr_u
    i64.store offset=48
    local.get 0
    i32.const 24
    i32.add
    call $_ZN229_$LT$dharitri_sc..types..interaction..contract_call_with_rewa_or_single_dcdt..ContractCallWithRewaOrSingleDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$16transfer_execute17hd3738cfe5267f07bE
    local.get 0
    i32.load offset=20
    local.set 10
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    drop
    call $getGasLeft
    local.set 11
    local.get 0
    local.get 1
    i32.store offset=56
    local.get 0
    local.get 10
    i32.store offset=44
    local.get 0
    local.get 2
    i32.store offset=40
    local.get 0
    local.get 6
    i32.store offset=36
    local.get 0
    local.get 5
    i32.store offset=32
    local.get 0
    i64.const 0
    i64.store offset=24
    local.get 0
    local.get 11
    i64.const 1
    i64.shr_u
    i64.store offset=48
    local.get 0
    i32.const 24
    i32.add
    call $_ZN229_$LT$dharitri_sc..types..interaction..contract_call_with_rewa_or_single_dcdt..ContractCallWithRewaOrSingleDcdt$LT$SA$C$OriginalResult$GT$$u20$as$u20$dharitri_sc..types..interaction..contract_call_trait..ContractCall$LT$SA$GT$$GT$16transfer_execute17hd3738cfe5267f07bE
    local.get 0
    i32.const 64
    i32.add
    global.set $__stack_pointer
  )
  (func $forward_async_retrieve_multi_transfer_funds (;176;) (type 13)
    (local i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    i32.const 131370
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=24
    local.get 0
    i32.const 24
    i32.add
    i32.const 131372
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 2
    local.get 0
    i32.load offset=24
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    local.set 3
    local.get 0
    i32.const 8
    i32.add
    local.get 2
    call $_ZN11dharitri_sc5types7managed11multi_value24multi_value_encoded_iter165_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$GT$9into_iter17h1875ce835ce8cbadE
    loop ;; label = @1
      local.get 0
      i32.const 24
      i32.add
      local.get 0
      i32.const 8
      i32.add
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h84bd7cecce315ffdE
      block ;; label = @2
        local.get 0
        i64.load offset=24
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 1
        call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h58601a8c416896a9E
        call $_ZN138_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..convert..From$LT$$RF$$u5b$u8$u5d$$GT$$GT$4from17h99b44e69738e5797E
        local.get 3
        call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$14async_call_raw17h3cff81cef5a33db7E
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
      local.set 5
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
      drop
      local.get 3
      local.get 5
      call $_ZN113_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h39c32fad6cfbea81E
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
      local.tee 5
      local.get 4
      call $_ZN17dharitri_sc_codec6single13top_en_output15TopEncodeOutput7set_u6417h4d2176eb4beb2303E
      local.get 3
      local.get 5
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE
      call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
      drop
      local.get 3
      local.get 2
      call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$18to_bytes_be_buffer17h6b7b24214d30faedE
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17h8d50fa9bb1d4104aE
      br 0 (;@1;)
    end
  )
  (func $forwarder_async_send_and_retrieve_multi_transfer_funds (;177;) (type 13)
    (local i32 i32 i32 i32 i64)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    i32.const 131370
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    local.get 0
    i32.const 1
    i32.store offset=48
    local.get 0
    i32.const 48
    i32.add
    i32.const 131372
    i32.const 14
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 2
    local.get 0
    i32.load offset=48
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    local.set 3
    local.get 0
    local.get 2
    call $_ZN11dharitri_sc5types7managed11multi_value24multi_value_encoded_iter165_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$dharitri_sc..types..managed..multi_value..multi_value_encoded..MultiValueEncoded$LT$M$C$T$GT$$GT$9into_iter17h1875ce835ce8cbadE
    loop ;; label = @1
      local.get 0
      i32.const 48
      i32.add
      local.get 0
      call $_ZN165_$LT$dharitri_sc..types..managed..multi_value..multi_value_encoded_iter..MultiValueEncodedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h84bd7cecce315ffdE
      block ;; label = @2
        local.get 0
        i64.load offset=48
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
        local.get 0
        i32.const 48
        i32.add
        local.get 1
        local.get 3
        call $_ZN11dharitri_sc5types11interaction29contract_call_with_multi_dcdt52ContractCallWithMultiDcdt$LT$SA$C$OriginalResult$GT$3new17h5b818ccdcf938616E
        local.get 0
        i32.const 16
        i32.add
        local.get 0
        i32.const 48
        i32.add
        call $_ZN11dharitri_sc5types11interaction19contract_call_trait12ContractCall10async_call17h1cbd3caf6dc8d83cE
        local.get 0
        i32.const 16
        i32.add
        call $_ZN11dharitri_sc5types11interaction10async_call19AsyncCall$LT$SA$GT$29call_and_exit_ignore_callback17hf4e8c5f1f8db0048E
        unreachable
      end
      local.get 0
      i64.load offset=64
      local.set 4
      local.get 0
      local.get 0
      i64.load offset=56
      i64.store offset=16
      local.get 0
      local.get 4
      i64.store offset=24
      local.get 3
      local.get 0
      i32.const 16
      i32.add
      call $_ZN11dharitri_sc5types7managed7wrapped11managed_vec23ManagedVec$LT$M$C$T$GT$4push17hd284f96e7ba05c0fE
      br 0 (;@1;)
    end
  )
  (func $call_execute_on_dest_context (;178;) (type 13)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h9de7707fd5e38953E
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    i32.const 131370
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h760afa2d42d69f93E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131366
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h71dab8bb5c32f371E
    local.set 4
    call $getGasLeft
    i64.const 1
    i64.shr_u
    local.get 1
    local.get 4
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17he71c2465f5805da8E
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$30execute_on_dest_context_result17h120372a7a9bdd751E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $call_execute_on_dest_context_twice (;179;) (type 13)
    (local i32 i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h9de7707fd5e38953E
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    i32.const 131370
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h760afa2d42d69f93E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131366
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h71dab8bb5c32f371E
    local.set 4
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$9make_temp17hf8830d48320b8dfcE
    local.set 6
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 7
    local.get 4
    local.get 6
    call $bigIntTDiv
    local.get 5
    i64.const 3
    i64.div_u
    local.tee 5
    local.get 1
    local.get 7
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17he71c2465f5805da8E
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$30execute_on_dest_context_result17h120372a7a9bdd751E
    local.get 5
    local.get 1
    local.get 7
    local.get 2
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$27execute_on_dest_context_raw17he71c2465f5805da8E
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$30execute_on_dest_context_result17h120372a7a9bdd751E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $call_execute_on_same_context (;180;) (type 13)
    (local i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc2io15call_value_init12payable_rewa17h9de7707fd5e38953E
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    i32.const 131370
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h760afa2d42d69f93E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131366
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h71dab8bb5c32f371E
    local.set 4
    call $getGasLeft
    i64.const 1
    i64.shr_u
    local.get 1
    local.get 4
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 5
    call $managedExecuteOnSameContext
    drop
    i32.const 131639
    i32.const 30
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17hb292e72e7540225dE
    local.get 5
    call $_ZN11dharitri_sc8log_util18serialize_log_data17he173596236a13a77E
    call $managedWriteLog
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $call_execute_on_dest_context_readonly (;181;) (type 13)
    (local i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    i32.const 131370
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h760afa2d42d69f93E
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131366
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    call $getGasLeft
    i64.const 1
    i64.shr_u
    local.get 1
    local.get 2
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 4
    call $managedExecuteReadOnly
    drop
    local.get 4
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$30execute_on_dest_context_result17h120372a7a9bdd751E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $deploy_contract (;182;) (type 13)
    (local i32 i32 i32 i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h760afa2d42d69f93E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h065e7c835d51b01cE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131366
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    call $getGasLeft
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h58601a8c416896a9E
    local.set 5
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17heb9b8e19a53f8944E
    local.get 4
    local.get 5
    local.get 1
    i32.const -25
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 6
    call $managedCreateContract
    drop
    local.get 0
    local.get 6
    i32.store offset=8
    local.get 0
    local.get 2
    i32.store offset=4
    local.get 2
    call $mBufferFinish
    drop
    local.get 0
    i32.const 4
    i32.add
    i32.const 4
    i32.add
    call $_ZN76_$LT$T$u20$as$u20$dharitri_sc_codec..multi..top_en_multi..TopEncodeMulti$GT$26multi_encode_or_handle_err17h964a35f6639cf3b8E
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $deploy_from_source (;183;) (type 13)
    (local i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    i32.const 131484
    i32.const 23
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h065e7c835d51b01cE
    local.set 2
    local.get 0
    i32.const 2
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131446
    i32.const 9
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 3
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    call $getGasLeft
    local.set 4
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h58601a8c416896a9E
    local.set 5
    local.get 2
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17heb9b8e19a53f8944E
    local.get 4
    local.get 5
    local.get 1
    i32.const -25
    local.get 3
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    local.tee 2
    call $_ZN24dharitri_sc_wasm_adapter3api13managed_types19static_var_api_node11next_handle17h9a811123e05abd40E
    call $managedDeployFromSourceContract
    drop
    local.get 2
    call $mBufferFinish
    drop
    local.get 0
    i32.const 16
    i32.add
    global.set $__stack_pointer
  )
  (func $call_upgrade (;184;) (type 13)
    (local i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    i32.const 131468
    i32.const 16
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    i32.const 1
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h760afa2d42d69f93E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h065e7c835d51b01cE
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131446
    i32.const 9
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h58601a8c416896a9E
    local.set 6
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17heb9b8e19a53f8944E
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
  (func $call_upgrade_from_source (;185;) (type 13)
    (local i32 i32 i32 i32 i32 i64 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $checkNoPayment
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 3
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    i32.const 0
    i32.const 131507
    i32.const 10
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 1
    i32.const 1
    i32.const 131484
    i32.const 23
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h1f319f9e409ab675E
    local.set 2
    i32.const 2
    call $_ZN11dharitri_sc2io16arg_nested_tuple15load_single_arg17h065e7c835d51b01cE
    local.set 3
    local.get 0
    i32.const 3
    i32.store offset=12
    local.get 0
    i32.const 12
    i32.add
    i32.const 131446
    i32.const 9
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 4
    local.get 0
    i32.load offset=12
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    call $getGasLeft
    local.set 5
    call $_ZN11dharitri_sc5types7managed5basic8big_uint16BigUint$LT$M$GT$4zero17h58601a8c416896a9E
    local.set 6
    local.get 3
    call $_ZN11dharitri_sc13contract_base8wrappers16send_raw_wrapper23SendRawWrapper$LT$A$GT$24load_code_metadata_to_mb17heb9b8e19a53f8944E
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
  (func $callBack (;186;) (type 13)
    (local i32 i32 i32 i64 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    drop
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    drop
    call $_ZN11dharitri_sc2io16arg_nested_tuple26init_arguments_static_data17he058a0c4b284846dE
    i32.const 0
    call $_ZN11dharitri_sc2io16arg_nested_tuple22check_num_arguments_ge17hdcd6eacc648dd740E
    local.get 0
    i32.const 0
    i32.store offset=56
    local.get 0
    i32.const 56
    i32.add
    i32.const 131366
    i32.const 4
    call $_ZN11dharitri_sc2io16arg_nested_tuple14load_multi_arg17h6b836a461ef84d51E
    local.set 1
    local.get 0
    i32.load offset=56
    call $_ZN11dharitri_sc2io16arg_nested_tuple18check_no_more_args17h4a570f1c0750beceE
    local.get 0
    call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$18all_dcdt_transfers17h2c418173388f8cfeE
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
          call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbd2f5b4a0b177617E
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
          call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17hff66e6e57ab93858E
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
          call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17ha511e60dadca8982E
          br 0 (;@3;)
        end
      end
      call $_ZN11dharitri_sc13contract_base8wrappers18call_value_wrapper25CallValueWrapper$LT$A$GT$10rewa_value17h71dab8bb5c32f371E
      local.tee 2
      call $bigIntSign
      i32.const 0
      i32.le_s
      br_if 0 (;@1;)
      local.get 0
      i32.const 24
      i32.add
      call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$17callback_payments17hff66e6e57ab93858E
      local.get 0
      i32.load offset=28
      local.set 5
      local.get 0
      i32.load offset=24
      local.set 6
      local.get 0
      local.get 2
      call $_ZN101_$LT$dharitri_sc..types..managed..basic..big_uint..BigUint$LT$M$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0fd93bb9f6467013E
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
      call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$4push17ha511e60dadca8982E
    end
    local.get 0
    local.get 1
    i32.store offset=44
    i32.const 131567
    i32.const 12
    call $_ZN11dharitri_sc8log_util23event_topic_accumulator17hb292e72e7540225dE
    local.set 2
    local.get 0
    call $_ZN11dharitri_sc5types7managed5basic14managed_buffer22ManagedBuffer$LT$M$GT$3new17h249f2c597a5d62ecE
    i32.store offset=56
    local.get 0
    i32.const 44
    i32.add
    local.get 0
    i32.const 56
    i32.add
    call $_ZN139_$LT$dharitri_sc..types..managed..wrapped..managed_vec..ManagedVec$LT$M$C$T$GT$$u20$as$u20$dharitri_sc_codec..single..top_en..TopEncode$GT$24top_encode_or_handle_err17hc28106b788af584eE
    local.get 2
    local.get 0
    i32.load offset=56
    call $managedWriteLog
    local.get 0
    i32.const 16
    i32.add
    call $_ZN77_$LT$C$u20$as$u20$forwarder_raw..forwarder_raw_common..ForwarderRawCommon$GT$13callback_args17hf2e7f78b9391bafdE
    local.get 0
    i32.load offset=16
    local.get 0
    i32.load offset=20
    local.tee 2
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$3len17h70be6810730ab43fE
    i32.const 1
    i32.add
    local.tee 5
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$8item_key17h19d1a5b21362108aE
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call $_ZN129_$LT$dharitri_sc..io..finish..ApiOutputAdapter$LT$FA$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$19start_nested_encode17h0522b21586aec254E
    local.get 0
    local.get 0
    i32.load8_u offset=12
    i32.store8 offset=84
    local.get 0
    local.get 0
    i32.load offset=8
    i32.store offset=80
    local.get 0
    local.get 0
    i32.load offset=44
    call $mBufferGetLength
    i32.store offset=64
    local.get 0
    i32.const 0
    i32.store offset=60
    local.get 0
    local.get 0
    i32.const 44
    i32.add
    i32.store offset=56
    block ;; label = @1
      loop ;; label = @2
        local.get 0
        local.get 0
        i32.const 56
        i32.add
        call $_ZN157_$LT$dharitri_sc..types..managed..wrapped..managed_vec_owned_iter..ManagedVecOwnedIterator$LT$M$C$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc216c9844f3eceb4E
        local.get 0
        i32.load
        i32.eqz
        br_if 1 (;@1;)
        local.get 0
        i32.load offset=4
        local.get 0
        i32.const 80
        i32.add
        call $_ZN145_$LT$dharitri_sc..types..managed..basic..managed_buffer..ManagedBuffer$LT$M$GT$$u20$as$u20$dharitri_sc_codec..single..nested_en..NestedEncode$GT$24dep_encode_or_handle_err17h8e1693eac1c467d6E
        br 0 (;@2;)
      end
    end
    local.get 1
    local.get 0
    i32.load offset=80
    local.get 0
    i32.load8_u offset=84
    call $_ZN138_$LT$dharitri_sc..storage..storage_set..StorageSetOutput$LT$A$GT$$u20$as$u20$dharitri_sc_codec..single..top_en_output..TopEncodeOutput$GT$22finalize_nested_encode17h7a96f39af36a37a5E
    local.get 2
    local.get 5
    call $_ZN11dharitri_sc7storage7mappers10vec_mapper23VecMapper$LT$SA$C$T$GT$10save_count17h6f46e1c0c2643ab3E
    local.get 0
    i32.const 96
    i32.add
    global.set $__stack_pointer
  )
  (func $memcpy (;187;) (type 4) (param i32 i32 i32) (result i32)
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
  (func $_ZN4core9panicking9panic_fmt17h01ca80e3af0f2df9E (;188;) (type 13)
    call $rust_begin_unwind
    unreachable
  )
  (table (;0;) 1 1 funcref)
  (memory (;0;) 3)
  (global $__stack_pointer (;0;) (mut i32) i32.const 131072)
  (global (;1;) i32 i32.const 141753)
  (global (;2;) i32 i32.const 141760)
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
  (data $.rodata (;0;) (i32.const 131072) "incorrect number of DCDT transfersargument decode error (): function does not accept DCDT paymenttoo few argumentstoo many argumentswrong number of argumentsMultiDCDTNFTTransferDCDTNFTTransferDCDTTransferCB_CLOSUREinput too longinput too shortManagedVec index out of rangeDCDT expectedREWA.itemargstotoken_paymentsretrieve_multi_funds_asyncburn_and_create_retrive_asyncindexargumentscode_metadatachild_sc_addresssource_contract_addresssc_addressstorage decode error: .lenbad array lengthvar argscallback_rawcallback_argscallback_paymentsexecute_on_dest_context_resultexecute_on_same_context_resultfungible DCDT token expectedindex out of range\00panic occurred")
  (data $.data (;1;) (i32.const 131732) "\9c\ff\ff\ff")
  (@producers
    (language "Rust" "")
    (processed-by "rustc" "1.76.0-nightly (d86d65bbc 2023-12-10)")
  )
)