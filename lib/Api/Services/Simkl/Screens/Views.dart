import 'package:flutter/material.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Model/SearchResults.dart';
import '../../../../Model/Setting.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import '../../../../Utils/Function.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../Auth.dart';
import '../Data/User.dart';

class SimklHomeView extends HomeScreenView {
  SimklHomeView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream() {
    if (!simklAuth.isLoggedIn) return super.screenStream();
    return sectionWidgets(
      simklAuth.queries.homeJobs(),
      build: ScreenWidget.media,
    );
  }
}

class SimklFeedView extends FeedScreenView {
  SimklFeedView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream(MediaType type) =>
      sectionWidgets(simklAuth.queries.jobs(type), build: ScreenWidget.media);
}

class SimklSearchView extends SearchScreenView {
  @override
  List<MediaType> get types => const [
    MediaType.anime,
    MediaType.movie,
    MediaType.series,
  ];

  @override
  Future<SearchResults?> search(SearchResults query) async {
    if (!simklAuth.isLoggedIn) {
      snackString('Sign in to Simkl to search');
      return query
        ..results = const []
        ..hasNextPage = false;
    }
    return simklAuth.queries.search(query);
  }
}

class SimklDetailView extends DetailScreenView {
  SimklDetailView(super.service);

  @override
  String get sourceName => 'Simkl';

  @override
  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield _build(host);
    if (host.cached) return;
    final full = await simklAuth.queries.mediaDetails(host.media.value);
    if (full == null) return;
    host.update(full);
    yield _build(host);
  }

  List<ScreenWidget> _build(DetailHost host) {
    final m = host.media.value;
    final description = (m.description ?? '').trim();
    return [
      if (description.isNotEmpty)
        ScreenWidget.data('Synopsis', ScreenData(html: description)),
      ScreenWidget.data('Details', ScreenData(rows: _rows(m))),
      if (m.genres.isNotEmpty)
        ScreenWidget.data(
          'Genres',
          ScreenData(chips: m.genres, onChipTap: host.search),
        ),
      if ((m.relations ?? const []).isNotEmpty)
        ScreenWidget.media('Relations', m.relations),
      if ((m.recommendations ?? const []).isNotEmpty)
        ScreenWidget.media('Recommendations', m.recommendations),
    ];
  }

  List<(String, String)> _rows(Media m) {
    final total = m.anime?.totalEpisodes;
    final studio = m.anime?.studio?.name;
    final runtime = m.anime?.episodeDuration;
    return [
      if (total != null) ('Episodes', '$total'),
      if (m.format != null) ('Format', m.format!.titleCase),
      if (m.status != null) ('Status', m.status!.titleCase),
      if (m.meanScore != null)
        ('Score', (m.meanScore! / 10).toStringAsFixed(1)),
      if (runtime != null) ('Runtime', '$runtime min'),
      if (studio?.isNotEmpty ?? false) ('Studio', studio!),
      if (m.countryOfOrigin != null) ('Country', m.countryOfOrigin!),
      if (m.startDate?.getFormattedDate() != null)
        ('Aired', m.startDate!.getFormattedDate()!),
    ];
  }
}

class SimklCalendarView implements CalendarScreenView {
  @override
  Future<List<CalendarEntry>> schedule() => simklAuth.queries.schedule();
}

class SimklSettingsView extends SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) {
    final user = simklAuth.user.value;
    return [
      if (user is SimklUser)
        Setting.normal(
          name: 'Simkl profile',
          description: user.name,
          icon: Icons.person_outline_rounded,
          onClick: () => openLinkInBrowser(user.profileUrl),
        ),
      Setting.normal(
        name: 'Refresh from Simkl',
        description: 'Re-pull your profile and library',
        icon: Icons.refresh_rounded,
        onClick: () async {
          simklAuth.queries.clearLibrary();
          await simklAuth.refreshUser();
          snackString('Refreshed');
        },
      ),
    ];
  }
}
