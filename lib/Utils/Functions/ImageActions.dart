import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;

import 'package:dartotsu_extension_bridge/downloads.dart';

import '../../Core/NetworkManager/NetworkManager.dart';
import '../../Core/Preferences/StorageManager.dart';
import '../../Core/State/State.dart';
import '../../Logger.dart';

String imageFileName(String name) {
  final clean = name
      .replaceAll(RegExp(r'[\\/:*?"<>|]'), ' ')
      .replaceAll(RegExp(r'\s+'), ' ')
      .trim();
  return clean.isEmpty ? 'image' : clean;
}

Future<File> _namedTarget(File source, String name) async {
  final temp = (await StorageManager.getTmpDirectory())!;
  final head = await source.openRead(0, 16).expand((b) => b).toList();
  final ext = sniffImageExtension(head) ?? 'jpg';
  final target = File(p.join(temp.path, '${imageFileName(name)}.$ext'));
  if (await target.exists()) await target.delete();
  return target;
}

Future<File> downloadImage(String url, {required String name}) async {
  final temp = (await StorageManager.getTmpDirectory())!;
  final part = File(p.join(temp.path, 'img_${url.hashCode.abs()}.part'));
  await find<NetworkManager>().download(url, part.path);
  return part.rename((await _namedTarget(part, name)).path);
}

Future<File> namedImageCopy(File source, {required String name}) async =>
    source.copy((await _namedTarget(source, name)).path);

const _media = MethodChannel('dartotsu/media');

String _mime(String ext) => switch (ext.toLowerCase()) {
  '.png' => 'image/png',
  '.webp' => 'image/webp',
  '.gif' => 'image/gif',
  '.avif' => 'image/avif',
  _ => 'image/jpeg',
};

Future<String> saveImageFile(File source, {required String name}) async {
  final ext = p.extension(source.path);
  final base = imageFileName(name);
  if (Platform.isAndroid && !await StorageManager.hasStoragePermission()) {
    try {
      final saved = await _media.invokeMethod<String>('saveToDownloads', {
        'path': source.path,
        'name': '$base$ext',
        'mime': _mime(ext),
      });
      if (saved != null) return saved;
    } on PlatformException catch (e) {
      logger('Save to Downloads failed: ${e.message}', tag: 'IMAGE');
    }
  }
  final dir = await StorageManager.getDirectory(
    subPath: 'images',
    useCustomPath: true,
    useSystemPath: false,
  );
  if (dir == null) throw const FileSystemException('No storage available');
  var target = File(p.join(dir.path, '$base$ext'));
  for (var i = 2; await target.exists(); i++) {
    target = File(p.join(dir.path, '$base ($i)$ext'));
  }
  return (await source.copy(target.path)).path;
}
