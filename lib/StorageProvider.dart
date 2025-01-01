import 'dart:io';

import 'package:dartotsu/api/Mangayomi/Model/settings.dart';
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
    if (Platform.isAndroid) {
      if (await Permission.manageExternalStorage.isGranted) {
        return true;
      } else {
        final result = await Permission.manageExternalStorage.request();
        if (result == PermissionStatus.granted) {
          return true;
        }
        return false;
      }
    }
    return true;
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
  Future<Directory?> getDatabaseDirectory() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Platform.isAndroid || Platform.isIOS || Platform.isMacOS) {
      return dir;
    } else {
      String dbDir = path.join(dir.path, 'Dartotsu', 'databases');
      await Directory(dbDir).create(recursive: true);
      return Directory(dbDir);
    }
  }

  Future<Isar> initDB(String? path, {bool inspector = false}) async {
    Directory? dir;
    if (path == null) {
      dir = await getDatabaseDirectory();
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
