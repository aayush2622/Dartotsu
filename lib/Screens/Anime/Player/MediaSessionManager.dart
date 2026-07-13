import 'dart:async';

import 'package:dartotsu/DataClass/Media.dart' as m;
import 'package:dartotsu/Screens/Anime/Player/Platform/MediaKitPlayer.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_media_session/flutter_media_session.dart';
import 'package:flutter_media_session/flutter_media_session_platform_interface.dart';
import 'package:get/get.dart';

class MediaSessionManager implements MediaSessionAdapter {
  final MediaKitPlayer player;

  final m.Media media;

  DEpisode episode;

  final VoidCallback? onNextEpisode;
  final VoidCallback? onPreviousEpisode;

  final FlutterMediaSession _session = FlutterMediaSession();

  StreamSubscription<MediaAction>? _actionSubscription;

  final List<Worker> _workers = [];

  bool _active = false;

  MediaSessionManager({
    required this.player,
    required this.media,
    required this.episode,
    this.onNextEpisode,
    this.onPreviousEpisode,
  });

  Future<void> initialize() async {
    if (_active) return;

    try {
      await _session.activate();
      await _session.setSkipIntervals(forwardSeconds: 10, backwardSeconds: 10);

      _session.bind(this);

      _active = true;

      await updateAvailableActions();

      _listenActions();
      _observePlayer();

      await sync();
    } catch (e, s) {
      debugPrint("MediaSession initialize failed: $e\n$s");
    }
  }

  @override
  void bind(FlutterMediaSession session) {}

  @override
  void unbind() {}

  void _listenActions() {
    _actionSubscription?.cancel();

    _actionSubscription = FlutterMediaSessionPlatform.instance.onMediaAction
        .listen((action) async {
          switch (action.name) {
            case "play":
              await player.play();
              break;

            case "pause":
              await player.pause();
              break;

            case "stop":
              await player.pause();
              await player.seek(Duration.zero);
              break;

            case "seekTo":
              final position = action.seekPosition;
              if (position != null) {
                await player.seek(position);
              }
              break;

            case "rewind":
              final target =
                  player.currentTime.value - const Duration(seconds: 10);

              await player.seek(target.isNegative ? Duration.zero : target);
              break;

            case "fastForward":
              final target =
                  player.currentTime.value + const Duration(seconds: 10);

              final duration = player.maxTime.value;

              await player.seek(target > duration ? duration : target);
              break;

            case "skipToNext":
              if (onNextEpisode != null) {
                onNextEpisode!();
              }
              break;

            case "skipToPrevious":
              if (onPreviousEpisode != null) {
                onPreviousEpisode!();
              }
              break;
          }
        });
  }

  void _observePlayer() {
    _workers.add(
      ever(player.currentTime, (_) {
        updatePlayback();
      }),
    );

    _workers.add(
      ever(player.maxTime, (_) {
        updateMetadata();
        updatePlayback();
      }),
    );

    _workers.add(
      ever(player.isPlaying, (_) {
        updatePlayback();
      }),
    );

    _workers.add(
      ever(player.isBuffering, (_) {
        updatePlayback();
      }),
    );

    _workers.add(
      ever(player.currentSpeed, (_) {
        updatePlayback();
      }),
    );

    _workers.add(
      ever(player.isCompleted, (_) {
        updateMetadata();
        updatePlayback();
      }),
    );
  }

  Future<void> sync() async {
    await updateMetadata();
    await updatePlayback();
  }

  Future<void> updateEpisode(DEpisode episode) async {
    this.episode = episode;

    await sync();
  }

  Future<void> updateMetadata() async {
    if (!_active) return;

    try {
      final artwork = episode.thumbnail ?? media.cover ?? media.banner;

      await FlutterMediaSessionPlatform.instance.updateMetadata(
        MediaMetadata(
          title: episode.name?.isNotEmpty == true
              ? "Ep ${episode.episodeNumber}: ${episode.name}"
              : "Ep ${episode.episodeNumber}",
          artist: media.mainName(),
          album: media.mainName(),
          artworkUri: artwork,
          duration: player.maxTime.value,
        ),
      );
    } catch (_) {}
  }

  Future<void> updatePlayback() async {
    if (!_active) return;

    try {
      PlaybackStatus status;

      if (player.isBuffering.value) {
        status = PlaybackStatus.buffering;
      } else if (player.isCompleted.value) {
        status = PlaybackStatus.ended;
      } else if (player.isPlaying.value) {
        status = PlaybackStatus.playing;
      } else {
        status = PlaybackStatus.paused;
      }

      await FlutterMediaSessionPlatform.instance.updatePlaybackState(
        PlaybackState(status: status, position: player.currentTime.value),
      );
    } catch (_) {}
  }

  Future<void> updateAvailableActions() async {
    if (!_active) return;

    try {
      final actions = <MediaAction>{
        MediaAction.play,
        MediaAction.pause,
        MediaAction.stop,
        MediaAction.seekTo,
        MediaAction.fastForward,
        MediaAction.rewind,
      };

      if (onNextEpisode != null) {
        actions.add(MediaAction.skipToNext);
      }

      if (onPreviousEpisode != null) {
        actions.add(MediaAction.skipToPrevious);
      }

      await FlutterMediaSessionPlatform.instance.updateAvailableActions(
        actions,
      );
    } catch (_) {}
  }

  Future<void> forceSync() => sync();

  Future<void> dispose() async {
    for (final worker in _workers) {
      worker.dispose();
    }
    _workers.clear();

    await _actionSubscription?.cancel();
    _actionSubscription = null;

    if (_active) {
      try {
        _session.unbind();
        await _session.deactivate();
      } catch (_) {}
    }

    _active = false;
  }
}
