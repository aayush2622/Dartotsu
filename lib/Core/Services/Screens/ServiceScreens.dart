import 'package:flutter/widgets.dart';

import '../../../Model/SearchResults.dart';
import '../../../Model/Setting.dart';
import '../Model/Media.dart';
import '../ServiceNotification.dart';

typedef Sections = Future<Map<String, List<Media>>>;

/// A labelled section switch in a browse feed's header — season, media type.
/// [load] fetches the sections to show while the chip is active.
class FeedChip {
  final String label;
  final Sections Function() load;
  const FeedChip(this.label, this.load);
}

/// A shortcut card a browse feed shows above its sections.
enum FeedShortcut { genres, calendar }

/// Per-screen data views a service exposes. Each returns **data** — the widgets
/// under `lib/Screen/` render it. Anything left `null` on [MediaService] makes
/// that screen fall back to `NotImplemented`. Grow a view with more methods as
/// its screen gains features; don't push screen concerns into `Queries`.

abstract class HomeScreenView {
  Sections sections();

  Future<List<String?>> bannerImages() => Future.value(const [null, null]);
}

/// Shared surface for the Anime and Manga browse tabs.
abstract class FeedScreenView {
  Sections userLists();

  Sections browse();

  /// Next page for a browse [section] (keyed by its display title). Return
  /// `null` when the section can't paginate or has no more items.
  Future<List<Media>?> loadMore(String section, int page) => Future.value(null);

  List<FeedChip> chips() => const [];

  List<FeedShortcut> shortcuts() => const [];
}

abstract class AnimeScreenView extends FeedScreenView {}

abstract class MangaScreenView extends FeedScreenView {}

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

  List<SearchType> get types => const [SearchType.ANIME, SearchType.MANGA];

  /// Filter vocabulary for [anime] vs manga search. Default: no filters.
  SearchFilterSpec filters({required bool anime}) => SearchFilterSpec.none;
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
