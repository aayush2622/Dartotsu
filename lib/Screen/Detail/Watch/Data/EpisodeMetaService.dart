import 'dart:async';

import '../../../../Logger.dart';
import '../../../../Utils/Lru.dart';
import '../../../../Core/Preferences/PrefManager.dart';
import 'EpisodeMeta.dart';
import 'Providers/AniListEpisodes.dart';
import 'Providers/AniZip.dart';
import 'Providers/Kitsu.dart';
import 'Providers/Simkl.dart';
import 'Providers/Tenrai.dart';

const watchMetaOrderPref = Pref<List<String>>('watchMetaOrder', [
  'anizip',
  'kitsu',
  'simkl',
  'anilist',
  'tenrai',
], PrefLocation.OTHER);

const watchMetaDisabledPref = Pref<List<String>>(
  'watchMetaDisabled',
  [],
  PrefLocation.OTHER,
);

class EpisodeMetaService {
  EpisodeMetaService._();

  static final providers = <EpisodeMetaProvider>[
    AniZipProvider(),
    KitsuEpisodesProvider(),
    SimklEpisodesProvider(),
    AniListEpisodesProvider(),
    TenraiProvider(),
  ];

  static final _cache =
      Lru<String, (DateTime, Map<String, Map<String, EpisodeMeta>>)>(30);

  static List<EpisodeMetaProvider> ordered() {
    final order = watchMetaOrderPref.rx.value;
    final rank = {for (final (i, id) in order.indexed) id: i};
    return [
      ...providers,
    ]..sort((a, b) => (rank[a.id] ?? 1 << 20).compareTo(rank[b.id] ?? 1 << 20));
  }

  static bool enabled(String id) =>
      !watchMetaDisabledPref.rx.value.contains(id);

  static void setEnabled(String id, bool on) {
    final off = watchMetaDisabledPref.rx.value.toSet();
    on ? off.remove(id) : off.add(id);
    watchMetaDisabledPref.rx.value = off.toList();
  }

  static void setOrder(List<String> ids) => watchMetaOrderPref.rx.value = ids;

  static void clearCache() => _cache.clear();

  static String _key(MetaIds ids) =>
      '${ids.anilist}/${ids.mal}/${ids.kitsu}/${ids.simkl}';

  static Stream<Map<String, EpisodeMeta>> load(
    MetaIds ids, {
    String? only,
  }) async* {
    if (!ids.anime || !ids.known) return;
    final key = '${_key(ids)}/${only ?? '*'}';
    final hit = _cache[key];
    if (hit != null &&
        DateTime.now().difference(hit.$1) < const Duration(minutes: 30)) {
      yield merge(hit.$2);
      return;
    }
    final active = ordered()
        .where((p) => only == null ? enabled(p.id) : p.id == only)
        .where((p) => p.supports(ids))
        .toList();
    final results = <String, Map<String, EpisodeMeta>>{};
    for (final provider in active) {
      try {
        final found = await provider.fetch(ids);
        if (found.isNotEmpty) {
          results[provider.id] = found;
          yield merge(results);
        }
      } catch (e) {
        logger(
          'Watch ${provider.id} failed: $e',
          logLevel: LogLevel.error,
          tag: 'WATCH',
        );
      }
    }
    if (results.isEmpty) return;
    _cache[key] = (DateTime.now(), results);
    logger(
      'Watch metadata ${ids.toJson()} -> ${{for (final e in results.entries) e.key: e.value.length}}',
      tag: 'WATCH',
    );
  }

  static Map<String, EpisodeMeta> merge(
    Map<String, Map<String, EpisodeMeta>> results,
  ) {
    final order = ordered().map((p) => p.id);
    final present = [
      for (final id in order)
        if (results[id] != null) results[id]!,
    ];
    final keys = <String>{for (final r in present) ...r.keys};
    final out = <String, EpisodeMeta>{};
    for (final key in keys) {
      final meta = EpisodeMeta(number: key);
      for (final source in present) {
        final ep = source[key];
        if (ep == null) continue;
        meta
          ..title ??= ep.title
          ..description ??= ep.description
          ..thumbnail ??= ep.thumbnail
          ..filler ??= ep.filler
          ..recap ??= ep.recap
          ..aired ??= ep.aired
          ..runtime ??= ep.runtime
          ..rating ??= ep.rating;
      }
      out[key] = meta;
    }
    return out;
  }
}
