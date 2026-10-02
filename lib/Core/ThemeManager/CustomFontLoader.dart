import 'dart:io';

import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path/path.dart' as p;

import '../Preferences/StorageManager.dart';

/// Loads fonts into the engine at runtime, from two sources:
///
/// - a user-picked `.ttf`/`.otf` file, copied into the app's own `fonts/`
///   folder so deleting the original elsewhere never breaks it, and scanned
///   back into a list so previously-added fonts stay pickable; and
/// - the Google Fonts catalog, downloaded on demand via `package:google_fonts`.
class CustomFontLoader {
  CustomFontLoader._();

  static String? _loadedPath;
  static String? _loadedFamily;

  static String _familyFor(String path) =>
      'UserFont_${path.hashCode.toUnsigned(32)}';

  static Future<Directory> _fontsDir() async {
    final dir = await StorageManager.getDirectory(subPath: 'fonts');
    return dir!;
  }

  /// Copies [sourcePath] into the app's own fonts folder (resolving name
  /// collisions with a counter suffix) and returns the new, stable path.
  static Future<String> importFont(String sourcePath) async {
    final dir = await _fontsDir();
    final name = p.basename(sourcePath);
    final ext = p.extension(name);
    final stem = p.basenameWithoutExtension(name);

    var dest = File(p.join(dir.path, name));
    var i = 1;
    while (await dest.exists()) {
      dest = File(p.join(dir.path, '$stem ($i)$ext'));
      i++;
    }

    await File(sourcePath).copy(dest.path);
    return dest.path;
  }

  /// Every `.ttf`/`.otf` file currently saved in the fonts folder.
  static Future<List<String>> listSavedFonts() async {
    final dir = await _fontsDir();
    if (!await dir.exists()) return [];
    final entries = await dir.list().toList();
    final files = entries
        .whereType<File>()
        .where((f) {
          final ext = p.extension(f.path).toLowerCase();
          return ext == '.ttf' || ext == '.otf';
        })
        .toList()
      ..sort(
        (a, b) =>
            p.basename(a.path).toLowerCase().compareTo(
              p.basename(b.path).toLowerCase(),
            ),
      );
    return files.map((f) => f.path).toList();
  }

  /// Removes a previously-saved font file. Safe to call on a path that's
  /// also currently loaded — just drops the cached family so a later [load]
  /// re-reads (and will fail, since the file is gone).
  static Future<void> deleteSavedFont(String path) async {
    final file = File(path);
    if (await file.exists()) await file.delete();
    if (_loadedPath == path) {
      _loadedPath = null;
      _loadedFamily = null;
    }
  }

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

  /// Every family name available to download from Google Fonts.
  static List<String> googleFontFamilies() =>
      GoogleFonts.asMap().keys.toList()..sort();

  /// Downloads (and caches on disk via `package:google_fonts`) the given
  /// Google Font family, waits for it to finish loading into the engine,
  /// and returns the resolved family name — or `null` if [family] isn't a
  /// real Google Fonts name or the download failed.
  static Future<String?> loadGoogleFont(String family) async {
    if (!GoogleFonts.asMap().containsKey(family)) return null;
    try {
      final style = GoogleFonts.getFont(family);
      await GoogleFonts.pendingFonts();
      return style.fontFamily;
    } catch (_) {
      return null;
    }
  }
}
