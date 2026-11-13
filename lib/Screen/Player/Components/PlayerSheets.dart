import '../../../Widgets/Components/ScrollConfig.dart';

import 'dart:async';

import '../../../Logger.dart';

import 'dart:typed_data';

import '../../../Utils/Functions/SnackBar.dart';

import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../Detail/Watch/Components/StreamGroups.dart';
import '../Engine/PlayerPlaylist.dart';
import '../Engine/PlayerSettings.dart';
import '../Engine/StreamFeed.dart';
import '../../Detail/Watch/Data/Media/MediaRecord.dart';
import '../../../Core/State/State.dart';
import '../../../Model/Setting.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/ChoiceSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/SheetTile.dart';
import '../../Settings/Categories/PlayerSettings.dart';
import '../../Settings/Widgets/SettingsGroup.dart';
import '../../Settings/Widgets/SettingSections.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../PlayerState.dart';
import 'PlayerSeekBar.dart';
import 'DelayRow.dart';
import 'OnlineSubtitleSheet.dart';
import 'PictureSheet.dart';
import 'ShaderPreview.dart';
import '../../../Utils/Extensions/Responsive.dart';

String speedLabel(double speed) =>
    '${speed == speed.roundToDouble() ? speed.toInt() : speed}x';

Future<void> showSpeedSheet(BuildContext context, PlayerState state) =>
    showCustomBottomDialog<void>(
      context,
      AppSheet(
        title: getString.playerSpeed,
        child: _SpeedPanel(state: state),
      ),
    );

class _SpeedPanel extends StatefulWidget {
  final PlayerState state;

  const _SpeedPanel({required this.state});

  @override
  State<_SpeedPanel> createState() => _SpeedPanelState();
}

class _SpeedPanelState extends State<_SpeedPanel> {
  late final speed = widget.state.engine.rate.value.live;

  double get _max => widget.state.settings.cursedSpeed ? 10.0 : 4.0;

  void _set(double value) {
    final snapped = ((value.clamp(0.25, _max)) * 20).round() / 20;
    speed.value = snapped;
    widget.state.setSpeed(snapped);
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final list = widget.state.settings.cursedSpeed
        ? playerCursedSpeeds
        : playerSpeeds;
    final current = speed.value;
    return Padding(
      padding: Dimens.sheetInsets,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            speedLabel(current),
            style: context.textTheme.headlineMedium?.copyWith(
              color: scheme.primary,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              IconButton(
                onPressed: () => _set(current - 0.05),
                icon: const Icon(Icons.remove_rounded),
              ),
              Expanded(
                child: Slider(
                  value: current.clamp(0.25, _max),
                  min: 0.25,
                  max: _max,
                  onChanged: _set,
                ),
              ),
              IconButton(
                onPressed: () => _set(current + 0.05),
                icon: const Icon(Icons.add_rounded),
              ),
            ],
          ),
          const SizedBox(height: 8),
          AppChoiceChips<double>(
            value: list.firstWhere(
              (s) => (current - s).abs() < 0.001,
              orElse: () => -1,
            ),
            onChanged: _set,
            options: [
              for (final s in list) AppSegment(s, label: speedLabel(s)),
            ],
          ),
        ],
      ),
    );
  }
}

Future<void> showQualitySheet(BuildContext context, PlayerState state) async {
  final engine = state.engine;
  final variants = engine.videoVariants.value;
  final active = engine.activeVariant.value;
  final picked = await state.whilePaused(
    () => showChoiceSheet<String>(
      context,
      title: getString.playerQuality,
      icon: Icons.hd_rounded,
      selected: variants.any((v) => v.id == active) ? active! : '',
      options: [for (final v in variants) ChoiceOption(v.id, v.label)],
    ),
  );
  if (picked != null && picked.isNotEmpty) await engine.setVariant(picked);
}

Widget _streamList(
  BuildContext context,
  PlayerState state,
  List<v.Video> list,
  int selected,
) {
  final record = state.record;
  final auto = (record?.streams.auto ?? false).live;
  return ListView(
    shrinkWrap: true,
    padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
    children: [
      if (record != null)
        Watch(
          () => SwitchListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 8),
            value: auto.value,
            title: Text(getString.playerAutoSelect),
            subtitle: Text(getString.playerAutoSelectDesc),
            onChanged: (value) {
              auto.value = value;
              record.streams.auto = value;
              MediaRecords.save(state.request.service!, state.request.media!);
            },
          ),
        ),
      GroupedStreams(
        list: list,
        icon: Icons.play_circle_outline_rounded,
        selected: selected,
        onPick: (i) => popPage(context, i),
      ),
    ],
  );
}

Future<int?> showStreamSheet(
  BuildContext context,
  PlayerState state,
  List<v.Video> list, {
  required int selected,
  bool dismissIsCancel = true,
}) => showCustomBottomDialog<int>(
  context,
  AppSheet(
    title: getString.playerStreams,
    child: _streamList(context, state, list, selected),
  ),
);

Future<int?> showPendingStreamSheet(
  BuildContext context,
  PlayerState state,
  StreamFeed feed,
) => showCustomBottomDialog<int>(
  context,
  _PendingStreams(state: state, feed: feed),
);

class _PendingStreams extends StatefulWidget {
  final PlayerState state;
  final StreamFeed feed;

  const _PendingStreams({required this.state, required this.feed});

  @override
  State<_PendingStreams> createState() => _PendingStreamsState();
}

class _PendingStreamsState extends State<_PendingStreams> {
  @override
  void initState() {
    super.initState();
    widget.feed.all.then((list) {
      if (!mounted) return;
      if (list.length == 1) return _close(0);
      if (list.isEmpty) return _close(null);
    }, onError: (Object e) {});
  }

  void _close(int? result) {
    final route = ModalRoute.of(context);
    if (route == null || !route.isActive) return;
    final nav = Navigator.of(context);
    if (route.isCurrent) {
      nav.pop<int?>(result);
    } else {
      nav.removeRoute(route, result);
    }
  }

  @override
  Widget build(BuildContext context) => AppSheet(
    title: getString.playerStreams,
    child: Watch(() {
      final error = widget.feed.failure.value;
      final list = widget.feed.videos.value;
      final done = widget.feed.done.value;
      if (error != null) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
          child: Text(
            '$error',
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.error,
            ),
          ),
        );
      }
      if (list.isEmpty) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const LinearProgressIndicator(),
              const SizedBox(height: 16),
              Text(
                getString.playerLoadingStreams,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        );
      }
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!done) const LinearProgressIndicator(),
          Flexible(child: _streamList(context, widget.state, list, -1)),
        ],
      );
    }),
  );
}

Future<void> showTracksSheet(
  BuildContext context,
  PlayerState state, {
  required bool audio,
}) async {
  final tab = 0.live;
  await state.whilePaused(() async {
    return showCustomBottomDialog<void>(
      context,
      AppSheet(
        title: audio ? getString.playerAudio : getString.playerSubtitles,
        expandable: true,
        child: audio
            ? _tracksList(context, state, audio: true)
            : Watch(
                () => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                      child: AppSegmented<int>(
                        expand: true,
                        value: tab.value,
                        onChanged: (v) => tab.value = v,
                        segments: [
                          AppSegment(0, label: getString.playerSubtitles),
                          AppSegment(1, label: getString.settings),
                        ],
                      ),
                    ),
                    Expanded(
                      child: tab.value == 0
                          ? _tracksList(context, state, audio: false)
                          : _subtitleSettings(context, state),
                    ),
                  ],
                ),
              ),
      ),
    );
  });
}

Widget _subtitleSettings(BuildContext context, PlayerState state) =>
    ScrollConfig(
      context,
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 24),
        child: Watch(() {
          state.settingsVersion.value;
          return SettingsGroup(
            settings: sectionRows(
              playerSettingsRows(
                context,
                settings: state.settings,
                update: (change) {
                  state.updateSettings(change);
                  state.settingsVersion.value++;
                },
                inPlayer: true,
              ),
              getString.playerSectionSubtitles,
            ),
          );
        }),
      ),
    );

Widget _tracksList(
  BuildContext context,
  PlayerState state, {
  required bool audio,
}) => Watch(() {
  final engine = state.engine;
  final tracks = (audio ? engine.audioTracks : engine.subtitleTracks).value;
  final active = audio ? engine.activeAudio.value : engine.activeSubtitle.value;
  final loaded = {
    for (final t in tracks)
      if (t.external) (t.title ?? '').trim().toLowerCase(),
  };
  final extra = <v.Track>[
    for (final t
        in (audio ? state.video?.audios : state.video?.subtitles) ??
            const <v.Track>[])
      if (t.file != null &&
          !loaded.contains((t.label ?? '').trim().toLowerCase()))
        t,
  ];
  return ListView(
    padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
    children: [
      DelayRow(
        label: audio
            ? getString.playerAudioDelay
            : getString.playerSubtitleDelay,
        delay: audio ? engine.audioDelay : engine.subtitleDelay,
        onChange: audio ? engine.setAudioDelay : engine.setSubtitleDelay,
      ),
      if (!audio)
        SheetTile(
          tinted: true,
          radius: BorderRadius.circular(20),
          leading: const Icon(Icons.subtitles_off_rounded),
          title: Text(getString.playerSubtitlesOff),
          selected: active == null,
          onTap: () {
            engine.noSubtitle();
            popPage(context);
          },
        ),
      const SizedBox(height: 8),
      for (final (i, t) in tracks.indexed)
        SheetTile(
          tinted: true,
          radius: BorderRadius.vertical(
            top: Radius.circular(i == 0 ? 20 : 6),
            bottom: Radius.circular(
              i == tracks.length - 1 && extra.isEmpty ? 20 : 6,
            ),
          ),
          leading: Icon(
            audio ? Icons.audiotrack_rounded : Icons.subtitles_rounded,
          ),
          title: Text(t.label),
          selected: active == t.id,
          onTap: () {
            audio ? engine.setAudio(t.id) : engine.setSubtitle(t.id);
            popPage(context);
          },
        ),
      for (final (i, t) in extra.indexed)
        SheetTile(
          tinted: true,
          radius: BorderRadius.vertical(
            top: Radius.circular(tracks.isEmpty && i == 0 ? 20 : 6),
            bottom: Radius.circular(i == extra.length - 1 ? 20 : 6),
          ),
          leading: const Icon(Icons.cloud_download_outlined),
          title: Text(t.label ?? t.file ?? ''),
          onTap: () {
            audio
                ? engine.addAudio(t.file!, t.label ?? '')
                : engine.addSubtitle(t.file!, t.label ?? '');
            popPage(context);
          },
        ),
      const SizedBox(height: 12),
      if (!audio) ...[
        FilledButton.tonalIcon(
          onPressed: () => showOnlineSubtitleSheet(context, state),
          icon: const Icon(Icons.cloud_download_rounded),
          label: Text(getString.playerOnlineSubtitles),
        ),
        const SizedBox(height: 8),
      ],
      OutlinedButton.icon(
        onPressed: () async {
          final picked = await FilePicker.pickFile(
            type: FileType.custom,
            allowedExtensions: audio ? audioExtensions : subtitleExtensions,
          );
          final path = picked?.path;
          if (path == null) return;
          if (audio) {
            await engine.addAudio(Uri.file(path).toString(), picked!.name);
          } else {
            await engine.addSubtitle(Uri.file(path).toString(), picked!.name);
          }
          if (context.mounted) popPage(context);
        },
        icon: const Icon(Icons.upload_file_rounded),
        label: Text(
          audio ? getString.playerAddAudio : getString.playerAddSubtitle,
        ),
      ),
    ],
  );
});

Future<void> showChaptersSheet(BuildContext context, PlayerState state) async {
  final chapters = state.shownChapters;
  final stamps = state.stamps.toList();
  final entries = <(double, String, bool)>[
    for (final c in chapters) (c.start, c.title, true),
    for (final s in stamps) (s.start, s.name, false),
  ]..sort((a, b) => a.$1.compareTo(b.$1));
  final now = state.engine.position.value.inSeconds;
  final current = entries.lastWhere(
    (e) => e.$1 <= now,
    orElse: () => (-1, '', true),
  );
  final picked = await state.whilePaused<double>(
    () => showCustomBottomDialog<double>(
      context,
      AppSheet(
        title: entries.isEmpty
            ? getString.playerNoChapters
            : getString.playerChapters,
        expandable: true,
        child: ListView.builder(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
          itemCount: entries.length,
          itemBuilder: (_, i) {
            final e = entries[i];
            return SheetTile(
              tinted: true,
              radius: BorderRadius.vertical(
                top: Radius.circular(i == 0 ? 20 : 6),
                bottom: Radius.circular(i == entries.length - 1 ? 20 : 6),
              ),
              leading: Text(
                formatClock(e.$1.toInt()),
                style: context.textTheme.labelMedium,
              ),
              title: Text(e.$2.isEmpty ? getString.playerChapter(i + 1) : e.$2),
              subtitle: e.$3 ? null : Text(getString.playerTimestamp),
              selected: e.$1 == current.$1 && e.$2 == current.$2,
              onTap: () => popPage(context, e.$1),
            );
          },
        ),
      ),
    ),
  );
  if (picked != null) state.seekTo(Duration(seconds: picked.toInt()));
}

Future<void> showPictureSheet(BuildContext context, PlayerState state) =>
    state.whilePaused<void>(() {
      final frame = Live<Uint8List?>(null);
      final capturing = true.live;
      unawaited(() async {
        try {
          frame.value = await state.engine.captureFrame(plain: true);
        } catch (e, st) {
          logError('PlayerSheets', e, st);
        }
        capturing.value = false;
      }());
      return showCustomBottomDialog<void>(
        context,
        Builder(
          builder: (sheet) => PictureSheet(
            settings: () => state.settings,
            frame: frame,
            capturing: capturing,
            onColor: state.setColor,
            onSave: (processed) => state.saveFrame(
              processed ? null : frame.value,
              processed: processed,
            ),
            problem: state.engine.shaderProblem,
            onPick: (profile, name, custom) =>
                state.setShaderMode(profile, name, custom: custom),
            onPreview: () async {
              final shot = frame.value;
              if (shot == null || !sheet.mounted) {
                snackString(getString.playerShadersPreviewFailed);
                return;
              }
              await navigateToPage<void>(
                sheet,
                ShaderPreview(
                  frame: shot,
                  settings: state.settings,
                  onUse: (profile, name, custom) =>
                      state.setShaderMode(profile, name, custom: custom),
                  onColor: state.setColor,
                  onManage: () => popPage(sheet),
                ),
              );
            },
          ),
        ),
      );
    });

Future<void> showPlayerOptions(BuildContext context, PlayerState state) =>
    state.whilePaused<void>(
      () => showCustomBottomDialog<void>(
        context,
        AppSheet(
          title: getString.playerSettingsTitle,
          expandable: true,
          child: ScrollConfig(
            context,
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 24),
              child: Watch(() {
                state.settingsVersion.value;
                final perTitle = state.perTitle.value;
                return SettingsGroup(
                  key: ValueKey(perTitle),
                  settings: [
                    if (state.request.tracked)
                      Setting.switchType(
                        name: getString.playerPerTitle,
                        description: getString.playerPerTitleDesc,
                        icon: Icons.bookmark_rounded,
                        isChecked: perTitle,
                        onSwitchChange: state.setPerTitle,
                      ),
                    ...playerSettingsRows(
                      context,
                      settings: state.settings,
                      update: (change) {
                        state.updateSettings(change);
                        state.settingsVersion.value++;
                      },
                      inPlayer: true,
                    ),
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );
