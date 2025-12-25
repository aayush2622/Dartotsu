import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../Services/Model/Media.dart';

interface class BaseDiscordRPC {
  Future<void> setRpc(
    Media mediaData, {
    DEpisode? episode,
    int? currentTime,
    int? endTime,
  }) {
    throw UnimplementedError();
  }

  Future<void> removeRpc() {
    throw UnimplementedError();
  }

  Future<void> pauseRpc() {
    throw UnimplementedError();
  }

  Future<void> resumeRpc() {
    throw UnimplementedError();
  }
}
