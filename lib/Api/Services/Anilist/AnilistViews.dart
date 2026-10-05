import 'package:flutter/material.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Model/SearchResults.dart';
import '../../../Model/Setting.dart';
import '../../../Screen/Settings/Widgets/SegmentedSetting.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../../Widgets/Components/AppControls.dart';
import 'AnilistAuth.dart';
import 'AnilistPrefs.dart';
import 'Widgets/HomeLayoutSheet.dart';

AnilistAuth get _auth => find<AnilistAuth>();

bool get _stacked => AnilistPref.queryLoadMode.value == QueryLoadMode.stacked;

class AnilistHomeView implements HomeScreenView {
  @override
  Stream<List<ScreenWidget>> screenStream() async* {
    final acc = <String, List<Media>>{};
    await for (final patch in runSectionJobs(
      _auth.queries.homeJobs(),
      parallel: _stacked,
    )) {
      acc.addAll(patch);
      yield [for (final e in acc.entries) ScreenWidget.media(e.key, e.value)];
    }
  }

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
  List<SectionJob> jobs(MediaType type) => [
    if (_auth.isLoggedIn)
      () => _auth.queries.getMediaLists(anime: type.isVideo),
    ..._auth.queries.browseJobs(anime: type.isVideo),
  ];

  @override
  bool parallelJobs(MediaType type) => _stacked;

  @override
  String? spotlight(MediaType type) => 'Trending Now';

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
    final layout = AnilistPref.homeLayout.rx.value;
    final shown = layout.values.where((v) => v).length;
    return [
      segmentedSetting<QueryLoadMode>(
        name: 'Section loading',
        description:
            'All at once sends one stacked request per page — fastest, but a '
            'big single hit on the API. One by one fetches each row '
            'separately: slower, but rows appear as they arrive and it eats '
            'far less of your rate limit.',
        icon: Icons.bolt_rounded,
        label: 'Fetch',
        value: AnilistPref.queryLoadMode.rx.value,
        onChanged: (v) => AnilistPref.queryLoadMode.rx.value = v,
        segments: const [
          AppSegment(QueryLoadMode.stacked, label: 'All at once'),
          AppSegment(QueryLoadMode.sequential, label: 'One by one'),
        ],
      ),
      Setting.normal(
        name: 'Home sections',
        description:
            '$shown of ${layout.length} shown — tap to pick and reorder',
        icon: Icons.dashboard_customize_rounded,
        isActivity: true,
        isVisible: _auth.isLoggedIn,
        onClick: () => showHomeLayoutSheet(context),
      ),
      Setting.switchType(
        name: 'Hide private entries',
        description: 'Keep entries marked private on AniList out of the feed',
        icon: Icons.lock_outline_rounded,
        isChecked: AnilistPref.hidePrivate.rx.value,
        onSwitchChange: (v) => AnilistPref.hidePrivate.rx.value = v,
      ),
      Setting.normal(
        name: 'AniList profile',
        description: user?.name ?? 'Not signed in',
        icon: Icons.open_in_new_rounded,
        isVisible: user != null,
        onClick: () =>
            openLinkInBrowser('https://anilist.co/user/${user?.name}'),
      ),
      Setting.normal(
        name: 'Refresh from AniList',
        description: 'Re-pull your profile and counts',
        icon: Icons.refresh_rounded,
        isVisible: _auth.isLoggedIn,
        onClick: _auth.refreshUser,
      ),
    ];
  }
}
