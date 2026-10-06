import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

class BackupFile {
  final String path;
  final int size;
  final Map<String, dynamic> json;

  const BackupFile._(this.path, this.size, this.json);

  static Future<BackupFile> open(String path) async {
    final text = await File(path).readAsString();
    final json = (jsonDecode(text) as Map).cast<String, dynamic>();
    return BackupFile._(path, utf8.encode(text).length, json);
  }

  String get name => p.basename(path);

  bool get protected => json['passwordType'] == 'custom';

  String? text(String key) => json[key]?.toString();

  Map<String, String> get accounts {
    final raw = json['accounts'];
    if (raw is! Map) return const {};
    return {for (final e in raw.entries) '${e.key}': '${e.value}'};
  }
}
