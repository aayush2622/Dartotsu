import 'dart:async';

import 'package:dartotsu/Api/Discord/BaseDiscordRPC.dart';
import 'package:dartotsu/Core/Services/Model/Media.dart';
import 'package:dartotsu_extension_bridge/Models/DEpisode.dart';
import 'package:flutter_discord_rpc/flutter_discord_rpc.dart';
import 'package:get/get.dart';

class DesktopRPC extends GetxController implements BaseDiscordRPC {
  final Completer<void> _ready = Completer<void>();
  bool _disposed = false;

  bool _initializing = false;

  @override
  void onInit() {
    super.onInit();
    initialize();
  }

  Future<void> initialize() async {
    if (_ready.isCompleted || _disposed || _initializing) return;
    _initializing = true;

    try {
      await FlutterDiscordRPC.initialize("1453704458012856401");
      FlutterDiscordRPC.instance.connect();

      if (!_disposed && !_ready.isCompleted) {
        _ready.complete();
      }
    } catch (e) {
      if (!_ready.isCompleted) {
        _ready.completeError(e);
      }
    }
  }

  Future<void> get isReady => _ready.future;

  @override
  Future<void> setRpc(
    Media mediaData, {
    DEpisode? episode,
    int? currentTime,
    int? endTime,
  }) async {
    await isReady;
    if (_disposed) return;

    final isAnime = mediaData.anime != null;

    final totalFromSource = isAnime
        ? mediaData.anime?.episodes?.values.last.episodeNumber
        : mediaData.manga?.chapters?.last.episodeNumber;

    final totalFromMedia = isAnime
        ? mediaData.anime?.totalEpisodes
        : mediaData.manga?.totalChapters;

    final total = (totalFromMedia ?? totalFromSource ?? "??").toString();

    final now = DateTime.now();
    final safeCurrent = (currentTime ?? 0).clamp(0, endTime ?? 1440);

    final start = now.subtract(Duration(seconds: safeCurrent));
    final end = now.add(
      Duration(
        seconds: (endTime ?? 1440) - safeCurrent,
      ),
    );

    _lastActivity = RPCActivity(
      activityType: ActivityType.watching,
      details: mediaData.mainName,
      state:
          "${isAnime ? "Episode" : "Chapter"}: ${episode?.episodeNumber ?? "?"}/$total",
      assets: RPCAssets(
        largeText: mediaData.mainName,
        smallText: "Dartotsu",
        largeImage: episode?.thumbnail ?? mediaData.cover,
        smallImage:
            "https://cdn.discordapp.com/emojis/1305525420938100787.gif?size=48&animated=true&name=dartotsu",
      ),
      buttons: [
        RPCButton(
          label: "View ${isAnime ? 'Anime' : 'Manga'}",
          url: mediaData.shareLink,
        ),
        const RPCButton(
          label: "Open Dartotsu",
          url: "https://github.com/aayush2622/Dartotsu",
        ),
      ],
      timestamps: RPCTimestamps(
        start: start.millisecondsSinceEpoch,
        end: end.millisecondsSinceEpoch,
      ),
    );

    FlutterDiscordRPC.instance.setActivity(activity: _lastActivity!);
  }

  RPCActivity? _lastActivity;
  @override
  Future<void> pauseRpc() async {
    await isReady;
    if (_disposed) return;

    FlutterDiscordRPC.instance.clearActivity();
  }

  @override
  Future<void> resumeRpc() async {
    await isReady;
    if (_disposed) return;
    if (_lastActivity == null) return;
    FlutterDiscordRPC.instance.setActivity(activity: _lastActivity!);
  }

  @override
  Future<void> removeRpc() async {
    if (_disposed) return;
    _disposed = true;

    if (_ready.isCompleted) {
      FlutterDiscordRPC.instance.clearActivity();
      FlutterDiscordRPC.instance.disconnect();
      FlutterDiscordRPC.instance.dispose();
    }
  }

  @override
  void onClose() {
    removeRpc();
    super.onClose();
  }
}
