import 'dart:ffi' as ffi;
import 'dart:io';

typedef DartotsuVipsAvailableC = ffi.Int32 Function();
typedef DartotsuVipsAvailableDart = int Function();

typedef DartotsuImageScaleC = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint8> inputPtr,
  ffi.Size inputLen,
  ffi.Uint32 targetWidth,
  ffi.Uint32 targetHeight,
  ffi.Uint32 algorithm,
  ffi.Uint32 outputFormat,
  ffi.Pointer<ffi.Pointer<ffi.Uint8>> outPtr,
  ffi.Pointer<ffi.Size> outLen,
);
typedef DartotsuImageScaleDart = int Function(
  ffi.Pointer<ffi.Uint8> inputPtr,
  int inputLen,
  int targetWidth,
  int targetHeight,
  int algorithm,
  int outputFormat,
  ffi.Pointer<ffi.Pointer<ffi.Uint8>> outPtr,
  ffi.Pointer<ffi.Size> outLen,
);

typedef DartotsuImageFreeC = ffi.Void Function(
  ffi.Pointer<ffi.Uint8> ptr,
  ffi.Size len,
);
typedef DartotsuImageFreeDart = void Function(
  ffi.Pointer<ffi.Uint8> ptr,
  int len,
);

typedef DartotsuImageDetectBordersC = ffi.Int32 Function(
  ffi.Pointer<ffi.Uint8> inputPtr,
  ffi.Size inputLen,
  ffi.Pointer<ffi.Double> outLeft,
  ffi.Pointer<ffi.Double> outTop,
  ffi.Pointer<ffi.Double> outRight,
  ffi.Pointer<ffi.Double> outBottom,
);
typedef DartotsuImageDetectBordersDart = int Function(
  ffi.Pointer<ffi.Uint8> inputPtr,
  int inputLen,
  ffi.Pointer<ffi.Double> outLeft,
  ffi.Pointer<ffi.Double> outTop,
  ffi.Pointer<ffi.Double> outRight,
  ffi.Pointer<ffi.Double> outBottom,
);

class DartotsuRustBindings {
  static DartotsuRustBindings? _instance;
  static bool _initAttempted = false;

  final ffi.DynamicLibrary library;
  late final DartotsuVipsAvailableDart vipsAvailable;
  late final DartotsuImageScaleDart imageScale;
  late final DartotsuImageFreeDart imageFree;
  late final DartotsuImageDetectBordersDart detectBorders;

  DartotsuRustBindings._(this.library) {
    vipsAvailable = library
        .lookup<ffi.NativeFunction<DartotsuVipsAvailableC>>(
          'dartotsu_vips_available',
        )
        .asFunction<DartotsuVipsAvailableDart>();

    imageScale = library
        .lookup<ffi.NativeFunction<DartotsuImageScaleC>>('dartotsu_image_scale')
        .asFunction<DartotsuImageScaleDart>();

    imageFree = library
        .lookup<ffi.NativeFunction<DartotsuImageFreeC>>('dartotsu_image_free')
        .asFunction<DartotsuImageFreeDart>();

    detectBorders = library
        .lookup<ffi.NativeFunction<DartotsuImageDetectBordersC>>(
          'dartotsu_image_detect_borders',
        )
        .asFunction<DartotsuImageDetectBordersDart>();
  }

  static DartotsuRustBindings? get instance {
    if (_instance != null) return _instance;
    if (_initAttempted) return null;
    _initAttempted = true;

    try {
      final ffi.DynamicLibrary lib;
      if (Platform.isAndroid || Platform.isLinux) {
        lib = ffi.DynamicLibrary.open('libdartotsu_image_rust.so');
      } else if (Platform.isWindows) {
        lib = ffi.DynamicLibrary.open('dartotsu_image_rust.dll');
      } else if (Platform.isIOS || Platform.isMacOS) {
        lib = ffi.DynamicLibrary.process();
      } else {
        return null;
      }
      _instance = DartotsuRustBindings._(lib);
      return _instance;
    } catch (_) {
      return null;
    }
  }
}
