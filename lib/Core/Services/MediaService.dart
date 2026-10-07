import 'package:collection/collection.dart';

import 'Api/Mutations.dart';
import 'Api/Queries.dart';
import 'Local/LocalListStore.dart';
import 'Local/LocalMutations.dart';
import 'ServiceAuth.dart';
import 'Screens/ServiceScreens.dart';

export 'Api/Mutations.dart';
export 'Api/Queries.dart';
export 'Features/NavbarProvider.dart';
export 'Local/LocalListStore.dart';
export 'Local/LocalMutations.dart';
export 'ServiceAuth.dart';
export 'ServiceNotification.dart';
export 'Screens/ServiceScreens.dart';

/// A media-tracking backend: AniList, MyAnimeList, Simkl, or the on-device
/// extension aggregator. Concrete services live under `lib/Api/Services/`.
///
/// A service is **data only**. [getQueries] / [getMutations] are the raw
/// fetch/write layer; the per-screen `*ScreenView` getters group that data by
/// screen and add screen-specific config (chips, shortcuts, settings rows) —
/// each returns data, never a widget. Screens under `lib/Screen/` render it,
/// falling back to `NotImplemented` for a `null` view. A new service is one
/// subclass with no core edits.
abstract class MediaService {
  /// Stable identifier, used for persistence. Must never change once shipped.
  String get id;

  /// Human-readable name shown in the service picker.
  String get name;

  /// Asset path to the service's SVG icon.
  String get iconPath;

  Queries? get getQueries => null;

  Mutations? get apiMutations => null;

  Mutations? get getMutations =>
      isLoggedIn ? apiMutations : LocalMutations(this);

  LocalListStore localStore({required bool anime}) => LocalListStore(id);

  ServiceAuth? get auth => null;

  bool get isLoggedIn => auth?.isLoggedIn ?? false;

  HomeScreenView get homeView => HomeScreenView(this);

  /// Browsable media categories, in tab order (empty => no browse tabs).
  /// Most services offer one or two — anime + manga, novels + movies, …
  List<MediaType> get feedTypes => const [];

  /// Serves every tab in [feedTypes].
  FeedScreenView? get feedView => null;

  SearchScreenView? get searchView => null;

  DetailScreenView get detailView => DetailScreenView(this);

  EntityScreenView? get entityView => null;

  SocialScreenView? get socialView => null;

  NotificationScreenView? get notificationView => null;

  SettingsScreenView? get settingsView => null;

  /// Web hosts whose links this service opens, e.g. `anilist.co`.
  Set<String> get linkHosts => const {};

  /// Extra custom URL schemes this service owns, e.g. `myservice`.
  Set<String> get linkSchemes => const {};

  /// Resolves an incoming link to an in-app destination. The default reads
  /// `/<kind>/<value>` (`/anime/1`, also `dartotsu://<id>/anime/1`); override
  /// for other shapes.
  AppLink? parseUri(Uri uri) {
    final segments = uri.pathSegments.where((s) => s.isNotEmpty).toList();
    if (segments.length < 2) return null;
    final kind = AppLinkKind.values.firstWhereOrNull(
      (k) => k.name == segments[0],
    );
    return kind == null ? null : AppLink(kind, segments[1]);
  }
}
