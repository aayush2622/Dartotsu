import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/LayoutPref.dart';
import '../../../Core/Services/MediaService.dart';

const kComickHomeSections = <String, bool>{
  'Continue Watching': true,
  'Continue Reading': true,
  'Planned': true,
  'On Hold': true,
  'Dropped': true,
  kHiddenMediaTitle: false,
};

const kComickMangaSections = <String, bool>{
  'Trending Now': true,
  'Top Rated': true,
  'Most Followed': true,
  'Latest Updates': true,
};

const kComickAnimeSections = <String, bool>{
  'Weekly Schedule': true,
  'Trending Anime': true,
  'Top Rated Anime': true,
  'Most Followed Anime': true,
};

class ComickPref {
  ComickPref._();

  static const token = Pref('comickToken', '', PrefLocation.PROTECTED);
  static const refresh = Pref('comickRefreshToken', '', PrefLocation.PROTECTED);
  static const expiresAt = Pref<int>(
    'comickTokenExpires',
    0,
    PrefLocation.PROTECTED,
  );

  static const clientId = Pref('comickClientId', '', PrefLocation.OTHER);
  static const hideNsfw = Pref('comickHideNsfw', true, PrefLocation.OTHER);

  static final homeLayout = layoutPref('comickHomeLayout', kComickHomeSections);
  static final mangaLayout = layoutPref(
    'comickMangaLayout',
    kComickMangaSections,
  );
  static final animeLayout = layoutPref(
    'comickAnimeLayout',
    kComickAnimeSections,
  );

  static Pref<Map<String, bool>> feedLayoutFor(MediaType type) =>
      type == MediaType.anime ? animeLayout : mangaLayout;
}
