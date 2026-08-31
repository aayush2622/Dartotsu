import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../Core/Services/Model/Media.dart';

/// Rich-presence backend. `DesktopRPC` talks to a local Discord client via IPC;
/// `MobileRPC` drives a headless session through Discord's HTTP API.
abstract interface class BaseDiscordRPC {
  Future<void> setRpc(
    Media mediaData, {
    DEpisode? episode,
    int? currentTime,
    int? endTime,
  });

  /// Clears the presence but keeps the backend usable for a later [setRpc].
  Future<void> removeRpc();

  Future<void> pauseRpc();

  Future<void> resumeRpc();
}
