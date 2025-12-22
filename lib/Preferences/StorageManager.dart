import 'dart:developer' as Logger;
import 'dart:io';

import 'package:dartotsu/Logger.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import 'PrefManager.dart';

class StorageManager {
  /// Gets the application directory based on platform and user preferences.
  /// - [subPath]: Optional subdirectory to append to the base path.
  /// - [useCustomPath]: If true, uses the user-defined custom path.
  /// - [useSystemPath]: If true, uses the system default path. only Android
  /// Returns the directory or null if an error occurs.
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
        if (!dir.existsSync()) {
          await dir.create(recursive: true);
        }
        return dir;
      }

      String withAppRoot(String base) =>
          base.endsWith('Dartotsu') ? base : path.join(base, 'Dartotsu');

      if (isApple) {
        return ensureDir(
          path.join(appDir.path, 'Dartotsu', subPath ?? ''),
        );
      }

      if (Platform.isAndroid) {
        final hasPermission = await hasStoragePermission();

        if (!hasPermission || useSystemPath) {
          final base = withAppRoot(appDir.path);
          return ensureDir(path.join(base, subPath ?? ''));
        }

        final emulatedRoot = await getEmulatedRoot();
        logger('[Storage] emulated root = $emulatedRoot');

        final basePath = customPath.isNotEmpty
            ? withAppRoot(customPath)
            : withAppRoot(emulatedRoot);

        return ensureDir(path.join(basePath, subPath ?? ''));
      }

      final base = customPath.isNotEmpty ? customPath : appDir.path;
      return ensureDir(
        path.join(withAppRoot(base), subPath ?? ''),
      );
    } catch (e) {
      Logger.log('Error getting directory: $e');
      return await getApplicationDocumentsDirectory();
    }
  }

  /// Gets the temporary directory for the application.
  /// Returns the temporary directory or null if an error occurs.
  static Future<Directory?> getTmpDirectory() async {
    final defaultDirectory = await getDirectory();
    String dbDir = path.join(defaultDirectory!.path, 'tmp');
    await Directory(dbDir).create(recursive: true);
    return Directory(dbDir);
  }

  /// Retrieves the emulated root path on Android devices.
  static Future<String> getEmulatedRoot() async {
    try {
      final dir = await getExternalStorageDirectory();
      final pathStr = dir?.path ?? '';

      final match = RegExp(r'/storage/emulated/(\d+)/').firstMatch(pathStr);

      return match != null
          ? '/storage/emulated/${match.group(1)}'
          : '/storage/emulated/0';
    } catch (_) {
      return '/storage/emulated/0';
    }
  }

  /// Requests storage permissions on Android devices.
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

  /// Requests storage permissions on Android devices.
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
