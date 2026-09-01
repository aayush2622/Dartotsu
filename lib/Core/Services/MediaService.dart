import 'Api/Mutations.dart';
import 'Api/Queries.dart';
import 'ServiceAuth.dart';
import 'ServiceScreens.dart';

export 'Api/Mutations.dart';
export 'Api/Queries.dart';
export 'Features/NavbarProvider.dart';
export 'ServiceAuth.dart';
export 'ServiceNotification.dart';
export 'ServiceScreens.dart';

/// A media-tracking backend: AniList, MyAnimeList, Simkl, or the on-device
/// extension aggregator. Concrete services live under `lib/Api/Services/`.
///
/// A new service is added by subclassing this and filling in whichever
/// capabilities it supports — the core never changes. Anything left `null`
/// renders as "not implemented on `name`".
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

  HomeScreenView? get getHomeScreen => null;

  AnimeScreenView? get getAnimeScreen => null;

  MangaScreenView? get getMangaScreen => null;

  SearchScreenView? get getSearchScreen => null;

  DetailScreenView? get getDetailScreen => null;

  LoginScreenView? get getLoginScreen => null;

  SettingsScreenView? get getSettingsScreen => null;

  NotificationScreenView? get getNotificationScreen => null;

  /// `false` for services that never require an account (extensions).
  bool get requiresLogin => auth != null;
}
