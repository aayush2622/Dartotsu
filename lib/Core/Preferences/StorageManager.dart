import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'PrefManager.dart';
import '../../Logger.dart';

class StorageManager {

  static Future<Directory?> getDirectory({
    String? subPath,
    bool useCustomPath = false,
    bool useSystemPath = true,
  }) async {
    try {
      final appDir = await getApplicationDocumentsDirectory();
      final customPath = useCustomPath ? loadData(PrefName.customPath) : '';
      final isApple = Platform.isIOS || Platform.isMacOS;

      Future<Directory> ensureDir(String path) async {
        final dir = Directory(path.fixSeparator);
        if (!await dir.exists()) {
          await dir.create(recursive: true);
        }
        return dir;
      }

      String withAppRoot(String base) =>
          base.endsWith('Dartotsu') ? base : path.join(base, 'Dartotsu');

      if (isApple) {
        return await ensureDir(
          path.join(appDir.path, 'Dartotsu', subPath ?? ''),
        );
      }

      if (Platform.isAndroid) {
        final hasPermission = await requestPermission();

        if (!hasPermission || useSystemPath) {
          final base = withAppRoot(appDir.path);
          return await ensureDir(path.join(base, subPath ?? ''));
        }

        final emulatedRoot = await getEmulatedRoot();


        final basePath = customPath.isNotEmpty
            ? withAppRoot(customPath)
            : withAppRoot(emulatedRoot);

        return await ensureDir(path.join(basePath, subPath ?? ''));
      }

      final base = customPath.isNotEmpty ? customPath : appDir.path;
      return await ensureDir(path.join(withAppRoot(base), subPath ?? ''));
    } catch (e) {
      logger('Error getting directory: $e', logLevel: LogLevel.error);
      return await getApplicationDocumentsDirectory();
    }
  }

  static Future<Directory?> getTmpDirectory() async {
    final defaultDirectory = await getDirectory();
    String dbDir = path.join(defaultDirectory!.path, 'tmp');
    await Directory(dbDir).create(recursive: true);
    return Directory(dbDir);
  }


  static Future<String> getEmulatedRoot() async {
    try {
      final dir = await getExternalStorageDirectory();
      final pathStr = dir?.path ?? '';

      final match = RegExp(r'/storage/emulated/(\d+)/').firstMatch(pathStr);

      return match != null
          ? '/storage/emulated/${match.group(1)}'
          : '/storage/emulated/0';
    } catch (e, st) {
      logError('StorageManager', e, st);
      return '/storage/emulated/0';
    }
  }

  static Future<bool> requestPermission() async {
    if (!Platform.isAndroid) return true;

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;
    if (androidInfo.version.sdkInt <= 29) {
      final storagePermission = Permission.storage;
      if (await storagePermission.isGranted) return true;
      final storageStatus = await storagePermission.request();
      return storageStatus.isGranted;
    }

    final manageStoragePermission = Permission.manageExternalStorage;

    if (await manageStoragePermission.isGranted) return true;
    final manageStorageStatus = await manageStoragePermission.request();
    return manageStorageStatus.isGranted;
  }


  static Future<bool> hasStoragePermission() async {
    if (!Platform.isAndroid) return true;

    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;
    if (androidInfo.version.sdkInt <= 29) {
      final storagePermission = Permission.storage;
      return await storagePermission.isGranted;
    }

    final manageStoragePermission = Permission.manageExternalStorage;

    return await manageStoragePermission.isGranted;
  }

  static Future<bool> videoPermission() async {
    if (!Platform.isAndroid) return true;
    if (await Permission.videos.isDenied ||
        await Permission.videos.isPermanentlyDenied) {
      final state = await Permission.videos.request();
      return state.isGranted;
    }
    return true;
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
