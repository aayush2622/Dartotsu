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

abstract class SearchScreenView {
  Future<SearchResults?> search(SearchResults query);

  List<SearchType> get types => const [SearchType.ANIME, SearchType.MANGA];
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
