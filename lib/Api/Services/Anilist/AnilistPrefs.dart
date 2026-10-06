import '../../../Core/Preferences/PrefManager.dart';

enum QueryLoadMode { stacked, sequential }

const kAnilistHomeSections = <String, bool>{
  'Continue Watching': true,
  'Favourite Anime': true,
  'Planned Anime': true,
  'Continue Reading': true,
  'Favourite Manga': true,
  'Planned Manga': true,
  'Recommended': true,
  'Hidden Media': false,
};

const kAnilistAnimeSections = <String, bool>{
  'Recent Updates': true,
  'Trending Now': true,
  'Popular This Season': true,
  'Trending Movies': true,
  'Top Rated Series': true,
  'Most Favourite Series': true,
  'Popular Anime': true,
};

const kAnilistMangaSections = <String, bool>{
  'Trending Now': true,
  'Trending Manhwa': true,
  'Trending Novels': true,
  'Top Rated Manga': true,
  'Most Favourite Manga': true,
  'Popular Manga': true,
};

Pref<Map<String, bool>> _layoutPref(String key, Map<String, bool> defaults) =>
    Pref<Map<String, bool>>.coded(
      key,
      defaults,
      PrefLocation.OTHER,
      encode: (v) => Map<String, dynamic>.from(v),
      decode: (raw) => raw is Map
          ? {for (final e in raw.entries) e.key.toString(): e.value == true}
          : defaults,
    );

class AnilistPref {
  AnilistPref._();

  static const token = Pref('anilistToken', '', PrefLocation.PROTECTED);

  static final queryLoadMode = enumPref(
    'anilistQueryLoadMode',
    QueryLoadMode.stacked,
    QueryLoadMode.values,
    PrefLocation.OTHER,
  );

  static final homeLayout = Pref<Map<String, bool>>.coded(
    'anilistHomeLayout',
    kAnilistHomeSections,
    PrefLocation.OTHER,
    encode: (v) => Map<String, dynamic>.from(v),
    decode: (raw) => raw is Map
        ? {for (final e in raw.entries) e.key.toString(): e.value == true}
        : kAnilistHomeSections,
  );

  static final animeLayout = _layoutPref(
    'anilistAnimeLayout',
    kAnilistAnimeSections,
  );

  static final mangaLayout = _layoutPref(
    'anilistMangaLayout',
    kAnilistMangaSections,
  );

  static const removeList = Pref<List<String>>(
    'anilistRemoveList',
    [],
    PrefLocation.OTHER,
  );

  static const hidePrivate = Pref(
    'anilistHidePrivate',
    false,
    PrefLocation.OTHER,
  );
}
