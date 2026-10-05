import 'package:flutter/widgets.dart';

import '../../../Model/MediaType.dart';
import '../../../Model/SearchResults.dart';
import '../../../Model/Setting.dart';
import '../Api/SectionJobs.dart';
import '../Model/Media.dart';
import '../ServiceNotification.dart';
import 'ScreenWidget.dart';

export '../../../Model/MediaType.dart';
export '../Api/SectionJobs.dart';
export 'ScreenWidget.dart';

typedef Sections = Future<Map<String, List<Media>>>;

typedef SectionsStream = Stream<Map<String, List<Media>>>;

/// A labelled section switch in a browse feed's header — season, media type.
/// [load] fetches the sections to show while the chip is active.
class FeedChip {
  final String label;
  final Sections Function() load;
  const FeedChip(this.label, this.load);
}

enum FeedShortcut { genres, calendar }

abstract class HomeScreenView {
  Stream<List<ScreenWidget>> screenStream();

  Future<List<String?>> bannerImages() => Future.value(const [null, null]);
}

/// One browse tab, parameterised by [MediaType] — a service serves the same
/// view for every type it declares in [MediaService.feedTypes].
abstract class FeedScreenView {
  List<SectionJob> jobs(MediaType type);

  bool parallelJobs(MediaType type) => true;

  SectionsStream sectionsStream(MediaType type) =>
      runSectionJobs(jobs(type), parallel: parallelJobs(type));

  Sections sections(MediaType type) => foldSections(sectionsStream(type));

  String? spotlight(MediaType type) => null;

  /// Next page for a browse [section] (keyed by its display title). Return
  /// `null` when the section can't paginate or has no more items.
  Future<List<Media>?> loadMore(MediaType type, String section, int page) =>
      Future.value(null);

  List<FeedChip> chips(MediaType type) => const [];

  List<FeedShortcut> shortcuts(MediaType type) => const [];
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
      !year;
}

abstract class SearchScreenView {
  Future<SearchResults?> search(SearchResults query);

  /// Media types the search can target; the first is the default. Usually the
  /// same as [MediaService.feedTypes].
  List<MediaType> get types => const [MediaType.anime, MediaType.manga];

  /// Filter vocabulary for [type]. Default: no filters.
  SearchFilterSpec filters(MediaType type) => SearchFilterSpec.none;
}

abstract class DetailScreenView {
  Future<Media?> details(Media media);
}

abstract class NotificationScreenView {
  Future<List<ServiceNotification>> notifications({int page = 1});
}

/// The service's own settings, folded into the app's Settings screen.
abstract class SettingsScreenView {
  List<Setting> build(BuildContext context);
}
