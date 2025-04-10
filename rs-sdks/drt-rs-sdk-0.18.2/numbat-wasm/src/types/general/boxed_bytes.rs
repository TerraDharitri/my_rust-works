use crate::abi::TypeAbi;
use alloc::alloc::{alloc, alloc_zeroed, realloc, Layout};
use alloc::boxed::Box;
use alloc::string::String;
use alloc::vec::Vec;
use numbat_codec::*;

/// Simple wrapper around a boxed byte slice,
/// but with a lot of optimized methods for manipulating it.
/// The focus is on reducing code size rather improving speed.
#[derive(Clone, PartialEq, Eq, Debug)]
pub struct BoxedBytes(Box<[u8]>);

impl BoxedBytes {
    pub fn empty() -> Self {
        BoxedBytes(Box::from([0u8; 0]))
    }

    pub fn zeros(len: usize) -> Self {
        unsafe {
            let layout = Layout::from_size_align(len, core::mem::align_of::<u8>()).unwrap();
            let bytes_ptr = alloc_zeroed(layout);
            let bytes_box = Box::from_raw(core::slice::from_raw_parts_mut(bytes_ptr, len));
            BoxedBytes(bytes_box)
        }
    }

    /// Allocates an uninitialized BoxedBytes to heap.
    ///
    /// # Safety
    ///
    /// Should only be called if the contents are initialized immediately afterwards, e.g. via a FFI call.
    pub unsafe fn allocate(len: usize) -> Self {
        let layout = Layout::from_size_align(len, core::mem::align_of::<u8>()).unwrap();
        let bytes_ptr = alloc(layout);
        let bytes_box = Box::from_raw(core::slice::from_raw_parts_mut(bytes_ptr, len));
        BoxedBytes(bytes_box)
    }

    #[inline]
    pub fn as_ptr(&self) -> *const u8 {
        self.0.as_ptr()
    }

    #[inline]
    pub fn as_mut_ptr(&mut self) -> *mut u8 {
        self.0.as_mut_ptr()
    }

    #[inline]
    pub fn len(&self) -> usize {
        self.0.len()
    }

    #[inline]
    pub fn is_empty(&self) -> bool {
        self.0.is_empty()
    }

    #[inline]
    pub fn into_box(self) -> Box<[u8]> {
        self.0
    }

    #[inline]
    pub fn as_slice(&self) -> &[u8] {
        &*self.0
    }

    /// Create new instance by concatenating several byte slices.
    pub fn from_concat(slices: &[&[u8]]) -> Self {
        let mut result_len = 0usize;
        let mut index = slices.len();
        while index > 0 {
            index -= 1;
            result_len += slices[index].len();
        }
        unsafe {
            let layout = Layout::from_size_align(result_len, core::mem::align_of::<u8>()).unwrap();
            let result_ptr = alloc(layout);
            let mut current_index = 0usize;
            for slice in slices.iter() {
                core::ptr::copy_nonoverlapping(
                    slice.as_ptr(),
                    result_ptr.add(current_index),
                    slice.len(),
                );
                current_index += slice.len();
            }
            let bytes_box = Box::from_raw(core::slice::from_raw_parts_mut(result_ptr, result_len));
            BoxedBytes(bytes_box)
        }
    }

    /// Splits BoxedBytes into 2 others at designated position.
    /// Returns the original and an empty BoxedBytes if position arugment out of range.
    pub fn split(self, at: usize) -> (BoxedBytes, BoxedBytes) {
        if at >= self.len() {
            (self, BoxedBytes::empty())
        } else {
            let other_len = self.len() - at;
            unsafe {
                // breaking down the input into its components
                let self_layout =
                    Layout::from_size_align(self.len(), core::mem::align_of::<u8>()).unwrap();
                let self_ptr = Box::into_raw(self.0) as *mut u8;

                // the data for the second result needs to be copied somewhere else
                let other_layout =
                    Layout::from_size_align(other_len, core::mem::align_of::<u8>()).unwrap();
                let other_ptr = alloc(other_layout);
                core::ptr::copy_nonoverlapping(self_ptr.add(at), other_ptr, other_len);

                // truncating the memory for the first using a realloc
                // got inspiration for this from the RawVec implementation
                let realloc_ptr = realloc(self_ptr, self_layout, at);

                // packaging the resulting parts nicely
                let bytes_box_1 = Box::from_raw(core::slice::from_raw_parts_mut(realloc_ptr, at));
                let bytes_box_2 =
                    Box::from_raw(core::slice::from_raw_parts_mut(other_ptr, other_len));
                (BoxedBytes(bytes_box_1), BoxedBytes(bytes_box_2))
            }
        }
    }
}

impl AsRef<[u8]> for BoxedBytes {
    #[inline]
    fn as_ref(&self) -> &[u8] {
        &*self.0
    }
}

impl<'a> From<&'a [u8]> for BoxedBytes {
    #[inline]
    fn from(byte_slice: &'a [u8]) -> Self {
        BoxedBytes(Box::from(byte_slice))
    }
}

impl From<Box<[u8]>> for BoxedBytes {
    #[inline]
    fn from(b: Box<[u8]>) -> Self {
        BoxedBytes(b)
    }
}

impl From<Vec<u8>> for BoxedBytes {
    #[inline]
    fn from(v: Vec<u8>) -> Self {
        BoxedBytes(v.into_boxed_slice())
    }
}

/// This allows us to use a mutable BoxedBytes as top encode output.
impl TopEncodeOutput for &mut BoxedBytes {
    fn set_slice_u8(self, bytes: &[u8]) {
        *self = BoxedBytes::from(bytes);
    }
}

impl NestedEncode for BoxedBytes {
    #[inline]
    fn dep_encode<O: NestedEncodeOutput>(&self, dest: &mut O) -> Result<(), EncodeError> {
        self.len().dep_encode(dest)?;
        dest.write(self.as_ref());
        Ok(())
    }

    #[inline]
    fn dep_encode_or_exit<O: NestedEncodeOutput, ExitCtx: Clone>(
        &self,
        dest: &mut O,
        c: ExitCtx,
        exit: fn(ExitCtx, EncodeError) -> !,
    ) {
        self.len().dep_encode_or_exit(dest, c, exit);
        dest.write(self.as_ref());
    }
}

impl TopEncode for BoxedBytes {
    #[inline]
    fn top_encode<O: TopEncodeOutput>(&self, output: O) -> Result<(), EncodeError> {
        output.set_slice_u8(self.as_ref());
        Ok(())
    }

    #[inline]
    fn top_encode_or_exit<O: TopEncodeOutput, ExitCtx: Clone>(
        &self,
        output: O,
        _: ExitCtx,
        _: fn(ExitCtx, EncodeError) -> !,
    ) {
        output.set_slice_u8(self.as_ref());
    }
}

impl NestedDecode for BoxedBytes {
    fn dep_decode<I: NestedDecodeInput>(input: &mut I) -> Result<Self, DecodeError> {
        let size = usize::dep_decode(input)?;
        let byte_slice = input.read_slice(size)?;
        Ok(byte_slice.into())
    }

    fn dep_decode_or_exit<I: NestedDecodeInput, ExitCtx: Clone>(
        input: &mut I,
        c: ExitCtx,
        exit: fn(ExitCtx, DecodeError) -> !,
    ) -> Self {
        let size = usize::dep_decode_or_exit(input, c.clone(), exit);
        let byte_slice = input.read_slice_or_exit(size, c, exit);
        byte_slice.into()
    }
}

impl TopDecode for BoxedBytes {
    fn top_decode<I: TopDecodeInput>(input: I) -> Result<Self, DecodeError> {
        Ok(BoxedBytes(input.into_boxed_slice_u8()))
    }

    fn top_decode_or_exit<I: TopDecodeInput, ExitCtx: Clone>(
        input: I,
        _: ExitCtx,
        _: fn(ExitCtx, DecodeError) -> !,
    ) -> Self {
        BoxedBytes(input.into_boxed_slice_u8())
    }
}

impl TypeAbi for BoxedBytes {
    fn type_name() -> String {
        "bytes".into()
    }
}

////////////////////////////////////////////////////////////////////////////////

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_concat_1() {
        let bb = BoxedBytes::from_concat(&[&b"abc"[..], &b"def"[..]]);
        assert_eq!(bb, BoxedBytes::from(&b"abcdef"[..]));
    }

    #[test]
    fn test_concat_2() {
        let bb = BoxedBytes::from_concat(&[&b"abc"[..], &b""[..], &b"def"[..]]);
        assert_eq!(bb, BoxedBytes::from(&b"abcdef"[..]));
    }

    #[test]
    fn test_concat_empty_1() {
        let bb = BoxedBytes::from_concat(&[&b""[..], &b""[..], &b""[..]]);
        assert_eq!(bb, BoxedBytes::from(&b""[..]));
    }

    #[test]
    fn test_concat_empty_2() {
        let bb = BoxedBytes::from_concat(&[]);
        assert_eq!(bb, BoxedBytes::from(&b""[..]));
    }

    #[test]
    fn test_is_empty() {
        assert!(BoxedBytes::empty().is_empty());
    }

    #[test]
    fn test_size_of() {
        use core::mem::size_of;
        assert_eq!(size_of::<BoxedBytes>(), 2 * size_of::<usize>());
        assert_eq!(size_of::<Option<BoxedBytes>>(), 2 * size_of::<usize>());
    }

    #[test]
    fn test_split_1() {
        let (bb1, bb2) = BoxedBytes::from(&b"abcdef"[..]).split(3);
        assert_eq!(bb1, BoxedBytes::from(&b"abc"[..]));
        assert_eq!(bb2, BoxedBytes::from(&b"def"[..]));
    }

    #[test]
    fn test_split_2() {
        let (bb1, bb2) = BoxedBytes::from(&b"abcdef"[..]).split(0);
        assert_eq!(bb1, BoxedBytes::from(&b""[..]));
        assert_eq!(bb2, BoxedBytes::from(&b"abcdef"[..]));
    }

    #[test]
    fn test_split_over() {
        let (bb1, bb2) = BoxedBytes::from(&b"abcdef"[..]).split(6);
        assert_eq!(bb1, BoxedBytes::from(&b"abcdef"[..]));
        assert_eq!(bb2, BoxedBytes::from(&b""[..]));

        let (bb1, bb2) = BoxedBytes::from(&b"abcdef"[..]).split(7);
        assert_eq!(bb1, BoxedBytes::from(&b"abcdef"[..]));
        assert_eq!(bb2, BoxedBytes::from(&b""[..]));
    }
}
