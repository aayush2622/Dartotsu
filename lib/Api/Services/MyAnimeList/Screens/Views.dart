import 'package:flutter/material.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/Services/ScoreFormat.dart';
import '../../../../Model/SearchResults.dart';
import '../../../../Model/Setting.dart';
import '../../../../Screen/Review/ReviewsShelf.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import '../../../../Utils/Function.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../Auth.dart';
import '../Data/User.dart';
import '../Queries.dart';

class MalHomeView extends HomeScreenView {
  MalHomeView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream() {
    if (!malAuth.isLoggedIn) return super.screenStream();
    return sectionWidgets(
      malAuth.queries.homeJobs(),
      build: ScreenWidget.media,
    );
  }
}

class MalFeedView extends FeedScreenView {
  MalFeedView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream(MediaType type) {
    final anime = type.isVideo;
    final sections = malSections(anime: anime);
    final queries = malAuth.queries;
    return sectionWidgets(
      queries.browseJobs(anime: anime),
      build: (title, media) {
        final section = sections.firstWhere((s) => s.title == title);
        return ScreenWidget.media(
          title,
          media,
          onLoadMore: (page) => queries.sectionPage(section, anime, page: page),
        );
      },
    );
  }
}

class MalSearchView extends SearchScreenView {
  @override
  Future<SearchResults?> search(SearchResults query) =>
      malAuth.queries.search(query);

  @override
  Future<void> prepare() async {
    await malAuth.queries.getGenresAndTags();
  }

  @override
  List<SearchType> get searchTypes => const [
    SearchType.ANIME,
    SearchType.MANGA,
  ];

  @override
  SearchFilterSpec filters(MediaType type) {
    final anime = type.isVideo;
    return SearchFilterSpec(
      sorts: malSearchSorts,
      formats: anime
          ? const ['TV', 'MOVIE', 'OVA', 'ONA', 'SPECIAL', 'MUSIC']
          : const ['MANGA', 'NOVEL', 'ONE SHOT', 'MANHWA', 'MANHUA'],
      statuses: const [
        'RELEASING',
        'FINISHED',
        'NOT YET RELEASED',
        'HIATUS',
        'CANCELLED',
      ],
      genres: malGenres(anime: anime),
      year: true,
      adult: true,
    );
  }
}

class MalDetailView extends DetailScreenView {
  MalDetailView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield _build(host);
    if (host.cached) return;
    final queries = malAuth.queries;
    final base = host.media.value;
    final characters = queries.characters(base);
    final reviews = queries.getReviews(base.id);
    final staff = queries.staff(base);
    final full = await queries.mediaDetails(base);
    if (full != null) {
      host.update(full);
      yield _build(host);
    }
    final media = host.media.value;
    media.characters = await characters;
    host.update(media);
    yield _build(host);
    media.review = (await reviews).take(3).toList();
    host.update(media);
    yield _build(host);
    media.staff = await staff;
    host.update(media);
    yield _build(host);
  }

  List<ScreenWidget> _build(DetailHost host) {
    final m = host.media.value;
    final description = (m.description ?? '').trim();
    return [
      if (description.isNotEmpty)
        ScreenWidget.data('Synopsis', ScreenData(text: description)),
      ScreenWidget.data('Details', ScreenData(rows: _rows(m))),
      if (m.genres.isNotEmpty)
        ScreenWidget.data(
          'Genres',
          ScreenData(chips: m.genres, onChipTap: host.search),
        ),
      ScreenWidget.extra(
        ReviewsShelf(key: ValueKey('reviews-${m.id}'), media: m, view: this),
      ),
      if ((m.characters ?? const []).isNotEmpty)
        ScreenWidget.characters('Characters', m.characters),
      if ((m.staff ?? const []).isNotEmpty)
        ScreenWidget.staff('Staff', m.staff),
      if ((m.relations ?? const []).isNotEmpty)
        ScreenWidget.media('Relations', m.relations),
      if ((m.recommendations ?? const []).isNotEmpty)
        ScreenWidget.media('Recommendations', m.recommendations),
    ];
  }

  List<(String, String)> _rows(Media m) {
    final anime = m.anime;
    final total = m.totalUnits?.toString() ?? '~';
    final studio = anime?.studio?.name;
    final author = m.manga?.author?.name;
    final season = anime?.season;
    return [
      (m.isAnime ? 'Episodes' : 'Chapters', total),
      if (m.format != null) ('Format', m.format!.titleCase),
      if (m.status != null) ('Status', m.status!.titleCase),
      if (m.meanScore != null)
        ('Score', (m.meanScore! / 10).toStringAsFixed(2)),
      if (m.popularity != null) ('Members', '${m.popularity}'),
      if (studio?.isNotEmpty ?? false) ('Studio', studio!),
      if (author?.isNotEmpty ?? false) ('Author', author!),
      if (season != null && anime?.seasonYear != null)
        ('Season', '${season.titleCase} ${anime!.seasonYear}'),
      if (m.startDate?.getFormattedDate() != null)
        ('Started', m.startDate!.getFormattedDate()!),
    ];
  }
}

class MalCalendarView implements CalendarScreenView {
  @override
  Stream<List<CalendarEntry>> schedule() => malAuth.queries.schedule();
}

class MalSettingsView extends SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final user = malAuth.user.value;
    return [
      if (user is MalUser)
        Setting.normal(
          name: 'MyAnimeList profile',
          description: user.name,
          icon: Icons.person_outline_rounded,
          onClick: () => openLinkInBrowser(user.profileUrl),
        ),
      Setting.normal(
        name: 'Refresh from MyAnimeList',
        description: 'Re-pull your profile and counts',
        icon: Icons.refresh_rounded,
        onClick: () async {
          await malAuth.refreshUser();
          snackString('Refreshed');
        },
      ),
    ];
  }
}

String malScoreHint() => ScoreFormat.point10.example;
