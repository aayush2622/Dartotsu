import 'dart:async';
import 'dart:typed_data';
import 'package:image/image.dart' as img;

Future<Uint8List> cropImageBorders(Uint8List imageBytes) async {
  return await tryCrop(imageBytes);
}

Future<Uint8List> tryCrop(Uint8List bytes) async {
  final cmd = img.Command();
  cmd.decodeImage(bytes);
  cmd.executeThread();

  img.Image? image = await cmd.getImage();
  if (image == null) return bytes;

  image = _applyCrop(image, isWhite: true);

  image = _applyCrop(image, isWhite: false);

  return img.encodePng(image);
}

img.Image _applyCrop(img.Image image, {required bool isWhite}) {
  int width = image.width;
  int height = image.height;
  int left = 0;
  int top = 0;
  int right = width - 1;
  int bottom = height - 1;
  int threshold = 10;

  bool isPixelContent(int x, int y) {
    var pixel = image.getPixel(x, y);
    num r = pixel.r;
    num g = pixel.g;
    num b = pixel.b;
    num brightness = r + g + b;

    if (isWhite) {
      return brightness < (765 - (threshold * 3));
    } else {
      return brightness > (threshold * 3);
    }
  }

  for (int x = 0; x < width; x++) {
    bool stop = false;
    for (int y = 0; y < height; y++) {
      if (isPixelContent(x, y)) {
        left = x;
        stop = true;
        break;
      }
    }
    if (stop) break;
  }

  for (int x = width - 1; x >= left; x--) {
    bool stop = false;
    for (int y = 0; y < height; y++) {
      if (isPixelContent(x, y)) {
        right = x;
        stop = true;
        break;
      }
    }
    if (stop) break;
  }

  for (int y = 0; y < height; y++) {
    bool stop = false;
    for (int x = left; x <= right; x++) {
      if (isPixelContent(x, y)) {
        top = y;
        stop = true;
        break;
      }
    }
    if (stop) break;
  }

  for (int y = height - 1; y >= top; y--) {
    bool stop = false;
    for (int x = left; x <= right; x++) {
      if (isPixelContent(x, y)) {
        bottom = y;
        stop = true;
        break;
      }
    }
    if (stop) break;
  }

  if (left > 0 || top > 0 || right < width - 1 || bottom < height - 1) {
    int w = right - left + 1;
    int h = bottom - top + 1;
    if (w > 0 && h > 0) {
      return img.copyCrop(image, x: left, y: top, width: w, height: h);
    }
  }

  return image;
}
