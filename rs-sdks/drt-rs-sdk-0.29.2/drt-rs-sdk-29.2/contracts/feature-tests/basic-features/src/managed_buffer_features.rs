numbat_wasm::imports!();

#[numbat_wasm::module]
pub trait ManagedBufferFeatures {
    #[endpoint]
    fn mbuffer_new(&self) -> ManagedBuffer {
        ManagedBuffer::new()
    }

    #[endpoint]
    fn mbuffer_from_slice(&self, slice: &[u8]) -> ManagedBuffer {
        ManagedBuffer::from(slice)
    }

    #[endpoint]
    fn mbuffer_from_boxed_bytes(&self, boxed_bytes: BoxedBytes) -> ManagedBuffer {
        ManagedBuffer::from(boxed_bytes)
    }

    #[endpoint]
    fn mbuffer_overwrite(&self, mb1: ManagedBuffer, bytes: &[u8]) -> ManagedBuffer {
        let mut result = mb1;
        result.overwrite(bytes);
        result
    }

    #[endpoint]
    fn mbuffer_concat_1(&self, mb1: ManagedBuffer, mb2: ManagedBuffer) -> ManagedBuffer {
        let mut result = mb1;
        result.append(&mb2);
        result
    }

    #[endpoint]
    fn mbuffer_concat_2(&self, mb: ManagedBuffer, bytes: &[u8]) -> ManagedBuffer {
        let mut result = mb;
        result.append_bytes(bytes);
        result
    }

    #[endpoint]
    fn mbuffer_load_slice(
        &self,
        mb: ManagedBuffer,
        starting_position: usize,
        slice_len: usize,
    ) -> OptionalValue<BoxedBytes> {
        let mut result = BoxedBytes::zeros(slice_len);
        if mb
            .load_slice(starting_position, result.as_mut_slice())
            .is_ok()
        {
            OptionalValue::Some(result)
        } else {
            OptionalValue::None
        }
    }

    #[endpoint]
    fn mbuffer_set_slice(&self, mb: ManagedBuffer, index: usize, item: &[u8]) -> ManagedBuffer {
        let mut result = mb;
        if result.set_slice(index, item).is_err() {
            sc_panic!("index out of bounds");
        }
        result
    }

    #[endpoint]
    fn mbuffer_copy_slice(
        &self,
        mb: ManagedBuffer,
        starting_position: usize,
        slice_len: usize,
    ) -> OptionalValue<ManagedBuffer> {
        mb.copy_slice(starting_position, slice_len).into()
    }

    #[endpoint]
    fn mbuffer_set_random(&self, nr_bytes: usize) -> ManagedBuffer {
        ManagedBuffer::new_random(nr_bytes)
    }

    #[endpoint]
    fn mbuffer_eq(&self, mb1: ManagedBuffer, mb2: ManagedBuffer) -> bool {
        mb1 == mb2
    }

    #[endpoint]
    fn managed_address_zero(&self) -> ManagedAddress {
        ManagedAddress::zero()
    }

    #[endpoint]
    fn managed_address_from(&self, bytes: &[u8; 32]) -> ManagedAddress {
        ManagedAddress::from(bytes)
    }

    #[endpoint]
    fn managed_address_eq(&self, mb1: ManagedAddress, mb2: ManagedAddress) -> bool {
        mb1 == mb2
    }
}
