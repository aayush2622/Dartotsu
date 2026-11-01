import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:dartotsu_extension_bridge/toolkit.dart';

import 'EpisodeMeta.dart';

export 'package:dartotsu_extension_bridge/toolkit.dart'
    show
        normalizeEpisodes,
        parseChapterNumber,
        prepareChapters,
        normalizeIsolate,
        normalizeAll,
        seasonOf,
        seasonOffsets,
        seasonNames,
        parseUploadDate;

class WatchUnit {
  final DEpisode raw;
  final String number;
  String key;
  double value;
  final String? scanlator;
  String? season;
  String title;
  String? description;
  String? thumbnail;
  bool filler;
  bool recap;
  DateTime? uploaded;
  DateTime? aired;
  int? runtime;
  double? rating;

  WatchUnit({
    required this.raw,
    required this.number,
    String? key,
    required this.value,
    required this.title,
    this.scanlator,
    this.description,
    this.thumbnail,
    this.filler = false,
    this.recap = false,
    this.uploaded,
    this.aired,
    this.runtime,
    this.rating,
  }) : key = key ?? number;

  DateTime? get date => aired ?? uploaded;

  String get slot => season == null ? number : key;

  bool isWatched(int progress) => value <= progress;
}

int nextUnitIndex(List<WatchUnit> units, int from) {
  if (from < 0 || from >= units.length) return units.length;
  final current = units[from];
  var i = from + 1;
  while (i < units.length &&
      units[i].value == current.value &&
      units[i].scanlator != current.scanlator) {
    i++;
  }
  return i;
}

List<WatchUnit> withoutDuplicateChapters(List<WatchUnit> units) {
  final out = <WatchUnit>[];
  for (final u in units) {
    final last = out.lastOrNull;
    if (last != null &&
        last.value == u.value &&
        last.scanlator != u.scanlator) {
      continue;
    }
    out.add(u);
  }
  return out;
}

List<WatchUnit> buildUnits(
  List<DEpisode> episodes,
  Map<String, EpisodeMeta> meta, {
  required String fallbackThumb,
  required bool anime,
  bool seasoned = false,
  Map<String, double> seasonOffsets = const {},
}) {
  final units = [
    for (final ep in episodes)
      _unit(ep, meta[episodeKey(ep.episodeNumber)], fallbackThumb, anime),
  ];
  if (seasoned) {
    for (final u in units) {
      final name = u.scanlator?.trim() ?? '';
      u.season = name;
      u.key = '${u.number}~${_fnv(name)}';
      u.value += seasonOffsets[name] ?? 0;
    }
    return units;
  }
  final groups = <String, List<WatchUnit>>{};
  for (final u in units) {
    (groups[u.number] ??= []).add(u);
  }
  for (final group in groups.values) {
    if (group.length < 2) continue;
    final scanlators = group.map((u) => u.scanlator).toList();
    if (scanlators.toSet().length == scanlators.length) continue;
    for (final u in group) {
      final name = (u.raw.name ?? '').toLowerCase().replaceAll(
        RegExp(r'[^\p{L}\p{N}]+', unicode: true),
        '',
      );
      u.key = '${u.number}~${_fnv(name.isEmpty ? u.raw.url ?? '' : name)}';
    }
  }
  return units;
}

String _fnv(String input) {
  var hash = 0x811c9dc5;
  for (final c in input.codeUnits) {
    hash = ((hash ^ c) * 0x01000193) & 0xffffffff;
  }
  return hash.toRadixString(36);
}

void refreshUnit(
  WatchUnit unit,
  EpisodeMeta? meta, {
  required String fallbackThumb,
  required bool anime,
}) {
  final fresh = _unit(unit.raw, meta, fallbackThumb, anime);
  unit
    ..title = fresh.title
    ..description = fresh.description
    ..thumbnail = fresh.thumbnail
    ..filler = fresh.filler
    ..recap = fresh.recap
    ..aired = fresh.aired
    ..runtime = fresh.runtime
    ..rating = fresh.rating;
}

WatchUnit _unit(DEpisode ep, EpisodeMeta? meta, String fallback, bool anime) {
  final value = double.tryParse(ep.episodeNumber) ?? 0;
  final own = ep.name?.trim();
  final fromMeta = meta?.title?.trim();
  final title = (fromMeta?.isNotEmpty ?? false)
      ? fromMeta!
      : (own?.isNotEmpty ?? false)
      ? own!
      : '';
  return WatchUnit(
    raw: ep,
    number: ep.episodeNumber,
    value: value,
    title: title,
    scanlator: ep.scanlator,
    description: (meta?.description?.isNotEmpty ?? false)
        ? meta!.description
        : ep.description,
    thumbnail: anime
        ? (meta?.thumbnail ??
              ((ep.thumbnail?.isNotEmpty ?? false) ? ep.thumbnail : null) ??
              (fallback.isEmpty ? null : fallback))
        : null,
    filler: meta?.filler == true || ep.filler == true,
    recap: meta?.recap == true,
    uploaded: parseUploadDate(ep.dateUpload),
    aired: meta?.aired,
    runtime: meta?.runtime,
    rating: meta?.rating,
  );
}

List<List<WatchUnit>> chunkUnits(List<WatchUnit> units, int size) {
  if (units.isEmpty) return const [];
  return [
    for (var i = 0; i < units.length; i += size)
      units.sublist(i, i + size > units.length ? units.length : i + size),
  ];
}

int chunkOf(List<List<WatchUnit>> chunks, int progress) {
  for (final (i, chunk) in chunks.indexed) {
    if (chunk.any((u) => u.value == progress + 1)) return i;
  }
  for (final (i, chunk) in chunks.indexed) {
    if (chunk.any((u) => u.value > progress)) return i;
  }
  return chunks.isEmpty ? 0 : chunks.length - 1;
}
