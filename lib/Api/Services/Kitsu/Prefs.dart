import '../../../Core/Services/Api/SectionJobs.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/LayoutPref.dart';

const kKitsuHomeSections = <String, bool>{
  'Continue Watching': true,
  'Planned Anime': true,
  'Continue Reading': true,
  'Planned Manga': true,
  'On Hold': true,
  'Dropped': true,
  kHiddenMediaTitle: false,
};

const kKitsuAnimeSections = <String, bool>{
  'Trending Now': true,
  'Popular This Season': true,
  'Upcoming': true,
  'Top Movies': true,
  'Top Rated Series': true,
  'Top ONA': true,
  'Top OVA': true,
  'Most Popular': true,
  'Most Favourite': true,
};

const kKitsuMangaSections = <String, bool>{
  'Trending Now': true,
  'Top Manga': true,
  'Top Manhwa': true,
  'Top Manhua': true,
  'Top Novels': true,
  'Top One-shots': true,
  'Most Popular': true,
  'Most Favourite': true,
};

class KitsuPref {
  KitsuPref._();

  static const token = Pref('kitsuToken', '', PrefLocation.PROTECTED);
  static const refresh = Pref('kitsuRefreshToken', '', PrefLocation.PROTECTED);
  static const expiresAt = Pref<int>(
    'kitsuTokenExpires',
    0,
    PrefLocation.PROTECTED,
  );

  static const hideNsfw = Pref('kitsuHideNsfw', true, PrefLocation.OTHER);

  static const graphqlDetail = Pref(
    'kitsuGraphqlDetail',
    false,
    PrefLocation.OTHER,
  );

  static const alerts = Pref('kitsuAlerts', false, PrefLocation.OTHER);
  static const pollMinutes = Pref<int>(
    'kitsuPollMinutes',
    5,
    PrefLocation.OTHER,
  );
  static const mutedKinds = Pref('kitsuMutedKinds', '', PrefLocation.OTHER);

  static final homeLayout = layoutPref('kitsuHomeLayout', kKitsuHomeSections);
  static final animeLayout = layoutPref(
    'kitsuAnimeLayout',
    kKitsuAnimeSections,
  );
  static final mangaLayout = layoutPref(
    'kitsuMangaLayout',
    kKitsuMangaSections,
  );
}
