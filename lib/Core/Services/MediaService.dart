import 'Api/Mutations.dart';
import 'Api/Queries.dart';
import 'ServiceAuth.dart';

export 'Api/Mutations.dart';
export 'Api/Queries.dart';
export 'Features/NavbarProvider.dart';
export 'ServiceAuth.dart';
export 'ServiceNotification.dart';

/// A media-tracking backend: AniList, MyAnimeList, Simkl, or the on-device
/// extension aggregator. Concrete services live under `lib/Api/Services/`.
///
/// A service is **data only** — it exposes reads ([getQueries]), writes
/// ([getMutations]) and an account ([auth]); it never returns a widget. The
/// screens under `lib/Screen/` render whatever the current service's data
/// surface allows, falling back to `NotImplemented` when a capability is
/// missing. A new service is one subclass with no core edits.
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

  /// `false` for services that never require an account (extensions).
  bool get requiresLogin => auth != null;
}
