export 'Features/NavbarProvider.dart';

/// A media-tracking backend: AniList, MyAnimeList, Simkl, or the on-device
/// extension aggregator. Concrete services live under `lib/Api/Services/`.
///
/// A service may also implement `NavBarProvider` to customise the nav bar.
abstract class MediaService {
  /// Stable identifier, used for persistence. Must never change once shipped.
  String get id;

  /// Human-readable name shown in the service picker.
  String get name;

  /// Asset path to the service's SVG icon.
  String get iconPath;
}
