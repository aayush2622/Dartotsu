import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/LayoutPref.dart';
import '../../../Core/Services/MediaService.dart';

const kMangaBakaHomeSections = <String, bool>{
  'Continue Reading': true,
  'Planned Manga': true,
  'On Hold': true,
  'Dropped': true,
  kHiddenMediaTitle: false,
};

const kMangaBakaMangaSections = <String, bool>{
  'Trending Now': true,
  'Rising': true,
  'Latest Releases': true,
  'Top Rated': true,
  'Upcoming': true,
  'Top Manga': true,
};

const kMangaBakaNovelSections = <String, bool>{
  'Trending Now': true,
  'Latest Releases': true,
  'Top Rated': true,
  'Upcoming': true,
  'Top Novels': true,
};

class MangaBakaPref {
  MangaBakaPref._();

  static const token = Pref('mangaBakaToken', '', PrefLocation.PROTECTED);
  static const refresh = Pref(
    'mangaBakaRefreshToken',
    '',
    PrefLocation.PROTECTED,
  );
  static const expiresAt = Pref<int>(
    'mangaBakaTokenExpires',
    0,
    PrefLocation.PROTECTED,
  );

  static const hideNsfw = Pref('mangaBakaHideNsfw', true, PrefLocation.OTHER);

  static final homeLayout = layoutPref(
    'mangaBakaHomeLayout',
    kMangaBakaHomeSections,
  );
  static final mangaLayout = layoutPref(
    'mangaBakaMangaLayout',
    kMangaBakaMangaSections,
  );
  static final novelLayout = layoutPref(
    'mangaBakaNovelLayout',
    kMangaBakaNovelSections,
  );

  static Pref<Map<String, bool>> feedLayoutFor(MediaType type) =>
      type == MediaType.novel ? novelLayout : mangaLayout;
}
