import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/LayoutPref.dart';

const kMalHomeSections = <String, bool>{
  'Continue Watching': true,
  'Planned Anime': true,
  'Continue Reading': true,
  'Planned Manga': true,
};

const kMalAnimeSections = <String, bool>{
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

const kMalMangaSections = <String, bool>{
  'Trending Now': true,
  'Top Manga': true,
  'Top Manhwa': true,
  'Top Manhua': true,
  'Top Novels': true,
  'Top One-shots': true,
  'Most Popular': true,
  'Most Favourite': true,
};

class MalPref {
  MalPref._();

  static const hideNsfw = Pref('malHideNsfw', true, PrefLocation.OTHER);
  static const token = Pref('malToken', '', PrefLocation.PROTECTED);
  static const refresh = Pref('malRefreshToken', '', PrefLocation.PROTECTED);
  static const expiresAt = Pref<int>(
    'malTokenExpires',
    0,
    PrefLocation.PROTECTED,
  );

  static final homeLayout = layoutPref('malHomeLayout', kMalHomeSections);
  static final animeLayout = layoutPref('malAnimeLayout', kMalAnimeSections);
  static final mangaLayout = layoutPref('malMangaLayout', kMalMangaSections);
}
