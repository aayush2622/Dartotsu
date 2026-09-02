import 'Api/Mutations.dart';
import 'Api/Queries.dart';
import 'ServiceAuth.dart';
import 'Screens/ServiceScreens.dart';

export 'Api/Mutations.dart';
export 'Api/Queries.dart';
export 'Features/NavbarProvider.dart';
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

  Mutations? get getMutations => null;

  ServiceAuth? get auth => null;

  HomeScreenView? get homeView => null;

  AnimeScreenView? get animeView => null;

  MangaScreenView? get mangaView => null;

  SearchScreenView? get searchView => null;

  DetailScreenView? get detailView => null;

  NotificationScreenView? get notificationView => null;

  SettingsScreenView? get settingsView => null;

  /// `false` for services that never require an account (extensions).
  bool get requiresLogin => auth != null;
}
