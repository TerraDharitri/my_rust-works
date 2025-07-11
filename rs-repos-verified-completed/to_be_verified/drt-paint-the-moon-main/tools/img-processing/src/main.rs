#![allow(unused)]

use std::convert::Infallible;
use std::f32::consts::FRAC_PI_2;
use std::io::{Cursor, Write};
use std::{f32::consts::PI, fs::File};

use image::{ColorType, DynamicImage, GenericImage, GenericImageView, ImageReader, Rgba};
use moon_color::MoonColor;

const MOON_SOURCE_EMBEDDED: &[u8] = include_bytes!("../lroc_color_poles_1k.jpg");

fn main() {
    // render_checker().unwrap();
    // process_moon().unwrap();
    render_moon(800, 0.0).unwrap();
}

fn process_moon() -> anyhow::Result<()> {
    let img = ImageReader::open("lroc_color_poles_2k.tif")?.decode()?;
    println!("{}:{}", img.width(), img.height());
    img.save("lroc_color_poles_2k.bmp")?;

    let bytes = img.into_bytes();

    let mut file = File::create("src/embedded_moon.rs")?;
    writeln!(file, "pub const MOON_BYTES: &[u8] = &{bytes:?};")?;

    Ok(())
}

fn render_checker() -> anyhow::Result<()> {
    sphere::generate_checker(1000, 500).save("checker.bmp")?;
    Ok(())
}

fn color_is_solid(color: Rgba<u8>) -> bool {
    color.0[3] == 255
}

fn color_is_black(color: Rgba<u8>) -> bool {
    const THRESHOLD: u8 = 5;
    color.0[0] < THRESHOLD && color.0[1] < THRESHOLD && color.0[2] < THRESHOLD
}

fn moon_source() -> anyhow::Result<DynamicImage> {
    // let mut source =
    //     ImageReader::with_format(Cursor::new(MOON_SOURCE_EMBEDDED), image::ImageFormat::Jpeg)
    //         .decode()?;

    // let source = ImageReader::open("lroc_color_poles_1k.jpg")?.decode()?;

    let source = ImageReader::open("lroc_color_poles_2k.tif")?.decode()?;
    let source = source.resize(1024, 512, image::imageops::FilterType::Nearest);

    Ok(source)
}

fn moon_overlay() -> anyhow::Result<DynamicImage> {
    let mut overlay = moon_source()?;

    println!("source:    {} x {}", overlay.width(), overlay.height());

    let rewa_logo = ImageReader::open("rewa-logo.png")?.decode()?;
    println!("rewa logo: {} x {}", rewa_logo.width(), rewa_logo.height());
    let rewa_logo = rewa_logo.resize(100, 100, image::imageops::FilterType::Nearest);
    println!("rewa logo: {} x {}", rewa_logo.width(), rewa_logo.height());

    let x0 = overlay.width() * 2 / 4;
    let y0 = overlay.height() / 4;
    for (x, y, color) in rewa_logo.pixels() {
        if color_is_solid(color)
        /*&& !color_is_black(color)*/
        {
            let normalized_color =
                MoonColor::closest_color_euclidian(color.0[0], color.0[1], color.0[2]);
            // if !color_is_black(color) {
            //     let rbg = normalized_color.rgb();
            //     println!(
            //         "{} {} {} -> {} {} {}",
            //         color.0[0], color.0[1], color.0[2], rbg.0, rbg.1, rbg.2
            //     );
            // }
            overlay.put_pixel(x0 + x, y0 + y, normalized_color.rgba_array().into());
        }
    }

    let paint_here = ImageReader::open("paint_here_2.png")?.decode()?;
    println!("paint here: {} x {}", rewa_logo.width(), rewa_logo.height());

    let x0 = 499;
    let y0 = 250;
    for (x, y, color) in paint_here.pixels() {
        if color_is_black(color) {
            // overlay.put_pixel(x0 + x, y0 + y, [180, 0, 210, 255u8].into());
            overlay.put_pixel(x0 + x, y0 + y, MoonColor::PURPLE.rgba_array().into());
        }
    }

    overlay.save("rendered_flat.png")?;

    // source.resize(nwidth, nheight, filter)

    Ok(overlay)
}

fn render_moon(size: u32, long0: f32) -> anyhow::Result<()> {
    let source = moon_overlay()?;
    // let source = sphere::generate_checker(1000, 500);
    sphere(size, long0, &source)?;

    Ok(())
}

fn sphere(size: u32, long0: f32, source: &DynamicImage) -> anyhow::Result<()> {
    let mut rendered = DynamicImage::new(size, size, ColorType::Rgb8);

    sphere::render_sphere(size, long0, source, |x, y, r, g, b| {
        rendered.put_pixel(x, y, [r, g, b, 255u8].into());
        Result::<(), Infallible>::Ok(())
    });

    rendered.save("rendered_sphere.png")?;

    Ok(())
}
