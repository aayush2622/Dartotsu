import 'dart:io';

import 'package:archive/archive.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/foundation.dart';

import '../../Services/MediaService.dart';
import '../../Services/Model/Anime.dart';
import '../../Services/Model/Manga.dart';
import '../../Services/Model/Media.dart';
import 'ExternalList.dart';
import 'KotatsuCodec.dart';
import 'TachiyomiCodec.dart';

class ImportSummary {
  final int anime;
  final int manga;
  final int skipped;

  const ImportSummary({this.anime = 0, this.manga = 0, this.skipped = 0});

  int get total => anime + manga;
}

ExternalLists parseExternalBytes(Uint8List bytes) {
  if (bytes.length >= 2 && bytes[0] == 0x1f && bytes[1] == 0x8b) {
    return TachiyomiCodec.parse(bytes);
  }
  if (bytes.length >= 4 && bytes[0] == 0x50 && bytes[1] == 0x4b) {
    final archive = ZipDecoder().decodeBytes(bytes);
    if (KotatsuCodec.matches(archive)) return KotatsuCodec.parse(archive);
    throw const FormatException(
      'This zip is not a Kotatsu backup (no favourites found)',
    );
  }
  throw const FormatException('Unsupported backup file');
}

Future<ExternalLists> parseExternalFile(Uint8List bytes) =>
    compute(parseExternalBytes, bytes);

class ExternalListService {
  ExternalListService._();

  static String idFor(ExternalItem item) =>
      '${item.anime ? 'a' : 'm'}:${item.key}';

  static String _statusString(int status) => switch (status) {
    1 => 'RELEASING',
    2 || 3 || 4 => 'FINISHED',
    5 => 'CANCELLED',
    6 => 'HIATUS',
    _ => 'NOT_YET_RELEASED',
  };

  static int _statusCode(String? status) => switch (status) {
    'RELEASING' => 1,
    'FINISHED' => 2,
    'CANCELLED' => 5,
    'HIATUS' => 6,
    _ => 0,
  };

  static String _userStatus(ExternalItem item) {
    for (final raw in item.categories) {
      final c = raw.toLowerCase();
      if (RegExp(r'complet|finish|done').hasMatch(c)) return 'COMPLETED';
      if (RegExp(
        r'plan|want|later|queue|backlog|to (read|watch)',
      ).hasMatch(c)) {
        return 'PLANNING';
      }
      if (c.contains('drop')) return 'DROPPED';
      if (RegExp(r'hold|pause').hasMatch(c)) return 'PAUSED';
    }
    if (item.total > 0 && item.read >= item.total) return 'COMPLETED';
    if (item.read > 0) return 'CURRENT';
    return item.categories.isEmpty ? 'PLANNING' : 'CURRENT';
  }

  static Media toMedia(ExternalItem item, {Source? source}) {
    final updated = item.lastUpdated > 0
        ? item.lastUpdated
        : (item.dateAdded > 0 ? item.dateAdded : null);
    return Media(
      id: idFor(item),
      name: item.title,
      nameRomaji: item.title,
      cover: item.cover,
      description: item.description,
      genres: item.genres,
      status: _statusString(item.status),
      userStatus: _userStatus(item),
      userProgress: item.read,
      userUpdatedAt: updated,
      shareLink: item.url,
      sourceData: source,
      anime: item.anime ? Anime(totalEpisodes: item.total) : null,
      manga: item.anime ? null : Manga(totalChapters: item.total),
    );
  }

  static ImportSummary import(
    MediaService service,
    ExternalLists lists, {
    required bool anime,
    required bool manga,
    required bool merge,
    Source? Function(ExternalItem item, ExternalLists lists)? sourceFor,
  }) {
    var a = 0;
    var m = 0;
    if (anime) {
      a = service.localStore(anime: true).addAll([
        for (final i in lists.anime)
          toMedia(i, source: sourceFor?.call(i, lists)),
      ], merge: merge);
    }
    if (manga) {
      m = service.localStore(anime: false).addAll([
        for (final i in lists.manga)
          toMedia(i, source: sourceFor?.call(i, lists)),
      ], merge: merge);
    }
    final considered =
        (anime ? lists.anime.length : 0) + (manga ? lists.manga.length : 0);
    return ImportSummary(anime: a, manga: m, skipped: considered - a - m);
  }

  static String _categoryFor(Media media) {
    final anime = media.isAnime;
    return switch (media.userStatus) {
      'COMPLETED' => 'Completed',
      'PLANNING' => anime ? 'Plan to watch' : 'Plan to read',
      'PAUSED' => 'On hold',
      'DROPPED' => 'Dropped',
      _ => anime ? 'Watching' : 'Reading',
    };
  }

  static ExternalItem fromMedia(Media media) {
    final id = media.id;
    final url = media.shareLink.isNotEmpty
        ? media.shareLink
        : id.length > 2 && (id.startsWith('a:') || id.startsWith('m:'))
        ? id.substring(2)
        : id;
    final progress = media.userProgress ?? 0;
    final total = media.totalUnits ?? progress;
    return ExternalItem(
      title: media.name ?? media.mainName,
      url: url,
      source: int.tryParse('${media.sourceData?.id}') ?? 0,
      anime: media.isAnime,
      cover: media.cover,
      description: media.description,
      genres: media.genres,
      status: _statusCode(media.status),
      total: total,
      read: progress,
      lastNumber: progress.toDouble(),
      categories: [_categoryFor(media)],
      lastUpdated: media.userUpdatedAt ?? 0,
    );
  }

  static List<Media> localMedia(MediaService service) {
    final seen = <String>{};
    return [
      for (final anime in [true, false])
        for (final m in service.localStore(anime: anime).read())
          if (m.isAnime == anime && seen.add(m.id)) m,
    ];
  }

  static Uint8List export(MediaService service, ExternalFormat format) {
    final items = [for (final m in localMedia(service)) fromMedia(m)];
    switch (format) {
      case ExternalFormat.kotatsu:
        return Uint8List.fromList(KotatsuCodec.write(items));
      case ExternalFormat.aniyomi:
        return TachiyomiCodec.write(items, aniyomi: true);
      case ExternalFormat.mihon:
        return TachiyomiCodec.write(items, aniyomi: false);
    }
  }

  static String fileName(ExternalFormat format) {
    final d = DateTime.now();
    final stamp =
        '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
    return 'dartotsu_${format.name}_$stamp${format.extension}';
  }

  static Future<File> save(
    String directory,
    ExternalFormat format,
    Uint8List bytes,
  ) async {
    final file = File('$directory${Platform.pathSeparator}${fileName(format)}');
    return file.writeAsBytes(bytes, flush: true);
  }
}
