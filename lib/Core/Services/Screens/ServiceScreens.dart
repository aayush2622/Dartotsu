import 'package:flutter/widgets.dart';

import '../../../Model/SearchResults.dart';
import '../../../Model/Setting.dart';
import '../../../Widgets/Components/ListEditorFields.dart';
import '../../../Screen/Detail/DetailWidgets.dart';
import '../Model/Media.dart';
import '../MediaService.dart';

export '../../../Model/MediaType.dart';
export '../Api/SectionJobs.dart';
export 'DetailHost.dart';
export 'ListEditorDraft.dart';
export 'ScreenWidget.dart';

class HomeScreenView {
  final MediaService service;

  HomeScreenView(this.service);

  Future<SectionMap> localSections() async {
    final anime = service.localStore(anime: true);
    final manga = service.localStore(anime: false);
    if (anime.serviceId == manga.serviceId) return anime.sections();
    return {...anime.sections(anime: true), ...manga.sections(anime: false)};
  }

  Stream<List<ScreenWidget>> screenStream() async* {
    final sections = await localSections();
    yield [
      for (final e in sections.entries) ScreenWidget.media(e.key, e.value),
    ];
  }

  Future<List<String?>> bannerImages() => Future.value(const [null, null]);
}

class FeedChip {
  final String id;
  final String label;

  const FeedChip(this.id, this.label);
}

class FeedScreenView {
  final MediaService service;

  FeedScreenView(this.service);

  /// Filters shown under the carousel of the [type] feed. Empty = none.
  List<FeedChip> chips(MediaType type) => const [];

  /// The carousel's media while [chip] is selected; null = nothing changes.
  Future<List<Media>?> chipMedia(MediaType type, FeedChip chip) async => null;

  /// How the list called [title] renders (see `ScreenWidget.sectionType`).
  /// Also used to paint the cached lists before the first fetch lands.
  int sectionType(MediaType type, String title) => 0;

  Stream<List<ScreenWidget>> screenStream(MediaType type) async* {
    final anime = type.isVideo;
    final sections = service.localStore(anime: anime).sections(anime: anime);
    yield [
      for (final e in sections.entries) ScreenWidget.media(e.key, e.value),
    ];
  }
}

/// Which filters a service's search supports, and their vocab. Everything is a
/// plain list so the search UI is entirely service-driven — a service with no
/// filtering returns `SearchFilterSpec.none`.
class SearchFilterSpec {
  /// `apiValue -> label`, in menu order.
  final Map<String, String> sorts;
  final List<String> formats;
  final List<String> statuses;
  final List<String> sources;
  final List<String> genres;
  final List<String> tags;

  /// `apiValue -> label` (`''` = any); empty disables the control.
  final Map<String, String> countries;
  final bool season;
  final bool year;

  /// Offers the adult-content switch.
  final bool adult;

  /// Offers the "only titles on my list" switch.
  final bool onList;

  const SearchFilterSpec({
    this.sorts = const {},
    this.formats = const [],
    this.statuses = const [],
    this.sources = const [],
    this.genres = const [],
    this.tags = const [],
    this.countries = const {},
    this.season = false,
    this.year = false,
    this.adult = false,
    this.onList = false,
  });

  static const none = SearchFilterSpec();

  bool get isEmpty =>
      sorts.isEmpty &&
      formats.isEmpty &&
      statuses.isEmpty &&
      sources.isEmpty &&
      genres.isEmpty &&
      countries.isEmpty &&
      !season &&
      !year &&
      !adult &&
      !onList;
}

abstract class SearchScreenView {
  Future<SearchResults?> search(SearchResults query);

  /// Warms whatever the filter vocabulary needs (genre and tag lists).
  Future<void> prepare() async {}

  /// Media types the search can target; the first is the default. Usually the
  /// same as [MediaService.feedTypes].
  List<MediaType> get types => const [MediaType.anime, MediaType.manga];

  /// Everything the search can target — media types plus characters, staff,
  /// studios and users where the service supports them. The first is the
  /// default.
  List<SearchType> get searchTypes => [for (final t in types) t.searchType];

  /// A web page for a non-media result ([entity] is a `Character`, `Author`,
  /// `Studio` or `User`), or null when there is nothing to open.
  String? entityUrl(SearchType type, Object entity) => null;

  Widget? overlay(Media media) => null;

  /// Filter vocabulary for [type]. Default: no filters.
  SearchFilterSpec filters(MediaType type) => SearchFilterSpec.none;
}

class DetailScreenView {
  final MediaService service;

  DetailScreenView(this.service);

  Stream<List<ScreenWidget>> screenStream(DetailHost host) async* {
    yield defaultDetailWidgets(host);
  }

  ListEditorScreenView get listEditor => ListEditorScreenView(service);
}

/// The list-entry editor as data: the fields it shows for a [Media], bound to a
/// [ListEditorDraft]. A service overrides this to add or drop fields.
class ListEditorScreenView {
  final MediaService service;

  ListEditorScreenView(this.service);

  bool get advanced => false;

  Map<String, String> statuses({required bool anime}) => {
    'CURRENT': anime ? 'Watching' : 'Reading',
    'PLANNING': 'Planning',
    'COMPLETED': 'Completed',
    'PAUSED': 'Paused',
    'DROPPED': 'Dropped',
    'REPEATING': anime ? 'Rewatching' : 'Rereading',
  };

  Map<String, bool> customLists(Media media) => const {};

  List<ScreenWidget> build(Media media, ListEditorDraft draft) => [
    ScreenWidget.extra(
      ListStatusField(
        draft: draft,
        statuses: statuses(anime: media.isAnime),
      ),
    ),
    ScreenWidget.extra(
      ListProgressField(draft: draft, total: media.totalUnits),
    ),
    ScreenWidget.extra(ListScoreField(draft: draft)),
    if (advanced) ScreenWidget.extra(ListDatesField(draft: draft)),
    ScreenWidget.extra(ListPrivateField(draft: draft)),
    if (advanced) ScreenWidget.extra(ListOtherSection(draft: draft)),
  ];
}

abstract class NotificationScreenView {
  Future<List<ServiceNotification>> notifications({int page = 1});
}

/// The service's own settings, folded into the app's Settings screen.
abstract class SettingsScreenView {
  List<Setting> build(BuildContext context);

  /// The same rows as [ScreenWidget]s, for the service's own settings page.
  List<ScreenWidget> widgets(BuildContext context) => [
    ScreenWidget.settings(null, build(context)),
  ];
}
