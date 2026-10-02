import 'dart:io';

import 'package:flutter/services.dart';

/// Loads a user-picked `.ttf`/`.otf` file into the engine at runtime.
///
/// Each distinct file path gets its own family name (derived from the path's
/// hash) so picking a new font never collides with or overwrites a
/// previously loaded one — Flutter's [FontLoader] has no "unregister".
class CustomFontLoader {
  CustomFontLoader._();

  static String? _loadedPath;
  static String? _loadedFamily;

  static String _familyFor(String path) =>
      'UserFont_${path.hashCode.toUnsigned(32)}';

  /// Loads [path] into the engine and returns its family name, or `null` on
  /// failure (missing file, unreadable, not a valid font).
  static Future<String?> load(String path) async {
    if (_loadedPath == path && _loadedFamily != null) return _loadedFamily;

    final file = File(path);
    if (!file.existsSync()) return null;

    try {
      final bytes = await file.readAsBytes();
      final family = _familyFor(path);
      final loader = FontLoader(family)
        ..addFont(Future.value(ByteData.view(bytes.buffer)));
      await loader.load();
      _loadedPath = path;
      _loadedFamily = family;
      return family;
    } catch (_) {
      return null;
    }
  }
}
