import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/LayoutPref.dart';
import '../../../Core/Services/MediaService.dart';
import 'Queries.dart';

const kMangaBakaHomeSections = <String, bool>{
  'Continue Reading': true,
  'Planned Manga': true,
  'On Hold': true,
  'Dropped': true,
  kHiddenMediaTitle: false,
};

final kMangaBakaMangaSections = {
  for (final s in mangaBakaSectionsFor(MediaType.manga)) s.title: true,
};

final kMangaBakaNovelSections = {
  for (final s in mangaBakaSectionsFor(MediaType.novel)) s.title: true,
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
