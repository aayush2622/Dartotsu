import 'package:flutter/material.dart';

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
  String section,
  int page, {
  required bool anime,
}) {
  final type = anime ? SearchType.ANIME : SearchType.MANGA;
  final base = SearchResults(type: type, page: page, perPage: 30);
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

class AnilistAnimeView extends AnimeScreenView {
  @override
  Sections userLists() => _auth.queries.getMediaLists(anime: true);

  @override
  Sections browse() => _auth.queries.getAnimeList();

  @override
  Future<List<Media>?> loadMore(String section, int page) =>
      _loadMoreSection(section, page, anime: true);
}

class AnilistMangaView extends MangaScreenView {
  @override
  Sections userLists() => _auth.queries.getMediaLists(anime: false);

  @override
  Sections browse() => _auth.queries.getMangaList();

  @override
  Future<List<Media>?> loadMore(String section, int page) =>
      _loadMoreSection(section, page, anime: false);
}

class AnilistSearchView implements SearchScreenView {
  @override
  Future<SearchResults?> search(SearchResults query) =>
      _auth.queries.search(query);

  @override
  List<SearchType> get types => const [SearchType.ANIME, SearchType.MANGA];
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
