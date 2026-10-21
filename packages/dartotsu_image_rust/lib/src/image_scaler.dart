import 'dart:ffi' as ffi;
import 'dart:isolate';
import 'dart:typed_data';
import 'package:ffi/ffi.dart';

import 'ffi_bindings.dart';

enum DartotsuScaleAlgorithm {
  nearest(0),
  bilinear(1),
  bicubic(2),
  lanczos(3);

  final int value;
  const DartotsuScaleAlgorithm(this.value);
}

class ScaledBorderRect {
  final double left;
  final double top;
  final double right;
  final double bottom;

  const ScaledBorderRect({
    required this.left,
    required this.top,
    required this.right,
    required this.bottom,
  });

  double get width => right - left;
  double get height => bottom - top;
}

/// In-memory LRU cache for Lanczos scaled images.
class LanczosMemoryCache {
  static final _map = <String, Uint8List>{};
  static const int _maxEntries = 80;

  static Uint8List? get(String key) => _map[key];

  static void put(String key, Uint8List bytes) {
    _map.remove(key);
    _map[key] = bytes;
    if (_map.length > _maxEntries) {
      _map.remove(_map.keys.first);
    }
  }

  static void clear() {
    _map.clear();
  }
}

class DartotsuImageRust {
  DartotsuImageRust._();

  static bool get isSupported => DartotsuRustBindings.instance != null;

  static bool get isVipsAvailable {
    final bindings = DartotsuRustBindings.instance;
    return bindings != null && bindings.vipsAvailable() == 1;
  }

  /// Scale an encoded image buffer using the selected algorithm (defaulting to Lanczos3).
  ///
  /// Runs off the main thread inside an isolate.
  static Future<Uint8List?> scale({
    required Uint8List bytes,
    required int targetWidth,
    required int targetHeight,
    DartotsuScaleAlgorithm algorithm = DartotsuScaleAlgorithm.lanczos,
    bool png = false,
    String? cacheKey,
  }) async {
    if (bytes.isEmpty) return null;

    if (cacheKey != null) {
      final cached = LanczosMemoryCache.get(cacheKey);
      if (cached != null) return cached;
    }

    if (!isSupported) return null;

    try {
      final result = await Isolate.run(() {
        return _scaleSync(
          bytes: bytes,
          targetWidth: targetWidth,
          targetHeight: targetHeight,
          algorithm: algorithm.value,
          outputFormat: png ? 1 : 0,
        );
      });

      if (result != null && cacheKey != null) {
        LanczosMemoryCache.put(cacheKey, result);
      }
      return result;
    } catch (_) {
      return null;
    }
  }

  /// Synchronous native FFI scaling inside isolate.
  static Uint8List? _scaleSync({
    required Uint8List bytes,
    required int targetWidth,
    required int targetHeight,
    required int algorithm,
    required int outputFormat,
  }) {
    final bindings = DartotsuRustBindings.instance;
    if (bindings == null) return null;

    final inputPtr = calloc<ffi.Uint8>(bytes.length);
    final outPtr = calloc<ffi.Pointer<ffi.Uint8>>();
    final outLen = calloc<ffi.Size>();

    try {
      inputPtr.asTypedList(bytes.length).setAll(0, bytes);

      final status = bindings.imageScale(
        inputPtr,
        bytes.length,
        targetWidth,
        targetHeight,
        algorithm,
        outputFormat,
        outPtr,
        outLen,
      );

      if (status != 0 || outPtr.value.address == 0 || outLen.value == 0) {
        return null;
      }

      final resultBytes = Uint8List.fromList(
        outPtr.value.asTypedList(outLen.value),
      );

      bindings.imageFree(outPtr.value, outLen.value);
      return resultBytes;
    } finally {
      calloc.free(inputPtr);
      calloc.free(outPtr);
      calloc.free(outLen);
    }
  }

  /// Accelerated border margin detection.
  static Future<ScaledBorderRect?> detectBorders(Uint8List bytes) async {
    if (!isSupported || bytes.isEmpty) return null;

    try {
      return await Isolate.run(() {
        final bindings = DartotsuRustBindings.instance;
        if (bindings == null) return null;

        final inputPtr = calloc<ffi.Uint8>(bytes.length);
        final outL = calloc<ffi.Double>();
        final outT = calloc<ffi.Double>();
        final outR = calloc<ffi.Double>();
        final outB = calloc<ffi.Double>();

        try {
          inputPtr.asTypedList(bytes.length).setAll(0, bytes);

          final res = bindings.detectBorders(
            inputPtr,
            bytes.length,
            outL,
            outT,
            outR,
            outB,
          );

          if (res != 0) return null;

          return ScaledBorderRect(
            left: outL.value,
            top: outT.value,
            right: outR.value,
            bottom: outB.value,
          );
        } finally {
          calloc.free(inputPtr);
          calloc.free(outL);
          calloc.free(outT);
          calloc.free(outR);
          calloc.free(outB);
        }
      });
    } catch (_) {
      return null;
    }
  }
}
