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
