#![no_std]

use core::usize;

#[allow(unused_imports)]
use dharitri_sc::imports::*;

pub mod data;
pub mod paint_proxy;
pub mod pixel_block;

pub use data::*;
pub use pixel_block::PixelBlock;

#[cfg(feature = "block-size-4")]
pub type Block = pixel_block::PixelBlock<pixel_block::PixelBlockData4>;

#[cfg(feature = "block-size-8")]
pub type Block = pixel_block::PixelBlock<pixel_block::PixelBlockData8>;

#[cfg(feature = "block-size-16")]
pub type Block = pixel_block::PixelBlock<pixel_block::PixelBlockData16>;

#[cfg(feature = "block-size-32")]
pub type Block = pixel_block::PixelBlock<pixel_block::PixelBlockData32>;

#[cfg(feature = "block-size-64")]
pub type Block = pixel_block::PixelBlock<pixel_block::PixelBlockData64>;

const MAP_SIZE_BITS_X: usize = MAP_SIZE_BITS_Y + 1; // ratio is always 2:1
const MAP_SIZE_BITS_Y: usize = 9;

const MAP_SIZE_PIXELS_X: usize = 1 << MAP_SIZE_BITS_X; // 1024
const MAP_SIZE_PIXELS_Y: usize = 1 << MAP_SIZE_BITS_Y; // 512

/// A very light contract containing the map points and their state.
#[dharitri_sc::contract]
pub trait PaintTheMoonSc {
    #[init]
    fn init(&self) {}

    #[upgrade]
    fn upgrade(&self) {}

    #[view]
    fn block_size(&self) -> usize {
        Block::size()
    }

    #[endpoint]
    fn paint(&self, x: usize, y: usize, new_color: u8) {
        require!(x < MAP_SIZE_PIXELS_X, "invalid x");
        require!(y < MAP_SIZE_PIXELS_Y, "invalid y");
        require!(new_color < 16, "invalid color");

        let (block_x, sub_x) = Block::split_coord(x);
        let (block_y, sub_y) = Block::split_coord(y);

        let raw_block_mapper = self.raw_blocks(block_x, block_y);
        let raw_block = raw_block_mapper.get();
        let mut block = Block::from_managed_buffer(&raw_block);
        block.set_raw_pixel(sub_x, sub_y, new_color);
        let raw_block = block.to_managed_buffer();
        self.block_changed(block_x, block_y, &raw_block);
        raw_block_mapper.set(raw_block);
    }

    /// Endpoint used for benchmarking gas. Not available in production.
    #[payable("*")]
    #[endpoint]
    #[label("block-benchmark")]
    fn paint_rect(&self, x0: usize, y0: usize, xr: usize, yr: usize, new_color: u8) {
        for x in x0..xr {
            for y in y0..yr {
                self.paint(x, y, new_color);
            }
        }
    }

    #[event("blockChanged")]
    fn block_changed(
        &self,
        #[indexed] block_x: usize,
        #[indexed] block_y: usize,
        raw_block: &ManagedBuffer,
    );

    #[storage_mapper("blocks")]
    fn raw_blocks(&self, block_x: usize, block_y: usize) -> SingleValueMapper<ManagedBuffer>;

    #[storage_mapper("paintId")]
    fn paint_id(&self, color: &u8) -> SingleValueMapper<TokenIdentifier>;
}
