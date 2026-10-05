import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../Preferences/StorageManager.dart';

Uint8List _readFontBytes(String path) => File(path).readAsBytesSync();

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

  static Future<String> importFont(String sourcePath) =>
      _copyIntoFontsDir(sourcePath, p.basename(sourcePath));

  static Future<String> _copyIntoFontsDir(
    String sourcePath,
    String destName,
  ) async {
    final dir = await _fontsDir();
    final ext = p.extension(destName);
    final stem = p.basenameWithoutExtension(destName);

    var dest = File(p.join(dir.path, destName));
    var i = 1;
    while (await dest.exists()) {
      dest = File(p.join(dir.path, '$stem ($i)$ext'));
      i++;
    }

    await File(sourcePath).copy(dest.path);
    return dest.path;
  }

  static Future<List<String>> listSavedFonts() async {
    final dir = await _fontsDir();
    if (!await dir.exists()) return [];
    final entries = await dir.list().toList();
    final files =
        entries.whereType<File>().where((f) {
          final ext = p.extension(f.path).toLowerCase();
          return ext == '.ttf' || ext == '.otf';
        }).toList()..sort(
          (a, b) => p
              .basename(a.path)
              .toLowerCase()
              .compareTo(p.basename(b.path).toLowerCase()),
        );
    return files.map((f) => f.path).toList();
  }

  static Future<void> deleteSavedFont(String path) async {
    final file = File(path);
    if (await file.exists()) await file.delete();
    if (_loadedPath == path) {
      _loadedPath = null;
      _loadedFamily = null;
    }
  }

  static Future<String?> load(String path) async {
    if (_loadedPath == path && _loadedFamily != null) return _loadedFamily;

    final file = File(path);
    if (!file.existsSync()) return null;

    try {
      final bytes = await compute(_readFontBytes, path);
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

  static List<String> googleFontFamilies() =>
      GoogleFonts.asMap().keys.toList()..sort();

  static Future<String?> downloadGoogleFont(String family) async {
    if (!GoogleFonts.asMap().containsKey(family)) return null;
    try {
      GoogleFonts.getFont(family);
      await GoogleFonts.pendingFonts();
    } catch (_) {
      return null;
    }

    final supportDir = await getApplicationSupportDirectory();
    if (!await supportDir.exists()) return null;
    final prefix = '${family.replaceAll(' ', '')}_';

    File? cached;
    for (var attempt = 0; attempt < 30 && cached == null; attempt++) {
      if (attempt > 0) {
        await Future.delayed(const Duration(milliseconds: 150));
      }
      await for (final entry in supportDir.list()) {
        if (entry is File &&
            p.basename(entry.path).startsWith(prefix) &&
            entry.path.toLowerCase().endsWith('.ttf')) {
          final len1 = await entry.length();
          if (len1 == 0) continue;
          await Future.delayed(const Duration(milliseconds: 80));
          final len2 = await entry.length();
          if (len1 == len2) cached = entry;
          break;
        }
      }
    }
    if (cached == null) return null;

    return _copyIntoFontsDir(cached.path, '$family.ttf');
  }
}
