import '../../../Extension/Data/SourceSearchFilters.dart';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import 'Media/MediaRecord.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';

import 'package:dartotsu_extension_bridge/toolkit.dart';

class SourceMatch {
  final DMedia media;
  final int score;
  const SourceMatch(this.media, this.score);
}

class SourceMatcher {
  SourceMatcher._();

  static DMedia? saved(MediaService service, Source source, Media media) {
    final match = MediaRecords.of(service, media).matches[source.id];
    if (match == null) return null;
    return DMedia(title: match.title, url: match.url, cover: match.cover);
  }

  static void save(
    MediaService service,
    Source source,
    Media media,
    DMedia match,
  ) {
    final url = match.url;
    final id = source.id;
    if (url == null || id == null) return;
    MediaRecords.of(service, media).matches[id] = SourceMatchRecord(
      title: match.title,
      url: url,
      cover: match.cover,
    );
    MediaRecords.save(service, media);
  }

  static void forget(MediaService service, Source source, Media media) {
    MediaRecords.of(service, media).matches.remove(source.id);
    MediaRecords.save(service, media);
  }

  static List<String> names(Media media) {
    final seen = <String>{};
    return [
          media.name,
          media.nameRomaji,
          media.userPreferredName,
          ...media.synonyms.where(_latin),
        ]
        .whereType<String>()
        .where((n) => n.trim().isNotEmpty && seen.add(n))
        .toList();
  }

  static bool _latin(String value) =>
      RegExp(r'^[a-zA-Z0-9\s]+$').hasMatch(value);

  static int _score(DMedia found, List<String> names) =>
      bestTitleRatio([found.title], names);

  static Future<List<SourceMatch>> search(
    Source source,
    String term,
    List<String> names,
  ) async {
    final pages = await source.methods.search(
      term,
      1,
      SourceSearchFilters.json(source),
    );
    final list = [
      for (final m in pages.list)
        if (m.url != null && (m.title?.isNotEmpty ?? false))
          SourceMatch(m, _score(m, names)),
    ]..sort((a, b) => b.score.compareTo(a.score));
    return list;
  }

  static Future<DMedia?> find(
    Source source,
    Media media, {
    required String mode,
    void Function(String status)? onStatus,
  }) async {
    final targets = names(media);
    final terms = <String>[
      media.mainName,
      if (media.nameRomaji?.isNotEmpty ?? false) media.nameRomaji!,
      ...targets,
    ];
    final tried = <String>{};
    SourceMatch? best;
    (Object, StackTrace)? failure;
    var failures = 0;
    for (final term in terms) {
      if (term.trim().isEmpty || !tried.add(term.toLowerCase())) continue;
      onStatus?.call(term);
      final List<SourceMatch> found;
      try {
        found = await search(source, term, targets);
      } catch (e, st) {
        failure ??= (e, st);
        failures++;
        if (tried.length >= 4) break;
        continue;
      }
      if (found.isNotEmpty &&
          (best == null || found.first.score > best.score)) {
        best = found.first;
      }
      if (best != null && best.score >= 96) break;
      if (tried.length >= 4) break;
    }
    if (best == null) {
      if (failure != null && failures == tried.length) {
        Error.throwWithStackTrace(failure.$1, failure.$2);
      }
      return null;
    }
    final needed = mode == 'exact' ? 90 : 0;
    return best.score >= needed ? best.media : null;
  }
}
