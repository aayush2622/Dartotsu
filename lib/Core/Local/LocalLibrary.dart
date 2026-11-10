import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart'
    show ItemType;
import 'package:dartotsu_extension_bridge/downloads.dart';
import 'package:dartotsu_extension_bridge/toolkit.dart';
import 'package:path/path.dart' as p;

import '../../Logger.dart';
import '../State/State.dart';

const localFolderName = 'other';

const _bookExtensions = {'epub', 'txt', 'html', 'htm', 'xhtml'};
const _coverNames = {'cover', 'poster', 'folder', 'thumb', 'thumbnail'};

class LocalUnit {
  final String name;
  final String path;
  final double number;
  final String? group;
  final int modified;

  const LocalUnit({
    required this.name,
    required this.path,
    required this.number,
    this.group,
    this.modified = 0,
  });
}

class LocalTitle {
  final String name;
  final String path;
  final ItemType type;
  final List<LocalUnit> units;
  final String? cover;

  const LocalTitle({
    required this.name,
    required this.path,
    required this.type,
    required this.units,
    this.cover,
  });
}

class LocalLibrary {
  LocalLibrary._();

  static final version = 0.live;
  static final _titles = <ItemType, List<LocalTitle>>{};
  static Future<void>? _running;

  static List<LocalTitle> titles(ItemType type) => _titles[type] ?? const [];

  static bool has(ItemType type) {
    version.value;
    return titles(type).isNotEmpty;
  }

  static Future<String> folder() async {
    final root = await DownloadPaths.root();
    return p.join(root.path, localFolderName);
  }

  static Future<void> refresh() =>
      _running ??= _scan().whenComplete(() => _running = null);

  static Future<void> _scan() async {
    try {
      final path = await folder();
      final dir = Directory(path);
      if (!await dir.exists()) await dir.create(recursive: true);
      final found = await Isolate.run(() => scanLocalFolder(path));
      final next = <ItemType, List<LocalTitle>>{};
      for (final title in found) {
        (next[title.type] ??= []).add(title);
      }
      final changed = _signature(next) != _signature(_titles);
      _titles
        ..clear()
        ..addAll(next);
      if (changed) version.value++;
    } catch (e, st) {
      logError('LocalLibrary', e, st);
    }
  }

  static String _signature(Map<ItemType, List<LocalTitle>> map) => [
    for (final e in map.entries)
      for (final t in e.value)
        '${e.key.name}|${t.path}|${t.units.length}|${t.cover}',
  ].join('\n');

  static Future<LocalTitle?> read(String path) async {
    try {
      return await Isolate.run(() => scanLocalTitle(Directory(path)));
    } catch (e, st) {
      logError('LocalLibrary', e, st);
      return null;
    }
  }
}

enum _Kind { anime, manga, novel }

String _ext(String path) =>
    p.extension(path).replaceFirst('.', '').toLowerCase();

bool _hidden(String path) {
  final name = p.basename(path);
  return name.startsWith('.') || name == 'media.json' || name == 'Thumbs.db';
}

bool _isVideo(String path) => videoExtensions.contains(_ext(path));

bool _isImage(String path) => imageExtensions.contains(_ext(path));

bool _isBook(String path) => _bookExtensions.contains(_ext(path));

bool _isArchive(String path) => isComicArchive(path) || isPdfFile(path);

_Kind? _kindOfFile(String path) {
  if (_isVideo(path)) return _Kind.anime;
  if (_isArchive(path)) return _Kind.manga;
  if (_isBook(path)) return _Kind.novel;
  return null;
}

List<LocalTitle> scanLocalFolder(String root) {
  final dir = Directory(root);
  if (!dir.existsSync()) return const [];
  final out = <LocalTitle>[];
  final entries = dir.listSync().whereType<Directory>().toList()
    ..sort((a, b) => naturalCompare(a.path, b.path));
  for (final entry in entries) {
    if (_hidden(entry.path)) continue;
    final title = scanLocalTitle(entry);
    if (title != null) out.add(title);
  }
  return out;
}

LocalTitle? scanLocalTitle(Directory dir) {
  if (!dir.existsSync()) return null;
  final found = <(_Kind, LocalUnit)>[];
  _collect(dir, found, 0, null);
  if (found.isEmpty) return null;
  final counts = <_Kind, int>{};
  for (final (kind, _) in found) {
    counts[kind] = (counts[kind] ?? 0) + 1;
  }
  final kind = _Kind.values.reduce(
    (a, b) => (counts[b] ?? 0) > (counts[a] ?? 0) ? b : a,
  );
  final units = [
    for (final (k, u) in found)
      if (k == kind) u,
  ];
  _number(units);
  return LocalTitle(
    name: p.basename(dir.path),
    path: dir.path,
    type: switch (kind) {
      _Kind.anime => ItemType.anime,
      _Kind.manga => ItemType.manga,
      _Kind.novel => ItemType.novel,
    },
    units: units,
    cover: _cover(dir, units, kind),
  );
}

void _number(List<LocalUnit> units) {
  units.sort((a, b) => naturalCompare(a.path, b.path));
  var next = 1;
  for (var i = 0; i < units.length; i++) {
    final u = units[i];
    final named = u.number > 0;
    final number = named ? u.number : next.toDouble();
    next = named ? number.floor() + 1 : next + 1;
    units[i] = LocalUnit(
      name: u.name,
      path: u.path,
      number: number,
      group: u.group,
      modified: u.modified,
    );
  }
  units.sort((a, b) {
    final c = a.number.compareTo(b.number);
    return c != 0 ? c : naturalCompare(a.path, b.path);
  });
}

double _numberOf(String name) => episodeNumberOf(name) ?? 0;

int _modified(String path) {
  try {
    return File(path).statSync().modified.millisecondsSinceEpoch;
  } catch (_) {
    return 0;
  }
}

void _collect(
  Directory dir,
  List<(_Kind, LocalUnit)> out,
  int depth,
  String? group,
) {
  final entries = dir.listSync()
    ..sort((a, b) => naturalCompare(a.path, b.path));
  for (final entity in entries) {
    if (_hidden(entity.path)) continue;
    if (entity is File) {
      final kind = _kindOfFile(entity.path);
      if (kind == null) continue;
      out.add((kind, _fileUnit(entity.path, group)));
    } else if (entity is Directory) {
      _folder(entity, out, depth, group);
    }
  }
}

LocalUnit _fileUnit(String path, String? group) => LocalUnit(
  name: p.basenameWithoutExtension(path),
  path: path,
  number: _numberOf(p.basename(path)),
  group: group,
  modified: _modified(path),
);

void _folder(
  Directory dir,
  List<(_Kind, LocalUnit)> out,
  int depth,
  String? group,
) {
  final files = [
    for (final e in dir.listSync())
      if (e is File && !_hidden(e.path)) e.path,
  ];
  final videos = files.where(_isVideo).toList();
  final images = files.where(_isImage).toList();
  final archives = files.where(_isArchive).toList();
  final books = files.where(_isBook).toList();
  final name = p.basename(dir.path);

  void unit(_Kind kind, {String? at}) => out.add((
    kind,
    LocalUnit(
      name: name,
      path: at ?? dir.path,
      number: _numberOf(name),
      group: group,
      modified: _modified(at ?? dir.path),
    ),
  ));

  void each(_Kind kind, List<String> list) {
    for (final f in list) {
      out.add((kind, _fileUnit(f, name)));
    }
  }

  if (videos.length == 1) return unit(_Kind.anime);
  if (videos.length > 1) return each(_Kind.anime, videos);
  if (images.isNotEmpty) return unit(_Kind.manga);
  if (archives.length == 1) return unit(_Kind.manga, at: archives.single);
  if (archives.length > 1) return each(_Kind.manga, archives);
  if (books.length == 1) return unit(_Kind.novel, at: books.single);
  if (books.length > 1) return each(_Kind.novel, books);
  if (depth < 3) _collect(dir, out, depth + 1, group ?? name);
}

String? _cover(Directory dir, List<LocalUnit> units, _Kind kind) {
  for (final e in dir.listSync()) {
    if (e is! File || !_isImage(e.path)) continue;
    if (_coverNames.contains(
      p.basenameWithoutExtension(e.path).toLowerCase(),
    )) {
      return e.path;
    }
  }
  if (kind == _Kind.manga && units.isNotEmpty) {
    final first = units.first.path;
    if (FileSystemEntity.isDirectorySync(first)) {
      final pages = pageFilesIn(Directory(first))
        ..sort((a, b) => naturalCompare(a.path, b.path));
      if (pages.isNotEmpty) return pages.first.path;
    }
  }
  return null;
}
