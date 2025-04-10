use super::{set_mapper, SetMapper, StorageClearable, StorageMapper};
use crate::api::{ErrorApi, StorageReadApi, StorageWriteApi};
use crate::storage::{storage_get, storage_set};
use crate::types::BoxedBytes;
use core::marker::PhantomData;
use numbat_codec::{top_encode_to_vec, TopDecode, TopEncode};

const MAPPED_VALUE_IDENTIFIER: &[u8] = b".mapped";
type Keys<'a, SA, T> = set_mapper::Iter<'a, SA, T>;

#[deprecated]
pub struct MapMapper<SA, K, V>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode + 'static,
    V: TopEncode + TopDecode + 'static,
{
    api: SA,
    main_key: BoxedBytes,
    keys_set: SetMapper<SA, K>,
    _phantom: core::marker::PhantomData<V>,
}

impl<SA, K, V> StorageMapper<SA> for MapMapper<SA, K, V>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode,
    V: TopEncode + TopDecode,
{
    fn new(api: SA, main_key: BoxedBytes) -> Self {
        MapMapper {
            api: api.clone(),
            main_key: main_key.clone(),
            keys_set: SetMapper::<SA, K>::new(api, main_key),
            _phantom: PhantomData,
        }
    }
}

impl<SA, K, V> StorageClearable for MapMapper<SA, K, V>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode,
    V: TopEncode + TopDecode,
{
    fn clear(&mut self) {
        for key in self.keys_set.iter() {
            self.clear_mapped_value(&key);
        }
        self.keys_set.clear();
    }
}

impl<SA, K, V> MapMapper<SA, K, V>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode,
    V: TopEncode + TopDecode,
{
    fn build_named_key(&self, name: &[u8], key: &K) -> BoxedBytes {
        let bytes = top_encode_to_vec(&key).unwrap();
        BoxedBytes::from_concat(&[self.main_key.as_slice(), name, &bytes])
    }

    fn get_mapped_value(&self, key: &K) -> V {
        storage_get(
            self.api.clone(),
            self.build_named_key(MAPPED_VALUE_IDENTIFIER, key)
                .as_slice(),
        )
    }

    fn set_mapped_value(&self, key: &K, value: &V) {
        storage_set(
            self.api.clone(),
            self.build_named_key(MAPPED_VALUE_IDENTIFIER, key)
                .as_slice(),
            &value,
        );
    }

    fn clear_mapped_value(&self, key: &K) {
        storage_set(
            self.api.clone(),
            self.build_named_key(MAPPED_VALUE_IDENTIFIER, key)
                .as_slice(),
            &BoxedBytes::empty(),
        );
    }

    /// Returns `true` if the map contains no elements.
    pub fn is_empty(&self) -> bool {
        self.keys_set.is_empty()
    }

    /// Returns the number of elements in the map.
    pub fn len(&self) -> usize {
        self.keys_set.len()
    }

    /// Returns `true` if the map contains a value for the specified key.
    pub fn contains_key(&self, k: &K) -> bool {
        self.keys_set.contains(k)
    }

    /// Gets the given key's corresponding entry in the map for in-place manipulation.
    pub fn entry(&mut self, key: K) -> Entry<'_, SA, K, V> {
        if self.contains_key(&key) {
            Entry::Occupied(OccupiedEntry {
                key,
                map: self,
                _marker: PhantomData,
            })
        } else {
            Entry::Vacant(VacantEntry {
                key,
                map: self,
                _marker: PhantomData,
            })
        }
    }

    /// Gets a reference to the value in the entry.
    pub fn get(&self, k: &K) -> Option<V> {
        if self.keys_set.contains(k) {
            return Some(self.get_mapped_value(k));
        }
        None
    }

    /// Sets the value of the entry, and returns the entry's old value.
    pub fn insert(&mut self, k: K, v: V) -> Option<V> {
        let old_value = self.get(&k);
        self.set_mapped_value(&k, &v);
        self.keys_set.insert(k);
        old_value
    }

    /// Takes the value out of the entry, and returns it.
    pub fn remove(&mut self, k: &K) -> Option<V> {
        if self.keys_set.remove(k) {
            let value = self.get_mapped_value(k);
            self.clear_mapped_value(k);
            return Some(value);
        }
        None
    }

    /// An iterator visiting all keys in arbitrary order.
    /// The iterator element type is `&'a K`.
    pub fn keys(&self) -> Keys<SA, K> {
        self.keys_set.iter()
    }

    /// An iterator visiting all values in arbitrary order.
    /// The iterator element type is `&'a V`.
    pub fn values(&self) -> Values<SA, K, V> {
        Values::new(self)
    }

    /// An iterator visiting all key-value pairs in arbitrary order.
    /// The iterator element type is `(&'a K, &'a V)`.
    pub fn iter(&self) -> Iter<SA, K, V> {
        Iter::new(self)
    }
}

pub struct Iter<'a, SA, K, V>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode + 'static,
    V: TopEncode + TopDecode + 'static,
{
    key_iter: Keys<'a, SA, K>,
    hash_map: &'a MapMapper<SA, K, V>,
}

impl<'a, SA, K, V> Iter<'a, SA, K, V>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode + 'static,
    V: TopEncode + TopDecode + 'static,
{
    fn new(hash_map: &'a MapMapper<SA, K, V>) -> Iter<'a, SA, K, V> {
        Iter {
            key_iter: hash_map.keys(),
            hash_map,
        }
    }
}

impl<'a, SA, K, V> Iterator for Iter<'a, SA, K, V>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode + 'static,
    V: TopEncode + TopDecode + 'static,
{
    type Item = (K, V);

    #[inline]
    fn next(&mut self) -> Option<(K, V)> {
        if let Some(key) = self.key_iter.next() {
            let value = self.hash_map.get(&key).unwrap();
            return Some((key, value));
        }
        None
    }
}

pub struct Values<'a, SA, K, V>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode + 'static,
    V: TopEncode + TopDecode + 'static,
{
    key_iter: Keys<'a, SA, K>,
    hash_map: &'a MapMapper<SA, K, V>,
}

impl<'a, SA, K, V> Values<'a, SA, K, V>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode + 'static,
    V: TopEncode + TopDecode + 'static,
{
    fn new(hash_map: &'a MapMapper<SA, K, V>) -> Values<'a, SA, K, V> {
        Values {
            key_iter: hash_map.keys(),
            hash_map,
        }
    }
}

impl<'a, SA, K, V> Iterator for Values<'a, SA, K, V>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode + 'static,
    V: TopEncode + TopDecode + 'static,
{
    type Item = V;

    #[inline]
    fn next(&mut self) -> Option<V> {
        if let Some(key) = self.key_iter.next() {
            let value = self.hash_map.get(&key).unwrap();
            return Some(value);
        }
        None
    }
}

pub enum Entry<'a, SA, K: 'a, V: 'a>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode + 'static,
    V: TopEncode + TopDecode + 'static,
{
    /// A vacant entry.
    Vacant(VacantEntry<'a, SA, K, V>),

    /// An occupied entry.
    Occupied(OccupiedEntry<'a, SA, K, V>),
}

/// A view into a vacant entry in a `MapMapper`.
/// It is part of the [`Entry`] enum.
pub struct VacantEntry<'a, SA, K: 'a, V: 'a>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode + 'static,
    V: TopEncode + TopDecode + 'static,
{
    pub(super) key: K,
    pub(super) map: &'a mut MapMapper<SA, K, V>,

    // Be invariant in `K` and `V`
    pub(super) _marker: PhantomData<&'a mut (K, V)>,
}

/// A view into an occupied entry in a `MapMapper`.
/// It is part of the [`Entry`] enum.
pub struct OccupiedEntry<'a, SA, K: 'a, V: 'a>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode + 'static,
    V: TopEncode + TopDecode + 'static,
{
    pub(super) key: K,
    pub(super) map: &'a mut MapMapper<SA, K, V>,

    // Be invariant in `K` and `V`
    pub(super) _marker: PhantomData<&'a mut (K, V)>,
}

impl<'a, SA, K, V> Entry<'a, SA, K, V>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode + Clone + 'static,
    V: TopEncode + TopDecode + 'static,
{
    /// Ensures a value is in the entry by inserting the default if empty, and returns
    /// an `OccupiedEntry`.
    pub fn or_insert(self, default: V) -> OccupiedEntry<'a, SA, K, V> {
        match self {
            Entry::Occupied(entry) => entry,
            Entry::Vacant(entry) => entry.insert(default),
        }
    }

    /// Ensures a value is in the entry by inserting the result of the default function if empty,
    /// and returns an `OccupiedEntry`.
    pub fn or_insert_with<F: FnOnce() -> V>(self, default: F) -> OccupiedEntry<'a, SA, K, V> {
        match self {
            Entry::Occupied(entry) => entry,
            Entry::Vacant(entry) => entry.insert(default()),
        }
    }

    /// Ensures a value is in the entry by inserting, if empty, the result of the default function.
    /// This method allows for generating key-derived values for insertion by providing the default
    /// function a reference to the key that was moved during the `.entry(key)` method call.
    ///
    /// The reference to the moved key is provided so that cloning or copying the key is
    /// unnecessary, unlike with `.or_insert_with(|| ... )`.
    pub fn or_insert_with_key<F: FnOnce(&K) -> V>(self, default: F) -> OccupiedEntry<'a, SA, K, V> {
        match self {
            Entry::Occupied(entry) => entry,
            Entry::Vacant(entry) => {
                let value = default(entry.key());
                entry.insert(value)
            },
        }
    }

    /// Returns a reference to this entry's key.
    pub fn key(&self) -> &K {
        match *self {
            Entry::Occupied(ref entry) => entry.key(),
            Entry::Vacant(ref entry) => entry.key(),
        }
    }

    /// Provides in-place mutable access to an occupied entry before any
    /// potential inserts into the map.
    pub fn and_modify<F>(self, f: F) -> Self
    where
        F: FnOnce(&mut V),
    {
        match self {
            Entry::Occupied(mut entry) => {
                entry.update(f);
                Entry::Occupied(entry)
            },
            Entry::Vacant(entry) => Entry::Vacant(entry),
        }
    }
}

impl<'a, SA, K, V: Default> Entry<'a, SA, K, V>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode + Clone + 'static,
    V: TopEncode + TopDecode + 'static,
{
    /// Ensures a value is in the entry by inserting the default value if empty,
    /// and returns an `OccupiedEntry`.
    pub fn or_default(self) -> OccupiedEntry<'a, SA, K, V> {
        match self {
            Entry::Occupied(entry) => entry,
            Entry::Vacant(entry) => entry.insert(Default::default()),
        }
    }
}

impl<'a, SA, K, V> VacantEntry<'a, SA, K, V>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode + Clone + 'static,
    V: TopEncode + TopDecode + 'static,
{
    /// Gets a reference to the key that would be used when inserting a value
    /// through the VacantEntry.
    pub fn key(&self) -> &K {
        &self.key
    }

    /// Sets the value of the entry with the `VacantEntry`'s key,
    /// and returns an `OccupiedEntry`.
    pub fn insert(self, value: V) -> OccupiedEntry<'a, SA, K, V> {
        self.map.insert(self.key.clone(), value);
        OccupiedEntry {
            key: self.key,
            map: self.map,
            _marker: PhantomData,
        }
    }
}

impl<'a, SA, K, V> OccupiedEntry<'a, SA, K, V>
where
    SA: StorageReadApi + StorageWriteApi + ErrorApi + Clone + 'static,
    K: TopEncode + TopDecode + Clone + 'static,
    V: TopEncode + TopDecode + 'static,
{
    /// Gets a reference to the key in the entry.
    pub fn key(&self) -> &K {
        &self.key
    }

    /// Take ownership of the key and value from the map.
    pub fn remove_entry(self) -> (K, V) {
        let value = self.map.remove(&self.key).unwrap();
        (self.key, value)
    }

    /// Gets the value in the entry.
    pub fn get(&self) -> V {
        self.map.get(&self.key).unwrap()
    }

    /// Syntactic sugar, to more compactly express a get, update and set in one line.
    /// Takes whatever lies in storage, apples the given closure and saves the final value back to storage.
    /// Propagates the return value of the given function.
    pub fn update<R, F: FnOnce(&mut V) -> R>(&mut self, f: F) -> R {
        let mut value = self.get();
        let result = f(&mut value);
        self.map.insert(self.key.clone(), value);
        result
    }

    /// Sets the value of the entry with the `OccupiedEntry`'s key,
    /// and returns the entry's old value.
    pub fn insert(self, value: V) -> V {
        self.map.insert(self.key, value).unwrap()
    }

    /// Takes the value of the entry out of the map, and returns it.
    pub fn remove(self) -> V {
        self.map.remove(&self.key).unwrap()
    }
}
