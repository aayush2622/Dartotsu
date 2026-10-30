import 'dart:io';

import 'package:flutter/material.dart';

import '../../Player/Engine/PlayerEngine.dart';
import '../../Player/Engine/PlayerSettings.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../Player/Components/MpvSheets.dart';
import '../../Player/Components/ShaderSheet.dart';
import '../../Player/PlayerLauncher.dart';
import '../Widgets/SegmentedSetting.dart';
import '../../Player/Engine/AudioDevices.dart';
import '../../../Widgets/Components/ChoiceSheet.dart';
import '../Widgets/SettingRows.dart';
import '../Widgets/SettingsGroup.dart';

typedef PlayerUpdate = void Function(void Function(PlayerSettings s) change);

const _videoSyncs = ['audio', 'display-resample', 'display-vdrop', 'desync'];
const _scalers = [
  'bilinear',
  'spline36',
  'ewa_lanczos',
  'ewa_lanczossharp',
  'mitchell',
  'catmull_rom',
];
const _toneMappings = [
  'auto',
  'bt.2390',
  'hable',
  'mobius',
  'reinhard',
  'clip',
];
const _audioChannels = ['auto', 'stereo', '5.1', '7.1'];

String decoderLabel(String id) => switch (id) {
  'auto-safe' => getString.playerDecoderAutoSafe,
  'sw' => getString.playerDecoderSoftware,
  'hw' => getString.playerDecoderHardware,
  'hw-plus' => getString.playerDecoderHardwarePlus,
  _ => getString.playerDecoderAuto,
};

String orientationLabel(String id) => switch (id) {
  'portrait' => getString.playerOrientationPortrait,
  'auto' => getString.playerOrientationAuto,
  _ => getString.playerOrientationLandscape,
};

List<Setting> playerSettingsRows(
  BuildContext context, {
  required PlayerSettings settings,
  required PlayerUpdate update,
  bool inPlayer = false,
}) {
  final s = settings;
  return [
    Setting.header(getString.playerSectionPlayback),
    choiceSetting<double>(
      context,
      name: getString.playerSpeed,
      icon: Icons.slow_motion_video_rounded,
      value: s.speed,
      values: s.cursedSpeed ? playerCursedSpeeds : playerSpeeds,
      label: (v) => '${v == v.roundToDouble() ? v.toInt() : v}x',
      onPick: (v) => update((x) => x.speed = v),
    ),
    switchSetting(
      getString.playerCursedSpeed,
      getString.playerCursedSpeedDesc,
      Icons.speed_rounded,
      s.cursedSpeed,
      (v) => update((x) => x.cursedSpeed = v),
    ),
    segmentedSetting<int>(
      name: getString.playerResize,
      icon: Icons.fit_screen_rounded,
      label: getString.playerResize,
      value: s.resizeMode,
      onChanged: (v) => update((x) => x.resizeMode = v),
      segments: [
        AppSegment(0, label: getString.playerFitFit),
        AppSegment(1, label: getString.playerFitCover),
        AppSegment(2, label: getString.playerFitStretch),
      ],
    ),
    sliderSetting(
      getString.playerSkipDuration,
      getString.playerSkipDurationDesc,
      Icons.fast_forward_rounded,
      s.skipDuration,
      5,
      300,
      (v) => update((x) => x.skipDuration = v),
    ),
    sliderSetting(
      getString.playerSeekDuration,
      getString.playerSeekDurationDesc,
      Icons.replay_10_rounded,
      s.seekDuration,
      5,
      60,
      (v) => update((x) => x.seekDuration = v),
    ),
    switchSetting(
      getString.playerOpenBig,
      getString.playerOpenBigDesc,
      Icons.fullscreen_rounded,
      s.openBig,
      (v) => update((x) => x.openBig = v),
    ),
    switchSetting(
      getString.playerPauseOnBlur,
      getString.playerPauseOnBlurDesc,
      Icons.pause_circle_outline_rounded,
      s.pauseOnBlur,
      (v) => update((x) => x.pauseOnBlur = v),
    ),
    switchSetting(
      getString.playerAutoPlay,
      getString.playerAutoPlayDesc,
      Icons.skip_next_rounded,
      s.autoPlay,
      (v) => update((x) => x.autoPlay = v),
    ),
    if (Platform.isAndroid)
      switchSetting(
        getString.playerAutoPip,
        getString.playerAutoPipDesc,
        Icons.picture_in_picture_alt_rounded,
        s.autoPip,
        (v) => update((x) => x.autoPip = v),
      ),
    sliderSetting(
      getString.playerAutoPlayDelay,
      s.autoPlayDelay == 0 ? getString.off : '${s.autoPlayDelay}s',
      Icons.timer_outlined,
      s.autoPlayDelay,
      0,
      15,
      (v) => update((x) => x.autoPlayDelay = v),
    ),
    sliderSetting(
      getString.playerWatchedAt,
      '${s.watchedAt}%',
      Icons.check_circle_outline_rounded,
      s.watchedAt,
      50,
      100,
      (v) => update((x) => x.watchedAt = v),
    ),
    switchSetting(
      getString.playerResume,
      getString.playerResumeDesc,
      Icons.history_rounded,
      s.resume,
      (v) => update((x) => x.resume = v),
    ),
    if (Platform.isAndroid || Platform.isIOS)
      choiceSetting<String>(
        context,
        name: getString.playerOrientation,
        icon: Icons.screen_rotation_rounded,
        value: s.orientation,
        values: playerOrientations,
        label: orientationLabel,
        onPick: (v) => update((x) => x.orientation = v),
      ),
    Setting.header(getString.playerSectionSkip),
    switchSetting(
      getString.playerAutoSkipOpening,
      getString.playerAutoSkipDesc,
      Icons.music_note_rounded,
      s.autoSkipOpening,
      (v) => update((x) => x.autoSkipOpening = v),
    ),
    switchSetting(
      getString.playerAutoSkipEnding,
      getString.playerAutoSkipDesc,
      Icons.movie_rounded,
      s.autoSkipEnding,
      (v) => update((x) => x.autoSkipEnding = v),
    ),
    switchSetting(
      getString.playerAutoSkipRecap,
      getString.playerAutoSkipDesc,
      Icons.history_toggle_off_rounded,
      s.autoSkipRecap,
      (v) => update((x) => x.autoSkipRecap = v),
    ),
    switchSetting(
      getString.playerSkipOnce,
      getString.playerSkipOnceDesc,
      Icons.looks_one_rounded,
      s.skipOnce,
      (v) => update((x) => x.skipOnce = v),
    ),
    Setting.header(getString.playerSectionGestures),
    switchSetting(
      getString.playerAdjustBrightness,
      getString.playerAdjustBrightnessDesc,
      Icons.brightness_6_rounded,
      s.adjustBrightness,
      (v) => update((x) => x.adjustBrightness = v),
    ),
    switchSetting(
      getString.playerAdjustVolume,
      getString.playerAdjustVolumeDesc,
      Icons.volume_up_rounded,
      s.adjustVolume,
      (v) => update((x) => x.adjustVolume = v),
    ),
    switchSetting(
      getString.playerSwapGestures,
      getString.playerSwapGesturesDesc,
      Icons.swap_horiz_rounded,
      s.swapGestures,
      (v) => update((x) => x.swapGestures = v),
    ),
    switchSetting(
      getString.playerHoldToSpeed,
      getString.playerHoldToSpeedDesc,
      Icons.touch_app_rounded,
      s.holdToSpeed,
      (v) => update((x) => x.holdToSpeed = v),
    ),
    switchSetting(
      getString.playerThumbless,
      getString.playerThumblessDesc,
      Icons.linear_scale_rounded,
      s.thumbLessSeekBar,
      (v) => update((x) => x.thumbLessSeekBar = v),
    ),
    switchSetting(
      getString.playerSeekPreview,
      getString.playerSeekPreviewDesc,
      Icons.image_search_rounded,
      s.seekPreview,
      (v) => update((x) => x.seekPreview = v),
    ),
    Setting.header(getString.playerSectionSubtitles),
    switchSetting(
      getString.playerShowSubtitles,
      getString.playerShowSubtitlesDesc,
      Icons.subtitles_rounded,
      s.showSubtitle,
      (v) => update((x) => x.showSubtitle = v),
    ),
    Setting.normal(
      name: getString.playerSubtitleLanguage,
      description: s.subtitleLanguage,
      icon: Icons.translate_rounded,
      isActivity: true,
      onClick: () {
        final controller = TextEditingController(text: s.subtitleLanguage);
        AlertDialogBuilder(context)
            .setTitle(getString.playerSubtitleLanguage)
            .setCustomView(
              TextField(
                controller: controller,
                decoration: const InputDecoration(hintText: 'English, Spanish'),
              ),
            )
            .setNegativeButton(getString.cancel, null)
            .setPositiveButton(getString.ok, () {
              final value = controller.text.trim();
              if (value.isNotEmpty) update((x) => x.subtitleLanguage = value);
            })
            .show();
      },
    ),
    Setting.normal(
      name: getString.playerAudioLanguage,
      description: s.audioLanguage.isEmpty
          ? getString.settingDefault
          : s.audioLanguage,
      icon: Icons.record_voice_over_rounded,
      isActivity: true,
      onClick: () {
        final controller = TextEditingController(text: s.audioLanguage);
        AlertDialogBuilder(context)
            .setTitle(getString.playerAudioLanguage)
            .setMessage(getString.playerLanguageOrderHint)
            .setCustomView(
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  hintText: 'Japanese, English',
                ),
              ),
            )
            .setNegativeButton(getString.cancel, null)
            .setPositiveButton(
              getString.ok,
              () => update((x) => x.audioLanguage = controller.text.trim()),
            )
            .show();
      },
    ),
    sliderSetting(
      getString.playerSubtitleSize,
      '',
      Icons.format_size_rounded,
      s.subtitleSize,
      8,
      80,
      (v) => update((x) => x.subtitleSize = v),
    ),
    sliderSetting(
      getString.playerSubtitleWeight,
      '',
      Icons.format_bold_rounded,
      s.subtitleWeight,
      0,
      8,
      (v) => update((x) => x.subtitleWeight = v),
    ),
    sliderSetting(
      getString.playerSubtitleBottom,
      '',
      Icons.vertical_align_bottom_rounded,
      s.subtitleBottomPadding,
      0,
      200,
      (v) => update((x) => x.subtitleBottomPadding = v),
    ),
    fontSetting(
      context,
      name: getString.playerSubtitleFont,
      value: s.subtitleFont,
      onPick: (v) => update((x) => x.subtitleFont = v),
    ),
    colorSetting(
      context,
      getString.playerSubtitleColor,
      Icons.palette_rounded,
      s.subtitleColor,
      (v) => update((x) => x.subtitleColor = v),
    ),
    colorSetting(
      context,
      getString.playerSubtitleBackground,
      Icons.format_color_fill_rounded,
      s.subtitleBackgroundColor,
      (v) => update((x) => x.subtitleBackgroundColor = v),
    ),
    colorSetting(
      context,
      getString.playerSubtitleOutline,
      Icons.border_color_rounded,
      s.subtitleOutlineColor,
      (v) => update((x) => x.subtitleOutlineColor = v),
    ),
    switchSetting(
      getString.playerLibass,
      getString.playerLibassDesc,
      Icons.text_fields_rounded,
      s.useLibass,
      (v) => update((x) => x.useLibass = v),
    ),
    Setting.header(getString.playerSectionShaders),
    switchSetting(
      getString.playerShadersEnable,
      getString.playerShadersEnableDesc,
      Icons.auto_awesome_rounded,
      s.shaders,
      (v) => update((x) => x.shaders = v),
    ),
    Setting.normal(
      name: getString.playerShaders,
      description: s.shaders && s.shader.isNotEmpty
          ? s.shader
          : getString.playerShadersOff,
      icon: Icons.photo_filter_rounded,
      isActivity: true,
      onClick: () => showCustomBottomDialog<void>(
        context,
        ShaderSheet(
          settings: () => s,
          onPick: (profile, name, custom) async => update((x) {
            x.shaderProfile = profile;
            x.shader = name;
            x.shaders = name.isNotEmpty;
            if (custom != null) x.customShaders = custom;
          }),
        ),
      ),
    ),
    if (!inPlayer) ...[
      Setting.header(getString.playerSectionEngine),
      choiceSetting<String>(
        context,
        name: getString.playerDecoder,
        icon: Icons.memory_rounded,
        value: s.decoder,
        values: playerDecoders,
        label: decoderLabel,
        onPick: (v) => update((x) => x.decoder = v),
      ),
      if (!Platform.isAndroid && !Platform.isIOS)
        switchSetting(
          getString.playerSoftwareRender,
          getString.playerSoftwareRenderDesc,
          Icons.developer_board_off_rounded,
          PlayerEngine.softwareRender,
          (v) {
            PlayerEngine.softwareRender = v;
            update((_) {});
          },
        ),
      if (Platform.isAndroid)
        choiceSetting<String>(
          context,
          name: getString.playerVideoOutput,
          icon: Icons.tv_rounded,
          value: s.videoOutput,
          values: playerVideoOutputs,
          label: (v) => v,
          onPick: (v) => update((x) => x.videoOutput = v),
        ),
      Setting.normal(
        name: getString.playerAudioOutput,
        description: s.audioOutput,
        icon: Icons.speaker_rounded,
        isActivity: true,
        onClick: () async {
          final devices = await listAudioDevices();
          if (!context.mounted) return;
          final picked = await showChoiceSheet<String>(
            context,
            title: getString.playerAudioOutput,
            icon: Icons.speaker_rounded,
            selected: s.audioOutput,
            options: [
              for (final d in audioDrivers(devices)) ChoiceOption(d, d),
            ],
          );
          if (picked == null) return;
          update((x) {
            x.audioOutput = picked;
            x.audioDevice = 'auto';
          });
        },
      ),
      Setting.normal(
        name: getString.playerAudioDevice,
        description: s.audioDevice,
        icon: Icons.headphones_rounded,
        isActivity: true,
        onClick: () async {
          final devices = await listAudioDevices();
          if (!context.mounted) return;
          final driver = s.audioOutput;
          final shown = [
            for (final d in devices)
              if (d.name == 'auto' || driver == 'auto' || d.driver == driver) d,
          ];
          final picked = await showChoiceSheet<String>(
            context,
            title: getString.playerAudioDevice,
            icon: Icons.headphones_rounded,
            selected: s.audioDevice,
            options: [
              for (final d in shown)
                ChoiceOption(
                  d.name,
                  d.description,
                  subtitle: d.name == d.description ? null : d.name,
                ),
            ],
          );
          if (picked != null) update((x) => x.audioDevice = picked);
        },
      ),
      choiceSetting<String>(
        context,
        name: getString.playerAudioChannels,
        icon: Icons.surround_sound_rounded,
        value: s.audioChannels,
        values: _audioChannels,
        label: (v) => v,
        onPick: (v) => update((x) => x.audioChannels = v),
      ),
      sliderSetting(
        getString.playerBuffer,
        getString.playerBufferDesc,
        Icons.storage_rounded,
        s.bufferMb,
        16,
        512,
        (v) => update((x) => x.bufferMb = v),
      ),
      Setting.header(getString.playerSectionMpv),
      switchSetting(
        getString.playerUseMpvConf,
        getString.playerUseMpvConfDesc,
        Icons.description_rounded,
        s.useMpvConfig,
        (v) => update((x) => x.useMpvConfig = v),
      ),
      Setting.normal(
        name: getString.playerMpvConf,
        description: getString.playerMpvConfEdit,
        icon: Icons.edit_note_rounded,
        isActivity: true,
        onClick: () =>
            showCustomBottomDialog<void>(context, const MpvConfSheet()),
      ),
      switchSetting(
        getString.playerUseScripts,
        getString.playerUseScriptsDesc,
        Icons.extension_rounded,
        s.useScripts,
        (v) => update((x) => x.useScripts = v),
      ),
      Setting.normal(
        name: getString.playerScripts,
        description: getString.playerScriptsManage,
        icon: Icons.code_rounded,
        isActivity: true,
        onClick: () => showCustomBottomDialog<void>(
          context,
          MpvScriptsSheet(
            settings: () => s,
            onDisabled: (list) => update((x) => x.disabledScripts = list),
          ),
        ),
      ),
      switchSetting(
        getString.playerTuning,
        getString.playerTuningDesc,
        Icons.science_rounded,
        s.tuning,
        (v) => update((x) => x.tuning = v),
      ),
      if (s.tuning) ...[
        choiceSetting<String>(
          context,
          name: getString.playerVideoSync,
          icon: Icons.sync_rounded,
          value: s.videoSync,
          values: _videoSyncs,
          label: (v) => v,
          onPick: (v) => update((x) => x.videoSync = v),
        ),
        switchSetting(
          getString.playerInterpolation,
          getString.playerInterpolationDesc,
          Icons.animation_rounded,
          s.interpolation,
          (v) => update((x) => x.interpolation = v),
        ),
        switchSetting(
          getString.playerPitch,
          getString.playerPitchDesc,
          Icons.graphic_eq_rounded,
          s.pitchCorrection,
          (v) => update((x) => x.pitchCorrection = v),
        ),
        sliderSetting(
          getString.playerCacheSeconds,
          '',
          Icons.timelapse_rounded,
          s.cacheSeconds,
          10,
          1800,
          (v) => update((x) => x.cacheSeconds = v),
        ),
        sliderSetting(
          getString.playerReadahead,
          '',
          Icons.fast_forward_rounded,
          s.readahead,
          5,
          300,
          (v) => update((x) => x.readahead = v),
        ),
        sliderSetting(
          getString.playerThreads,
          '',
          Icons.developer_board_rounded,
          s.decoderThreads,
          0,
          16,
          (v) => update((x) => x.decoderThreads = v),
        ),
        switchSetting(
          getString.playerDeband,
          getString.playerDebandDesc,
          Icons.gradient_rounded,
          s.deband,
          (v) => update((x) => x.deband = v),
        ),
        sliderSetting(
          getString.playerDebandIterations,
          '',
          Icons.repeat_rounded,
          s.debandIterations,
          1,
          8,
          (v) => update((x) => x.debandIterations = v),
        ),
        sliderSetting(
          getString.playerDebandThreshold,
          '',
          Icons.tune_rounded,
          s.debandThreshold,
          0,
          200,
          (v) => update((x) => x.debandThreshold = v),
        ),
        switchSetting(
          getString.playerCorrectDownscaling,
          '',
          Icons.compress_rounded,
          s.correctDownscaling,
          (v) => update((x) => x.correctDownscaling = v),
        ),
        switchSetting(
          getString.playerSigmoid,
          '',
          Icons.show_chart_rounded,
          s.sigmoidUpscaling,
          (v) => update((x) => x.sigmoidUpscaling = v),
        ),
        choiceSetting<String>(
          context,
          name: getString.playerScale,
          icon: Icons.zoom_out_map_rounded,
          value: s.scale,
          values: _scalers,
          label: (v) => v,
          onPick: (v) => update((x) => x.scale = v),
        ),
        choiceSetting<String>(
          context,
          name: getString.playerCscale,
          icon: Icons.color_lens_rounded,
          value: s.cscale,
          values: _scalers,
          label: (v) => v,
          onPick: (v) => update((x) => x.cscale = v),
        ),
        choiceSetting<String>(
          context,
          name: getString.playerDscale,
          icon: Icons.zoom_in_map_rounded,
          value: s.dscale,
          values: _scalers,
          label: (v) => v,
          onPick: (v) => update((x) => x.dscale = v),
        ),
        choiceSetting<String>(
          context,
          name: getString.playerToneMapping,
          icon: Icons.hdr_on_rounded,
          value: s.toneMapping,
          values: _toneMappings,
          label: (v) => v,
          onPick: (v) => update((x) => x.toneMapping = v),
        ),
        sliderSetting(
          getString.playerTargetPeak,
          '',
          Icons.light_mode_rounded,
          s.targetPeak,
          10,
          1000,
          (v) => update((x) => x.targetPeak = v),
        ),
      ],
      const Setting.header(''),
      Setting.normal(
        name: getString.playerReset,
        description: getString.playerResetDesc,
        icon: Icons.restart_alt_rounded,
        onClick: () => AlertDialogBuilder(context)
            .setTitle(getString.playerReset)
            .setMessage(getString.playerResetConfirm)
            .setNegativeButton(getString.cancel, null)
            .setPositiveButton(getString.reset, () {
              PlayerPrefs.reset();
              snackString(getString.playerResetDone);
            })
            .show(),
      ),
    ],
  ];
}

List<Setting> localPlayRows(BuildContext context) => [
  Setting.normal(
    name: getString.playerOpenFiles,
    description: getString.playerOpenFilesDesc,
    icon: Icons.video_library_rounded,
    isActivity: true,
    onClick: pickAndPlayFiles,
  ),
  Setting.normal(
    name: getString.playerOpenFolder,
    description: getString.playerOpenFolderDesc,
    icon: Icons.folder_rounded,
    isActivity: true,
    onClick: pickAndPlayFolder,
  ),
  Setting.normal(
    name: getString.playerNetworkStream,
    description: getString.playerNetworkStreamDesc,
    icon: Icons.stream_rounded,
    isActivity: true,
    onClick: () => askNetworkStream(context),
  ),
  Setting.normal(
    name: getString.playerTorrent,
    description: getString.playerTorrentDesc,
    icon: Icons.hub_rounded,
    isActivity: true,
    onClick: () => askTorrent(context),
  ),
];

List<Setting> _globalPlayerRows(BuildContext context) => playerSettingsRows(
  context,
  settings: PlayerPrefs.global.value,
  update: PlayerPrefs.update,
);

List<Setting> playerSettings(BuildContext context) =>
    _globalPlayerRows(context);

Map<String, SectionStyle> get playerSectionIcons => {
  getString.playerSectionPlayback: SectionStyle(
    Icons.play_circle_outline_rounded,
    getString.secPlayerPlayback,
  ),
  getString.playerSectionSkip: SectionStyle(
    Icons.skip_next_rounded,
    getString.secPlayerSkip,
  ),
  getString.playerSectionGestures: SectionStyle(
    Icons.swipe_rounded,
    getString.secPlayerControls,
  ),
  getString.playerSectionSubtitles: SectionStyle(
    Icons.subtitles_rounded,
    getString.secPlayerSubtitles,
  ),
  getString.playerSectionShaders: SectionStyle(
    Icons.auto_awesome_rounded,
    getString.secPlayerShaders,
  ),
  getString.playerSectionEngine: SectionStyle(
    Icons.memory_rounded,
    getString.secPlayerEngine,
  ),
  getString.playerSectionMpv: SectionStyle(
    Icons.terminal_rounded,
    getString.secPlayerMpv,
  ),
};
