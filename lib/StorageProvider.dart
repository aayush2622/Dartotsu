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
    bool? useCustomPath = false,
  }) async {
    String basePath;
    final appDir = await getApplicationDocumentsDirectory();

    if (Platform.isIOS || Platform.isMacOS) {
      final dbDir = path.join(appDir.path, 'Dartotsu', subPath ?? '').fixSeparator;
      await Directory(dbDir).create(recursive: true);
      return Directory(dbDir);
    }

    if (Platform.isAndroid) {
      basePath = useCustomPath == true
          ? (customPath.isNotEmpty && !customPath.endsWith('Dartotsu'))
              ? path.join(customPath, 'Dartotsu')
              : customPath.isNotEmpty
                  ? customPath
                  : "/storage/emulated/0/Dartotsu"
          : appDir.path;
    } else {
      basePath = path.join(
        useCustomPath == true
            ? (customPath.isNotEmpty)
                ? customPath
                : appDir.path
            : appDir.path,
        !customPath.endsWith('Dartotsu') ? 'Dartotsu' : '',
      );
    }

    final baseDirectory = Directory(basePath.fixSeparator);
    if (!baseDirectory.existsSync()) {
      baseDirectory.createSync(recursive: true);
    }

    final fullPath = path.join(basePath, subPath ?? '');
    final fullDirectory = Directory(fullPath.fixSeparator);

    if (subPath != null && subPath.isNotEmpty && !fullDirectory.existsSync()) {
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
