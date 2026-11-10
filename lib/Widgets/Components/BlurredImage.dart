import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:image/image.dart' as img;

import '../../Core/State/State.dart';
import '../../Logger.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Lru.dart';

class BlurredImage extends StatefulWidget {
  final String url;
  final String? fallback;
  final double saturation;

  const BlurredImage({
    super.key,
    required this.url,
    this.fallback,
    this.saturation = 1,
  });

  static final _done = Lru<String, ui.Image>(24);
  static final _pending = <String, Future<ui.Image?>>{};

  static ui.Image? peek(String url, double saturation) =>
      _done['$saturation|$url'];

  static Future<ui.Image?> load(String url, double saturation) {
    final key = '$saturation|$url';
    final hit = _done[key];
    if (hit != null) return SynchronousFuture(hit);
    return _pending[key] ??= () async {
      try {
        final file = File(url).isAbsolute
            ? File(url)
            : await DefaultCacheManager().getSingleFile(url);
        final small = await _shrink(await file.readAsBytes());
        final raw = await compute(_blur, (small, saturation));
        final out = await _decode(raw);
        _done[key] = out;
        return out;
      } catch (e) {
        logger('Blurred image failed: $e');
        return null;
      } finally {
        unawaited(_pending.remove(key));
      }
    }();
  }

  @override
  State<BlurredImage> createState() => _BlurredImageState();
}

typedef _Raw = (int, int, Uint8List);

const _side = 160;

Future<_Raw> _shrink(Uint8List bytes) async {
  final buffer = await ui.ImmutableBuffer.fromUint8List(bytes);
  final descriptor = await ui.ImageDescriptor.encoded(buffer);
  final portrait = descriptor.height > descriptor.width;
  final codec = await descriptor.instantiateCodec(
    targetWidth: portrait ? _side : null,
    targetHeight: portrait ? null : _side,
  );
  final image = (await codec.getNextFrame()).image;
  final data = await image.toByteData();
  final out = (image.width, image.height, data!.buffer.asUint8List());
  image.dispose();
  codec.dispose();
  descriptor.dispose();
  buffer.dispose();
  return out;
}

Future<ui.Image> _decode(_Raw raw) {
  final done = Completer<ui.Image>();
  ui.decodeImageFromPixels(
    raw.$3,
    raw.$1,
    raw.$2,
    ui.PixelFormat.rgba8888,
    done.complete,
  );
  return done.future;
}

_Raw _blur((_Raw, double) input) {
  final ((width, height, pixels), saturation) = input;
  var small = img.Image.fromBytes(
    width: width,
    height: height,
    bytes: pixels.buffer,
    numChannels: 4,
    order: img.ChannelOrder.rgba,
  );
  small = img.gaussianBlur(small, radius: 9);
  if (saturation != 1) small = img.adjustColor(small, saturation: saturation);
  return (
    small.width,
    small.height,
    small.getBytes(order: img.ChannelOrder.rgba),
  );
}

class _BlurredImageState extends State<BlurredImage> {
  late final _image = Live<ui.Image?>(
    BlurredImage.peek(widget.url, widget.saturation),
  );
  late final _instant = _image.value != null;
  int _run = 0;

  @override
  void initState() {
    super.initState();
    _start();
  }

  @override
  void didUpdateWidget(BlurredImage old) {
    super.didUpdateWidget(old);
    if (old.url != widget.url || old.saturation != widget.saturation) {
      _start();
    }
  }

  void _start() {
    final run = ++_run;
    final url = widget.url;
    final fallback = widget.fallback;
    unawaited(() async {
      var out = await BlurredImage.load(url, widget.saturation);
      if (out == null && fallback != null && fallback != url) {
        out = await BlurredImage.load(fallback, widget.saturation);
      }
      if (mounted && run == _run && out != null) {
        _image.value = out;
      }
    }());
  }

  @override
  Widget build(BuildContext context) => Watch(() {
    final image = _image.value;
    return AnimatedOpacity(
      opacity: image == null ? 0 : 1,
      duration: _instant ? Duration.zero : animDuration(350),
      child: image == null
          ? const SizedBox.expand()
          : RawImage(
              image: image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
              filterQuality: FilterQuality.low,
            ),
    );
  });
}
