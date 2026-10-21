use fast_image_resize::images::Image;
use fast_image_resize::{FilterType, IntoImageView, ResizeAlg, ResizeOptions, Resizer};
use image::{DynamicImage, GenericImageView, ImageFormat, ImageReader};
use std::io::Cursor;
use std::slice;

#[cfg(feature = "vips")]
use vips::*;

/// Returns 1 if compiled with libvips support, 0 otherwise.
#[no_mangle]
pub extern "C" fn dartotsu_vips_available() -> i32 {
    #[cfg(feature = "vips")]
    {
        1
    }
    #[cfg(not(feature = "vips"))]
    {
        0
    }
}

#[cfg(feature = "vips")]
fn scale_with_vips(
    input_bytes: &[u8],
    target_width: u32,
    target_height: u32,
    output_format: u32,
) -> Option<Vec<u8>> {
    let img = VipsImage::from_buffer(input_bytes).ok()?;
    let tw = if target_width > 0 { target_width } else { img.width() as u32 };
    let th = if target_height > 0 { target_height } else { img.height() as u32 };
    let resized = img.thumbnail(tw, th, VipsSize::VIPS_SIZE_BOTH).ok()?;
    let suffix = if output_format == 1 { ".png" } else { ".jpg[Q=92]" };
    resized.write_to_buffer(suffix).ok()
}

/// Resizes an encoded image buffer using SIMD acceleration or libvips.
///
/// Supported Input Formats:
/// - Modern: AVIF, WebP, PNG, JPEG, GIF, BMP, TIFF, ICO, QOI, TGA, HDR
/// - Extended (via libvips): JXL, HEIC/HEIF, SVG, PSD, PDF, Camera RAW (DNG, CR2, NEF, ARW)
///
/// Algorithm:
/// - 0: Point / Nearest Neighbor
/// - 1: Bilinear
/// - 2: CatmullRom / Bicubic
/// - 3: Lanczos3
///
/// Output Format:
/// - 0: JPEG (high quality, 92)
/// - 1: PNG (lossless)
///
/// Returns 0 on success, negative error code on failure.
#[no_mangle]
pub extern "C" fn dartotsu_image_scale(
    input_ptr: *const u8,
    input_len: usize,
    mut target_width: u32,
    mut target_height: u32,
    algorithm: u32,
    output_format: u32,
    out_ptr: *mut *mut u8,
    out_len: *mut usize,
) -> i32 {
    if input_ptr.is_null() || input_len == 0 || out_ptr.is_null() || out_len.is_null() {
        return -1; // Invalid arguments
    }

    let input_bytes = unsafe { slice::from_raw_parts(input_ptr, input_len) };

    // Decode source image using the comprehensive image-rs format decoders
    let reader = match ImageReader::new(Cursor::new(input_bytes)).with_guessed_format() {
        Ok(r) => r,
        Err(_) => {
            #[cfg(feature = "vips")]
            {
                if let Some(mut buf) = scale_with_vips(input_bytes, target_width, target_height, output_format) {
                    buf.shrink_to_fit();
                    let len = buf.len();
                    let ptr = buf.as_mut_ptr();
                    std::mem::forget(buf);
                    unsafe {
                        *out_ptr = ptr;
                        *out_len = len;
                    }
                    return 0;
                }
            }
            return -2; // Format guess failed
        }
    };

    let src_img = match reader.decode() {
        Ok(img) => img,
        Err(_) => {
            #[cfg(feature = "vips")]
            {
                if let Some(mut buf) = scale_with_vips(input_bytes, target_width, target_height, output_format) {
                    buf.shrink_to_fit();
                    let len = buf.len();
                    let ptr = buf.as_mut_ptr();
                    std::mem::forget(buf);
                    unsafe {
                        *out_ptr = ptr;
                        *out_len = len;
                    }
                    return 0;
                }
            }
            return -3; // Decoding failed
        }
    };

    let (src_width, src_height) = src_img.dimensions();
    if src_width == 0 || src_height == 0 {
        return -4;
    }

    // Maintain aspect ratio if one dimension is 0
    if target_width == 0 && target_height == 0 {
        target_width = src_width;
        target_height = src_height;
    } else if target_width == 0 {
        target_width = ((src_width as u64 * target_height as u64) / src_height as u64).max(1) as u32;
    } else if target_height == 0 {
        target_height = ((src_height as u64 * target_width as u64) / src_width as u64).max(1) as u32;
    }

    // Choose scaling algorithm
    let filter = match algorithm {
        0 => FilterType::Point,
        1 => FilterType::Bilinear,
        2 => FilterType::CatmullRom,
        _ => FilterType::Lanczos3,
    };

    let options = ResizeOptions::new().resize_alg(ResizeAlg::Convolution(filter));

    // Convert source to RGBA8 for consistent SIMD processing
    let rgba_src = src_img.to_rgba8();
    let src_view = match rgba_src.pixel_type() {
        Some(pt) => match Image::from_vec_u8(src_width, src_height, rgba_src.into_raw(), pt) {
            Ok(img) => img,
            Err(_) => return -5,
        },
        None => return -5,
    };

    let pixel_type = src_view.pixel_type();
    let mut dst_image = Image::new(target_width, target_height, pixel_type);

    let mut resizer = Resizer::new();
    if resizer.resize(&src_view, &mut dst_image, &options).is_err() {
        return -6; // Resize failed
    }

    // Wrap destination into DynamicImage for encoding
    let dst_rgba = dst_image.into_vec();
    let dst_dyn = match image::RgbaImage::from_raw(target_width, target_height, dst_rgba) {
        Some(img) => DynamicImage::ImageRgba8(img),
        None => return -7,
    };

    // Encode to output buffer
    let mut out_buffer = Vec::new();
    let encode_result = if output_format == 1 {
        dst_dyn.write_to(&mut Cursor::new(&mut out_buffer), ImageFormat::Png)
    } else {
        let mut jpeg_encoder = image::codecs::jpeg::JpegEncoder::new_with_quality(&mut out_buffer, 92);
        jpeg_encoder.encode_image(&dst_dyn)
    };

    if encode_result.is_err() {
        return -8; // Encoding failed
    }

    out_buffer.shrink_to_fit();
    let len = out_buffer.len();
    let ptr = out_buffer.as_mut_ptr();
    std::mem::forget(out_buffer);

    unsafe {
        *out_ptr = ptr;
        *out_len = len;
    }

    0 // Success
}

/// Frees a buffer previously allocated by `dartotsu_image_scale`.
#[no_mangle]
pub extern "C" fn dartotsu_image_free(ptr: *mut u8, len: usize) {
    if !ptr.is_null() && len > 0 {
        unsafe {
            let _ = Vec::from_raw_parts(ptr, len, len);
        }
    }
}

/// Fast border crop detection (accelerated detection of blank margins).
#[no_mangle]
pub extern "C" fn dartotsu_image_detect_borders(
    input_ptr: *const u8,
    input_len: usize,
    out_left: *mut f64,
    out_top: *mut f64,
    out_right: *mut f64,
    out_bottom: *mut f64,
) -> i32 {
    if input_ptr.is_null() || input_len == 0 {
        return -1;
    }

    let input_bytes = unsafe { slice::from_raw_parts(input_ptr, input_len) };
    let reader = match ImageReader::new(Cursor::new(input_bytes)).with_guessed_format() {
        Ok(r) => r,
        Err(_) => return -2,
    };

    let img = match reader.decode() {
        Ok(img) => img,
        Err(_) => return -3,
    };

    let (w, h) = img.dimensions();
    if w < 16 || h < 16 {
        return -4;
    }

    let gray = img.to_luma8();
    let pixels = gray.as_raw();

    let is_blank = |min: u8, max: u8, sum: u64, count: u64| -> bool {
        if max.saturating_sub(min) > 14 {
            return false;
        }
        let mean = sum / count;
        mean >= 232 || mean <= 22
    };

    let row_blank = |y: u32| -> bool {
        let mut min = 255u8;
        let mut max = 0u8;
        let mut sum = 0u64;
        let offset = (y * w) as usize;
        for x in 0..w as usize {
            let v = pixels[offset + x];
            if v < min {
                min = v;
            }
            if v > max {
                max = v;
            }
            sum += v as u64;
        }
        is_blank(min, max, sum, w as u64)
    };

    let mut top = 0u32;
    let max_v = (h as f64 * 0.4) as u32;
    while top < max_v && row_blank(top) {
        top += 1;
    }

    let mut bottom = 0u32;
    while bottom < max_v && row_blank(h - 1 - bottom) {
        bottom += 1;
    }

    if top >= max_v || bottom >= max_v {
        return 1; // No trim (too large)
    }

    let col_blank = |x: u32| -> bool {
        let mut min = 255u8;
        let mut max = 0u8;
        let mut sum = 0u64;
        let active_h = (h - top - bottom) as u64;
        for y in top..(h - bottom) {
            let v = pixels[(y * w + x) as usize];
            if v < min {
                min = v;
            }
            if v > max {
                max = v;
            }
            sum += v as u64;
        }
        is_blank(min, max, sum, active_h)
    };

    let mut left = 0u32;
    let max_h = (w as f64 * 0.4) as u32;
    while left < max_h && col_blank(left) {
        left += 1;
    }

    let mut right = 0u32;
    while right < max_h && col_blank(w - 1 - right) {
        right += 1;
    }

    if left >= max_h || right >= max_h {
        return 1; // No trim
    }

    unsafe {
        if !out_left.is_null() {
            *out_left = left as f64 / w as f64;
        }
        if !out_top.is_null() {
            *out_top = top as f64 / h as f64;
        }
        if !out_right.is_null() {
            *out_right = 1.0 - (right as f64 / w as f64);
        }
        if !out_bottom.is_null() {
            *out_bottom = 1.0 - (bottom as f64 / h as f64);
        }
    }

    0 // Success
}
