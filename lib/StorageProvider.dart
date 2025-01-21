import 'dart:io';

import 'package:dantotsu/api/Mangayomi/Model/settings.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:isar/isar.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'api/Mangayomi/Eval/dart/model/source_preference.dart';
import 'api/Mangayomi/Model/Manga.dart';
import 'api/Mangayomi/Model/Source.dart';
import 'api/Mangayomi/Model/chapter.dart';

class StorageProvider {
  Future<bool> requestPermission() async {
    if (!Platform.isAndroid) {
      return true;
    }

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;
    if (androidInfo.version.sdkInt <= 29) {
      final storagePermission = Permission.storage;
      if (await storagePermission.isGranted) {
        return true;
      }
      final storageStatus = await storagePermission.request();
      return storageStatus.isGranted;
    }

    final manageStoragePermission = Permission.manageExternalStorage;
    if (await manageStoragePermission.isGranted) {
      return true;
    }
    final manageStorageStatus = await manageStoragePermission.request();
    return manageStorageStatus.isGranted;
  }

  Future<bool> videoPermission() async {
    if (Platform.isAndroid) {
      if (await Permission.videos.isDenied ||
          await Permission.videos.isPermanentlyDenied) {
        final state = await Permission.videos.request();
        if (!state.isGranted) {
          return false;
        }
      }
      return true;
    }
    return true;
  }

  Future<Directory?> getDirectory({
    String? subPath,
    String customPath = '',
    bool useCustomPath = false,
  }) async {
    final appDir = await getApplicationDocumentsDirectory();
    String basePath;

    String determineCustomPath(String customPath) {
      if (customPath.isNotEmpty && !customPath.endsWith('Dartotsu')) {
        return path.join(customPath, 'Dartotsu');
      }
      return customPath.isNotEmpty ? customPath : "/storage/emulated/0/Dartotsu";
    }

    if (Platform.isIOS || Platform.isMacOS) {
      final dbDir = path.join(appDir.path, 'Dartotsu', subPath ?? '').fixSeparator;
      await Directory(dbDir).create(recursive: true);
      return Directory(dbDir);
    }

    if (Platform.isAndroid) {
      final androidInfo = await DeviceInfoPlugin().androidInfo;

      if (androidInfo.version.sdkInt <= 29) {
        final dir = Directory(
          (useCustomPath ? determineCustomPath(customPath) : appDir.path).fixSeparator,
        );
        dir.createSync(recursive: true);
        return dir;
      }

      basePath = useCustomPath ? determineCustomPath(customPath) : appDir.path;
    } else {
      var p = path.join(
        useCustomPath ? customPath : appDir.path,
      );
      basePath = path.join(p, p.endsWith('Dartotsu') ? '' : 'Dartotsu');
    }

    final baseDirectory = Directory(basePath.fixSeparator);
    if (!baseDirectory.existsSync()) {
      baseDirectory.createSync(recursive: true);
    }

    final fullPath = path.join(basePath, subPath ?? '');
    final fullDirectory = Directory(fullPath.fixSeparator);

    if (subPath?.isNotEmpty == true && !fullDirectory.existsSync()) {
      fullDirectory.createSync(recursive: true);
    }

    return fullDirectory;
  }

  Future<Isar> initDB(String? path, {bool inspector = false}) async {
    Directory? dir;
    if (path == null) {
      dir = await getDirectory(subPath: 'databases');
    } else {
      dir = Directory(path);
    }

    final isar = Isar.openSync([
      MangaSchema,
      SourceSchema,
      ChapterSchema,
      SettingsSchema,
      SourcePreferenceSchema,
      SourcePreferenceStringValueSchema,
    ], directory: dir!.path, name: "dartotsuDb", inspector: inspector);

    if (isar.settings.filter().idEqualTo(227).isEmptySync()) {
      isar.writeTxnSync(
        () {
          isar.settings.putSync(Settings());
        },
      );
    }

    return isar;
  }
}

extension StringPathExtension on String {
  String get fixSeparator {
    if (Platform.isWindows) {
      return replaceAll("/", path.separator);
    } else {
      return replaceAll("\\", "/");
    }
  }
}
