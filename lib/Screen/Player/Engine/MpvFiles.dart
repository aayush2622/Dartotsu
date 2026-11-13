import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:path/path.dart' as p;

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Preferences/StorageManager.dart';
import '../../../Core/State/State.dart';

const anime4kUrl =
    'https://github.com/bloc97/Anime4K/releases/download/v4.0.1/Anime4K_v4.0.zip';

const shaderProfiles = <String, Map<String, List<String>>>{
  'MID-END': {
    'Anime4K: Mode A (Fast)': [
      'Anime4K_Clamp_Highlights.glsl',
      'Anime4K_Restore_CNN_M.glsl',
      'Anime4K_Upscale_CNN_x2_M.glsl',
    ],
    'Anime4K: Mode B (Fast)': [
      'Anime4K_Clamp_Highlights.glsl',
      'Anime4K_Restore_CNN_Soft_M.glsl',
      'Anime4K_Upscale_CNN_x2_M.glsl',
    ],
    'Anime4K: Mode C (Fast)': [
      'Anime4K_Clamp_Highlights.glsl',
      'Anime4K_Upscale_Denoise_CNN_x2_M.glsl',
    ],
    'Anime4K: Mode A+A (Fast)': [
      'Anime4K_Clamp_Highlights.glsl',
      'Anime4K_Restore_CNN_VL.glsl',
      'Anime4K_Upscale_CNN_x2_VL.glsl',
      'Anime4K_Restore_CNN_M.glsl',
      'Anime4K_Upscale_CNN_x2_M.glsl',
    ],
    'Anime4K: Mode B+B (Fast)': [
      'Anime4K_Clamp_Highlights.glsl',
      'Anime4K_Restore_CNN_Soft_VL.glsl',
      'Anime4K_Upscale_CNN_x2_VL.glsl',
      'Anime4K_Restore_CNN_Soft_M.glsl',
      'Anime4K_Upscale_CNN_x2_M.glsl',
    ],
    'Anime4K: Mode C+A (Fast)': [
      'Anime4K_Clamp_Highlights.glsl',
      'Anime4K_Upscale_Denoise_CNN_x2_VL.glsl',
      'Anime4K_Restore_CNN_M.glsl',
      'Anime4K_Upscale_CNN_x2_M.glsl',
    ],
  },
  'HIGH-END': {
    'Anime4K: Mode A (HQ)': [
      'Anime4K_Clamp_Highlights.glsl',
      'Anime4K_Restore_CNN_VL.glsl',
      'Anime4K_Upscale_CNN_x2_VL.glsl',
      'Anime4K_AutoDownscalePre_x2.glsl',
      'Anime4K_AutoDownscalePre_x4.glsl',
      'Anime4K_Upscale_CNN_x2_M.glsl',
    ],
    'Anime4K: Mode B (HQ)': [
      'Anime4K_Clamp_Highlights.glsl',
      'Anime4K_Restore_CNN_Soft_VL.glsl',
      'Anime4K_Upscale_CNN_x2_VL.glsl',
      'Anime4K_AutoDownscalePre_x2.glsl',
      'Anime4K_AutoDownscalePre_x4.glsl',
      'Anime4K_Upscale_CNN_x2_M.glsl',
    ],
    'Anime4K: Mode C (HQ)': [
      'Anime4K_Clamp_Highlights.glsl',
      'Anime4K_Upscale_Denoise_CNN_x2_VL.glsl',
      'Anime4K_AutoDownscalePre_x2.glsl',
      'Anime4K_AutoDownscalePre_x4.glsl',
      'Anime4K_Upscale_CNN_x2_M.glsl',
    ],
    'Anime4K: Mode A+A (HQ)': [
      'Anime4K_Clamp_Highlights.glsl',
      'Anime4K_Restore_CNN_VL.glsl',
      'Anime4K_Upscale_CNN_x2_VL.glsl',
      'Anime4K_Restore_CNN_M.glsl',
      'Anime4K_AutoDownscalePre_x2.glsl',
      'Anime4K_AutoDownscalePre_x4.glsl',
      'Anime4K_Upscale_CNN_x2_M.glsl',
    ],
    'Anime4K: Mode B+B (HQ)': [
      'Anime4K_Clamp_Highlights.glsl',
      'Anime4K_Restore_CNN_Soft_VL.glsl',
      'Anime4K_Upscale_CNN_x2_VL.glsl',
      'Anime4K_AutoDownscalePre_x2.glsl',
      'Anime4K_AutoDownscalePre_x4.glsl',
      'Anime4K_Restore_CNN_Soft_M.glsl',
      'Anime4K_Upscale_CNN_x2_M.glsl',
    ],
    'Anime4K: Mode C+A (HQ)': [
      'Anime4K_Clamp_Highlights.glsl',
      'Anime4K_Upscale_Denoise_CNN_x2_VL.glsl',
      'Anime4K_AutoDownscalePre_x2.glsl',
      'Anime4K_AutoDownscalePre_x4.glsl',
      'Anime4K_Restore_CNN_M.glsl',
      'Anime4K_Upscale_CNN_x2_M.glsl',
    ],
  },
};

const customShaderProfile = 'CUSTOM';

List<String> shaderFilesOf(String profile, String name, List<String> custom) =>
    profile == customShaderProfile
    ? custom
    : (shaderProfiles[profile]?[name] ?? const []);

String shaderListSeparator({bool? windows}) =>
    (windows ?? Platform.isWindows) ? ';' : ':';

List<String> shaderPaths(
  String shadersDir,
  List<String> files, {
  bool? windows,
}) => [for (final f in files) p.join(shadersDir, f)];

String joinShaders(List<String> paths, {bool? windows}) =>
    paths.join(shaderListSeparator(windows: windows));

class ConfLine {
  final String key;
  final String value;
  const ConfLine(this.key, this.value);
}

List<ConfLine> parseMpvConf(String text) {
  final out = <ConfLine>[];
  String? profile;
  for (final raw in text.split('\n')) {
    var line = raw.trim();
    if (line.isEmpty || line.startsWith('#')) continue;
    if (line.startsWith('[') && line.endsWith(']')) {
      profile = line.substring(1, line.length - 1);
      continue;
    }
    if (profile != null) continue;
    final hash = line.indexOf(' #');
    if (hash > 0) line = line.substring(0, hash).trim();
    final eq = line.indexOf('=');
    var key = eq < 0 ? line : line.substring(0, eq).trim();
    var value = eq < 0 ? 'yes' : line.substring(eq + 1).trim();
    if (key.startsWith('--')) key = key.substring(2);
    if (key.startsWith('no-') && eq < 0) {
      key = key.substring(3);
      value = 'no';
    }
    if (value.length >= 2 &&
        ((value.startsWith('"') && value.endsWith('"')) ||
            (value.startsWith("'") && value.endsWith("'")))) {
      value = value.substring(1, value.length - 1);
    }
    if (key.isEmpty) continue;
    out.add(ConfLine(key, value));
  }
  return out;
}

const scriptExtensions = {'.lua', '.js', '.so', '.dll', '.dylib'};

const shaderExtensions = {'.glsl', '.hook'};

class MpvFiles {
  MpvFiles._();

  static final shadersVersion = 0.live;
  static final scriptsVersion = 0.live;
  static final installing = false.live;
  static final installProgress = 0.0.live;

  static Directory? _root;

  static Future<Directory> root() async {
    final cached = _root;
    if (cached != null) return cached;
    final base = await StorageManager.getDirectory(
      subPath: 'mpv',
      useSystemPath: false,
      useCustomPath: true,
    );
    final dir = base ?? Directory(p.join(Directory.systemTemp.path, 'mpv'));
    await dir.create(recursive: true);
    return _root = dir;
  }

  static Future<Directory> _sub(String name) async {
    final dir = Directory(p.join((await root()).path, name));
    await dir.create(recursive: true);
    return dir;
  }

  static Future<Directory> shadersDir() => _sub('Shaders');

  static Future<Directory> scriptsDir() => _sub('scripts');

  static Future<File> confFile() async {
    final file = File(p.join((await root()).path, 'mpv.conf'));
    if (!await file.exists()) await file.writeAsString('');
    return file;
  }

  static Future<String> readConf() async => (await confFile()).readAsString();

  static Future<void> writeConf(String text) async =>
      (await confFile()).writeAsString(text);

  static Future<List<String>> shaders() async {
    final dir = await shadersDir();
    final names = <String>[
      await for (final e in dir.list())
        if (e is File &&
            shaderExtensions.contains(p.extension(e.path).toLowerCase()))
          p.basename(e.path),
    ]..sort();
    return names;
  }

  static Future<List<String>> missing(List<String> files) async {
    final have = (await shaders()).toSet();
    return [
      for (final f in files)
        if (!have.contains(f)) f,
    ];
  }

  static Future<bool> anime4kInstalled() async {
    final have = (await shaders()).toSet();
    return have.contains('Anime4K_Clamp_Highlights.glsl') &&
        have.contains('Anime4K_Upscale_CNN_x2_M.glsl');
  }

  static Future<void> installAnime4K() async {
    if (installing.value) return;
    installing.value = true;
    installProgress.value = 0;
    final tmp = File(p.join((await root()).path, 'anime4k.zip'));
    try {
      await find<NetworkManager>().download(
        anime4kUrl,
        tmp.path,
        onProgress: (received, total) {
          if (total > 0) installProgress.value = received / total;
        },
      );
      final dir = await shadersDir();
      final archive = ZipDecoder().decodeBytes(await tmp.readAsBytes());
      for (final entry in archive) {
        if (!entry.isFile) continue;
        final name = p.basename(entry.name);
        if (!shaderExtensions.contains(p.extension(name).toLowerCase())) {
          continue;
        }
        await File(p.join(dir.path, name)).writeAsBytes(entry.content);
      }
      shadersVersion.value++;
    } finally {
      installing.value = false;
      if (await tmp.exists()) await tmp.delete();
    }
  }

  static Future<void> importShader(String path) async {
    final dir = await shadersDir();
    await File(path).copy(p.join(dir.path, p.basename(path)));
    shadersVersion.value++;
  }

  static Future<void> deleteShader(String name) async {
    final file = File(p.join((await shadersDir()).path, name));
    if (await file.exists()) await file.delete();
    shadersVersion.value++;
  }

  static Future<List<String>> scripts() async {
    final dir = await scriptsDir();
    final names = <String>[
      await for (final e in dir.list())
        if (e is File &&
            scriptExtensions.contains(p.extension(e.path).toLowerCase()))
          p.basename(e.path),
    ]..sort();
    return names;
  }

  static Future<void> importScript(String path) async {
    final dir = await scriptsDir();
    await File(path).copy(p.join(dir.path, p.basename(path)));
    scriptsVersion.value++;
  }

  static Future<void> deleteScript(String name) async {
    final file = File(p.join((await scriptsDir()).path, name));
    if (await file.exists()) await file.delete();
    scriptsVersion.value++;
  }

  static Future<List<String>> scriptPaths(List<String> disabled) async {
    final dir = await scriptsDir();
    return [
      for (final name in await scripts())
        if (!disabled.contains(name)) p.join(dir.path, name),
    ];
  }
}
