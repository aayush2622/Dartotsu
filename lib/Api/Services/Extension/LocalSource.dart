import 'dart:io';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:dartotsu_extension_bridge/downloads.dart';
import 'package:dartotsu_extension_bridge/toolkit.dart';
import 'package:dartotsu_extension_bridge/Models/SourceFilter.dart';
import 'package:path/path.dart' as p;

import '../../../Core/Downloads/DownloadScanner.dart';
import '../../../Core/Downloads/PdfPages.dart';
import '../../../Core/Local/LocalLibrary.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';

const localSourcePrefix = 'local:';

class LocalSource extends Source implements SourceMethods {
  LocalSource(ItemType type)
    : super(
        id: '$localSourcePrefix${type.name}',
        name: getString.localSource,
        lang: '',
        iconUrl: '',
        itemType: type,
        version: '1',
        versionLast: '1',
      );

  static LocalSource? byId(String id) {
    if (!id.startsWith(localSourcePrefix)) return null;
    final name = id.substring(localSourcePrefix.length);
    final type = ItemType.values.where((t) => t.name == name).firstOrNull;
    return type == null || !LocalLibrary.has(type) ? null : LocalSource(type);
  }

  @override
  Source get source => this;

  ItemType get _type => itemType ?? ItemType.manga;

  Future<Pages> _list(String query) async {
    await LocalLibrary.refresh();
    final words = _words(query);
    final scored = <(int, LocalTitle)>[];
    for (final title in LocalLibrary.titles(_type)) {
      scored.add((_score(_words(title.name), words), title));
    }
    scored.sort((a, b) => b.$1.compareTo(a.$1));
    return Pages(
      list: [
        for (final (_, t) in scored)
          DMedia(title: t.name, url: t.path, cover: t.cover),
      ],
    );
  }

  @override
  Future<Pages> getPopular(int page) => _list('');

  @override
  Future<Pages> getLatestUpdates(int page) => _list('');

  @override
  Future<List<SourceFilter>> getFilterList() async => [];

  @override
  Future<Pages> search(String query, int page, List<dynamic> filters) =>
      _list(query);

  @override
  Future<DMedia> getDetail(DMedia media) async {
    final path = media.url ?? '';
    final title = await LocalLibrary.read(path);
    if (title == null) throw Exception(getString.localMissing);
    final episodes = [
      for (final u in title.units.reversed)
        DEpisode(
          url: u.path,
          name: u.name,
          episodeNumber: unitKeyOf(u.number),
          scanlator: u.group,
          dateUpload: u.modified == 0 ? null : '${u.modified}',
        ),
    ];
    return DMedia(
      title: title.name,
      url: title.path,
      cover: title.cover,
      episodes: episodes,
    );
  }

  @override
  Future<List<Video>> getVideoList(DEpisode episode) async => [
    await videoAt(episode.url ?? '', episode.name),
  ];

  static Future<Video> videoAt(String path, String? name) async {
    final file = FileSystemEntity.isDirectorySync(path)
        ? _firstVideo(Directory(path))
        : path;
    if (file == null || !File(file).existsSync()) {
      throw Exception(getString.localMissing);
    }
    final base = p.basenameWithoutExtension(file);
    final siblings = Directory(p.dirname(file))
        .listSync()
        .whereType<File>()
        .map((f) => f.path)
        .toList();
    final videos = siblings.where(isVideoFile).length;
    final subtitles = [
      for (final s in siblings)
        if (isSubtitleFile(s) &&
            (videos <= 1 || p.basenameWithoutExtension(s).startsWith(base)))
          Track(
            file: Uri.file(s).toString(),
            label: p.basenameWithoutExtension(s),
          ),
    ];
    return Video(name, file, getString.localSource, subtitles: subtitles);
  }

  static String? _firstVideo(Directory dir) {
    final files =
        dir
            .listSync()
            .whereType<File>()
            .map((f) => f.path)
            .where(isVideoFile)
            .toList()
          ..sort(naturalCompare);
    return files.firstOrNull;
  }

  @override
  Stream<List<Video>> getVideoStream(DEpisode episode) async* {
    yield await getVideoList(episode);
  }

  @override
  Future<List<PageUrl>> getPageList(DEpisode episode) async {
    final path = episode.url ?? '';
    if (isPdfFile(path)) {
      final pages = await renderPdf(path, archiveCache(path));
      return [for (final f in pages) PageUrl(f)];
    }
    if (isComicArchive(path)) {
      final pages = await extractComic(path, archiveCache(path));
      return [for (final f in pages) PageUrl(f)];
    }
    final files = pageFilesIn(Directory(path))
      ..sort((a, b) => naturalCompare(a.path, b.path));
    if (files.isEmpty) throw Exception(getString.localMissing);
    return [for (final f in files) PageUrl(f.path)];
  }

  @override
  Future<String?> getNovelContent(DEpisode episode) async {
    var path = episode.url ?? '';
    if (FileSystemEntity.isDirectorySync(path)) {
      final books =
          Directory(path)
              .listSync()
              .whereType<File>()
              .map((f) => f.path)
              .where(
                (f) => const {
                  'epub',
                  'txt',
                  'html',
                  'htm',
                  'xhtml',
                }.contains(p.extension(f).replaceFirst('.', '').toLowerCase()),
              )
              .toList()
            ..sort(naturalCompare);
      if (books.isEmpty) throw Exception(getString.localMissing);
      path = books.first;
    }
    final text = await readBookText(path);
    if (p.extension(path).toLowerCase() != '.txt') return text;
    return [
      for (final line in text.split(RegExp(r'\r?\n')))
        if (line.trim().isNotEmpty)
          '<p>${line.trim().replaceAll('&', '&amp;').replaceAll('<', '&lt;')}</p>',
    ].join('\n');
  }

  @override
  Future<List<SourcePreference>> getPreference() async => [];

  @override
  Future<bool> setPreference(SourcePreference pref, dynamic value) async =>
      false;

  @override
  Future<bool> openNativeSettings() async => false;
}

List<String> _words(String text) => text
    .toLowerCase()
    .split(RegExp(r'[^\p{L}\p{N}]+', unicode: true))
    .where((w) => w.isNotEmpty)
    .toList();

int _score(List<String> title, List<String> query) {
  if (query.isEmpty) return 0;
  final joined = title.join(' ');
  var score = 0;
  for (final w in query) {
    if (title.contains(w)) {
      score += 3;
    } else if (joined.contains(w)) {
      score += 1;
    }
  }
  if (joined == query.join(' ')) score += 10;
  return score;
}
