import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as p;
import 'package:pdfrx/pdfrx.dart';

const _pageWidth = 1500.0;
const _longestEdge = 3000.0;

class _Raw {
  final Uint8List pixels;
  final int width;
  final int height;

  const _Raw(this.pixels, this.width, this.height);
}

Uint8List _encode(_Raw raw) {
  final image = img.Image.fromBytes(
    width: raw.width,
    height: raw.height,
    bytes: raw.pixels.buffer,
    order: img.ChannelOrder.bgra,
    numChannels: 4,
  );
  return img.encodeJpg(image, quality: 90);
}

Future<List<String>> renderPdf(String pdf, String outDir) async {
  final marker = File(p.join(outDir, '.done'));
  if (await marker.exists()) {
    final cached = (await marker.readAsLines())
        .where((f) => File(f).existsSync())
        .toList();
    if (cached.isNotEmpty) return cached;
  }
  await Directory(outDir).create(recursive: true);
  await pdfrxFlutterInitialize();
  final document = await PdfDocument.openFile(pdf);
  try {
    final written = <String>[];
    for (final (i, page) in document.pages.indexed) {
      var width = _pageWidth;
      var height = page.height * width / page.width;
      if (height > _longestEdge) {
        height = _longestEdge;
        width = page.width * height / page.height;
      }
      final rendered = await page.render(
        fullWidth: width,
        fullHeight: height,
        backgroundColor: 0xFFFFFFFF,
      );
      if (rendered == null) continue;
      final raw = _Raw(
        Uint8List.fromList(rendered.pixels),
        rendered.width,
        rendered.height,
      );
      rendered.dispose();
      final target = p.join(
        outDir,
        '${(i + 1).toString().padLeft(4, '0')}.jpg',
      );
      await File(target).writeAsBytes(await compute(_encode, raw));
      written.add(target);
    }
    await marker.writeAsString(written.join('\n'));
    return written;
  } finally {
    await document.dispose();
  }
}
