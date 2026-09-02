import 'package:flutter/material.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Model/SearchResults.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import 'AnilistAuth.dart';

AnilistAuth get _auth => find<AnilistAuth>();

class AnilistHomeView implements HomeScreenView {
  @override
  Sections sections() => _auth.queries.initHomePage();

  @override
  Future<List<String?>> bannerImages() => _auth.queries.getBannerImages();
}

(String, int) _currentSeason() {
  final now = DateTime.now();
  final season = switch (now.month) {
    12 || 1 || 2 => 'WINTER',
    3 || 4 || 5 => 'SPRING',
    6 || 7 || 8 => 'SUMMER',
    _ => 'FALL',
  };
  final year = (now.month == 12) ? now.year + 1 : now.year;
  return (season, year);
}

/// Maps a browse section title to the query that continues it. `null` for
/// sections that can't be paged (airing schedule, the viewer's own lists).
Future<List<Media>?> _loadMoreSection(
  MediaType type,
  String section,
  int page,
) {
  final base = SearchResults(type: type.searchType, page: page, perPage: 30);
  final query = switch (section) {
    'Trending Now' => base..sort = 'TRENDING_DESC',
    'Popular Anime' || 'Popular Manga' => base..sort = 'POPULARITY_DESC',
    'Top Rated Series' || 'Top Rated Manga' => base..sort = 'SCORE_DESC',
    'Most Favourite Series' ||
    'Most Favourite Manga' => base..sort = 'FAVOURITES_DESC',
    'Trending Movies' =>
      base
        ..sort = 'TRENDING_DESC'
        ..format = 'MOVIE',
    'Trending Manhwa' =>
      base
        ..sort = 'TRENDING_DESC'
        ..countryOfOrigin = 'KR',
    'Trending Novels' =>
      base
        ..sort = 'TRENDING_DESC'
        ..format = 'NOVEL',
    'Popular This Season' => () {
      final (s, y) = _currentSeason();
      return base
        ..sort = 'POPULARITY_DESC'
        ..season = s
        ..seasonYear = y;
    }(),
    _ => null,
  };
  if (query == null) return Future.value(null);
  return _auth.queries.search(query).then((r) => r?.results);
}

class AnilistFeedView extends FeedScreenView {
  @override
  Sections userLists(MediaType type) =>
      _auth.queries.getMediaLists(anime: type.isVideo);

  @override
  Sections browse(MediaType type) => type.isVideo
      ? _auth.queries.getAnimeList()
      : _auth.queries.getMangaList();

  @override
  Future<List<Media>?> loadMore(MediaType type, String section, int page) =>
      _loadMoreSection(type, section, page);
}

const _anilistSorts = {
  'SCORE_DESC': 'Top rated',
  'POPULARITY_DESC': 'Most popular',
  'TRENDING_DESC': 'Trending',
  'START_DATE_DESC': 'Newest',
  'TITLE_ROMAJI': 'A–Z',
  'FAVOURITES_DESC': 'Most favourited',
};

class AnilistSearchView implements SearchScreenView {
  @override
  Future<SearchResults?> search(SearchResults query) =>
      _auth.queries.search(query);

  @override
  List<MediaType> get types => const [MediaType.anime, MediaType.manga];

  @override
  SearchFilterSpec filters(MediaType type) {
    final anime = type.isVideo;
    final genres =
        loadCustomData<List<String>>('anilist_genres') ?? const <String>[];
    final tags =
        loadCustomData<List<String>>('anilist_tags_nonadult') ??
        const <String>[];
    return SearchFilterSpec(
      sorts: _anilistSorts,
      formats: anime
          ? const ['TV', 'TV SHORT', 'MOVIE', 'SPECIAL', 'OVA', 'ONA', 'MUSIC']
          : const ['MANGA', 'NOVEL', 'ONE SHOT'],
      statuses: const [
        'RELEASING',
        'FINISHED',
        'NOT YET RELEASED',
        'CANCELLED',
        'HIATUS',
      ],
      sources: const [
        'ORIGINAL',
        'MANGA',
        'LIGHT NOVEL',
        'VISUAL NOVEL',
        'VIDEO GAME',
        'NOVEL',
        'WEB NOVEL',
        'OTHER',
      ],
      genres: genres,
      tags: tags,
      countries: const {
        '': 'Any country',
        'JP': 'Japan',
        'KR': 'Korea',
        'CN': 'China',
        'TW': 'Taiwan',
      },
      season: anime,
      year: true,
    );
  }
}

class AnilistDetailView implements DetailScreenView {
  @override
  Future<Media?> details(Media media) => _auth.queries.mediaDetails(media);
}

class AnilistNotificationView implements NotificationScreenView {
  @override
  Future<List<ServiceNotification>> notifications({int page = 1}) =>
      _auth.queries.getNotifications(page: page);
}

class AnilistSettingsView implements SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final user = _auth.user.value;
    return [
      Setting(
        type: SettingType.normal,
        name: 'AniList profile',
        description: user?.name ?? 'Not signed in',
        icon: Icons.open_in_new_rounded,
        isVisible: user != null,
        onClick: () =>
            openLinkInBrowser('https://anilist.co/user/${user?.name}'),
      ),
      Setting(
        type: SettingType.normal,
        name: 'Refresh from AniList',
        description: 'Re-pull your profile and counts',
        icon: Icons.refresh_rounded,
        isVisible: _auth.isLoggedIn,
        onClick: _auth.refreshUser,
      ),
    ];
  }
}
