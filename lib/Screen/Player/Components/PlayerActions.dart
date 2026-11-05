import 'dart:async';

import 'package:flutter/material.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../Engine/Pip.dart';
import '../PlayerState.dart';
import 'CastSheet.dart';
import 'PlayerSheets.dart';
import 'SkipSubmitSheet.dart';

class PlayerAction {
  final String id;
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const PlayerAction(this.id, this.icon, this.label, this.onTap);
}

const playerChipOrder = [
  'speed',
  'subtitles',
  'audio',
  'chapters',
  'fit',
  'options',
  'picture',
  'skipSubmit',
  'together',
  'cast',
];

const playerFullscreenOnly = {'episodes', 'lock'};

const playerCompactFixed = {'streams', 'quality', 'pip', 'fullscreen'};

Future<void> openStreamPicker(BuildContext context, PlayerState state) =>
    state.whilePaused<void>(() async {
      if (!context.mounted) return;
      final picked = await showStreamSheet(
        context,
        state,
        state.videos.toList(),
        selected: state.videoIndex.value,
      );
      if (picked != null && picked != state.videoIndex.value) {
        await state.selectStream(picked);
      }
    });

PlayerAction? playerAction(
  BuildContext context,
  PlayerState state,
  String id, {
  required bool compact,
}) {
  switch (id) {
    case 'quality':
      if (state.engine.videoVariants.value.length < 2) return null;
      return PlayerAction(
        id,
        Icons.hd_rounded,
        getString.playerQuality,
        () => showQualitySheet(context, state),
      );
    case 'episodes':
      if (state.items.length < 2) return null;
      return PlayerAction(
        id,
        Icons.video_collection_rounded,
        getString.playerEpisodes,
        () => state.panel.value = !state.panel.value,
      );
    case 'speed':
      return PlayerAction(
        id,
        Icons.slow_motion_video_rounded,
        getString.playerSpeed,
        () => showSpeedSheet(context, state),
      );
    case 'lock':
      return PlayerAction(
        id,
        Icons.lock_open_rounded,
        getString.playerLock,
        state.toggleLock,
      );
    case 'options':
      return PlayerAction(
        id,
        Icons.video_settings_rounded,
        getString.playerSettingsChip,
        () => showPlayerOptions(context, state),
      );
    case 'streams':
      if (state.videos.length < 2 && !state.request.tracked) return null;
      return PlayerAction(
        id,
        Icons.source_rounded,
        getString.playerStreams,
        () => unawaited(openStreamPicker(context, state)),
      );
    case 'subtitles':
      return PlayerAction(
        id,
        Icons.subtitles_rounded,
        getString.playerSubtitles,
        () => showTracksSheet(context, state, audio: false),
      );
    case 'audio':
      return PlayerAction(
        id,
        Icons.audiotrack_rounded,
        getString.playerAudio,
        () => showTracksSheet(context, state, audio: true),
      );
    case 'chapters':
      if (!state.hasChapters) return null;
      return PlayerAction(
        id,
        Icons.list_alt_rounded,
        getString.playerChapters,
        () => showChaptersSheet(context, state),
      );
    case 'pip':
      if (!PlayerPip.supported) return null;
      return PlayerAction(
        id,
        Icons.picture_in_picture_alt_rounded,
        getString.playerPip,
        state.enterPip,
      );
    case 'fit':
      return PlayerAction(
        id,
        Icons.fit_screen_rounded,
        getString.playerResize,
        state.cycleFit,
      );
    case 'fullscreen':
      return PlayerAction(
        id,
        compact ? Icons.fullscreen_rounded : Icons.fullscreen_exit_rounded,
        getString.playerFullscreen,
        state.toggleFullscreen,
      );
    case 'picture':
      return PlayerAction(
        id,
        Icons.photo_filter_rounded,
        getString.playerPicture,
        () => showPictureSheet(context, state),
      );
    case 'skipSubmit':
      if (!state.canSubmitSkips) return null;
      return PlayerAction(
        id,
        Icons.cloud_upload_rounded,
        getString.playerSkipSubmit,
        () => showSkipSubmitSheet(context, state),
      );
    case 'together':
      final together = state.together;
      if (!together.active && !together.canShare) return null;
      return PlayerAction(
        id,
        together.unread.value > 0
            ? Icons.mark_unread_chat_alt_rounded
            : Icons.groups_rounded,
        together.connected
            ? '${getString.togetherChip} · ${together.users.length}'
            : getString.togetherChip,
        () {
          if (!together.active) unawaited(together.startHosting());
          state.chatOpen.value = true;
        },
      );
    case 'cast':
      return PlayerAction(
        id,
        state.cast.active ? Icons.cast_connected_rounded : Icons.cast_rounded,
        state.cast.active
            ? getString.castNowCasting(state.cast.device.value!.name)
            : getString.castTitle,
        () => showCastSheet(context, state),
      );
  }
  return null;
}
