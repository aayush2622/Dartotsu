import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Model/Media.dart';

enum SourceTag { anime, movies, adult }

enum MediaCategory {
  anime,
  animeMovie,
  movie,
  series;

  Set<SourceTag> get tags => switch (this) {
    MediaCategory.anime || MediaCategory.animeMovie => {SourceTag.anime},
    MediaCategory.movie || MediaCategory.series => {SourceTag.movies},
  };
}

final sourceTagsPref = Pref<Map<String, String>>.coded(
  'sourceTags',
  const {},
  PrefLocation.OTHER,
  encode: (v) => Map<String, dynamic>.from(v),
  decode: (raw) => raw is Map
      ? {for (final e in raw.entries) e.key.toString(): '${e.value}'}
      : const {},
);

Set<SourceTag> sourceTagsOf(Source source) {
  final raw = sourceTagsPref.rx.value[source.id];
  if (raw == null || raw.isEmpty) return const {};
  return {
    for (final name in raw.split(','))
      for (final tag in SourceTag.values)
        if (tag.name == name ||
            (tag == SourceTag.movies && _legacyMovies(name)))
          tag,
  };
}

bool _legacyMovies(String name) => name == 'movie' || name == 'series';

List<SourceTag> sourceTagsFor(Source source) =>
    (source.itemType ?? ItemType.anime) == ItemType.anime
    ? SourceTag.values
    : const [SourceTag.adult];

void setSourceTags(Source source, Set<SourceTag> tags) {
  final id = source.id;
  if (id == null) return;
  final next = {...sourceTagsPref.rx.value};
  if (tags.isEmpty) {
    next.remove(id);
  } else {
    next[id] = [
      for (final tag in SourceTag.values)
        if (tags.contains(tag)) tag.name,
    ].join(',');
  }
  sourceTagsPref.rx.value = next;
}

const _liveActionPrefixes = ['movies/', 'tv/', 'shows/'];

MediaCategory mediaCategoryOf(Media media) {
  final liveAction = _liveActionPrefixes.any(media.id.startsWith);
  final animeGenre = media.genres.any((g) => g.toLowerCase() == 'anime');
  final anime = !liveAction || animeGenre;
  final movie =
      media.id.startsWith('movies/') || media.format?.toUpperCase() == 'MOVIE';
  if (anime) return movie ? MediaCategory.animeMovie : MediaCategory.anime;
  return movie ? MediaCategory.movie : MediaCategory.series;
}

class RankedSources {
  final List<Source> shown;
  final List<Source> hidden;

  const RankedSources(this.shown, this.hidden);

  List<Source> get all => [...shown, ...hidden];
}

RankedSources rankSources(
  List<Source> sources,
  Set<SourceTag> Function(Source) tagsOf, {
  required MediaCategory? category,
  required bool adult,
}) {
  if (sources.every((s) => tagsOf(s).isEmpty)) {
    return RankedSources(sources, const []);
  }
  final wanted = category?.tags ?? const <SourceTag>{};
  const categoryTags = {SourceTag.anime, SourceTag.movies};
  final ranks = <(int, Source)>[];
  final hidden = <Source>[];
  for (final s in sources) {
    final tags = tagsOf(s);
    final own = tags.intersection(categoryTags);
    final mismatch =
        category != null && own.isNotEmpty && own.intersection(wanted).isEmpty;
    final blocked = !adult && tags.contains(SourceTag.adult);
    if (mismatch || blocked) {
      hidden.add(s);
    } else if (adult && tags.contains(SourceTag.adult)) {
      ranks.add((0, s));
    } else if (own.isNotEmpty) {
      ranks.add((1, s));
    } else {
      ranks.add((2, s));
    }
  }
  if (ranks.isEmpty) return RankedSources(sources, const []);
  final shown = [
    for (final rank in [0, 1, 2])
      for (final entry in ranks)
        if (entry.$1 == rank) entry.$2,
  ];
  return RankedSources(shown, hidden);
}

RankedSources rankedSourcesFor(
  List<Source> sources,
  Media media, {
  required ItemType type,
}) => rankSources(
  sources,
  sourceTagsOf,
  category: type == ItemType.anime ? mediaCategoryOf(media) : null,
  adult: media.isAdult,
);
