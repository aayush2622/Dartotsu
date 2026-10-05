import 'package:flutter/widgets.dart';

import '../../../Model/SearchResults.dart';
import '../../../Model/Setting.dart';
import '../../../Screen/Detail/DetailWidgets.dart';
import '../Model/Media.dart';
import '../MediaService.dart';

export '../../../Model/MediaType.dart';
export '../Api/SectionJobs.dart';
export 'DetailHost.dart';
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

class FeedScreenView {
  final MediaService service;

  FeedScreenView(this.service);

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
}

abstract class NotificationScreenView {
  Future<List<ServiceNotification>> notifications({int page = 1});
}

/// The service's own settings, folded into the app's Settings screen.
abstract class SettingsScreenView {
  List<Setting> build(BuildContext context);
}
