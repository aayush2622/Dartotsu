import 'dart:async';

import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;

import 'package:dartotsu_extension_bridge/toolkit.dart' as tk;

import '../../../Logger.dart';
import 'PlayerEngine.dart';
import 'PlayerSettings.dart';
import 'TrackPick.dart';

class TrackSelector {
  final PlayerEngine engine;
  final PlayerSettings settings;
  final bool Function() cancelled;

  const TrackSelector(this.engine, this.settings, this.cancelled);

  Future<void> run(v.Video video) async {
    try {
      await _timelineShown();
      await _tracksSettled();
      if (cancelled()) return;
      await Future.wait([_audio(video), _subtitle(video)]);
    } catch (e, st) {
      logError('TrackSelector', e, st);
    }
  }

  Future<void> _timelineShown() => engine.untilLoaded(cancelled);

  Future<void> _tracksSettled() async {
    var stable = 0;
    var seen = '';
    for (var i = 0; i < 40 && stable < 4; i++) {
      await Future<void>.delayed(const Duration(milliseconds: 300));
      if (cancelled()) return;
      final now =
          '${engine.audioTracks.value.length}/${engine.subtitleTracks.value.length}';
      stable = now == seen ? stable + 1 : 0;
      seen = now;
    }
  }

  Future<void> _audio(v.Video video) async {
    final tracks = engine.audioTracks.value;
    final loaded = {
      for (final t in tracks)
        if (t.external) (t.title ?? '').trim().toLowerCase(),
    };
    final all = [
      for (final t in tracks) _Audio.track(t),
      for (final f in externalAudioOf(video))
        if (!loaded.contains((f.label ?? '').trim().toLowerCase()))
          _Audio.file(f),
    ];
    if (all.isEmpty) return;
    final priority = languageList(settings.audioLanguage);
    final picked =
        tk.pickTrack(
          all,
          priority,
          language: (a) => a.language,
          title: (a) => a.title,
        ) ??
        (engine.activeAudio.value == null ? all.first : null);
    if (picked == null) return;
    final track = picked.track;
    if (track != null) return _useAudio(track);
    final file = picked.file!;
    await engine.addAudio(file.file!, file.label ?? '');
  }

  Future<void> _useAudio(PlayerTrack track) async {
    if (engine.activeAudio.value == track.id) return;
    await engine.chooseAudio(track.id);
    await _confirm('aid', track.id, () => engine.setAudio(track.id));
  }

  static List<v.Track> externalAudioOf(v.Video video) => [
    for (final t in video.audios ?? const <v.Track>[])
      if (t.file != null && t.file!.isNotEmpty) t,
  ];

  Future<void> _subtitle(v.Video video) async {
    if (!settings.showSubtitle) {
      if (engine.activeSubtitle.value != null) {
        await engine.chooseSubtitle(null);
      }
      return;
    }
    final embedded = engine.subtitleTracks.value;
    final external = externalOf(video);
    final priority = languageList(settings.subtitleLanguage);
    for (final wanted in priority) {
      final outside = _external(external, wanted);
      if (outside != null) return _addExternal(outside, wanted);
      final inside = pickTrack(embedded, [wanted], avoidSigns: true);
      if (inside != null) return _useEmbedded(inside);
    }
    if (engine.activeSubtitle.value != null) return;
    final inside =
        embedded.where((t) => !labelIsSigns(t.label)).firstOrNull ??
        embedded.firstOrNull;
    if (inside != null) return _useEmbedded(inside);
    final outside =
        external.where((t) => !labelIsSigns(t.label ?? '')).firstOrNull ??
        external.firstOrNull;
    if (outside != null) await _addExternal(outside, '');
  }

  static List<v.Track> externalOf(v.Video video) => [
    for (final t in video.subtitles ?? const <v.Track>[])
      if (t.file != null && t.file!.isNotEmpty) t,
  ];

  static v.Track? preferredExternal(v.Video video, String languages) {
    final tracks = externalOf(video);
    for (final wanted in languageList(languages)) {
      final found = _external(tracks, wanted);
      if (found != null) return found;
    }
    return null;
  }

  static v.Track? _external(List<v.Track> tracks, String wanted) {
    final matcher = languageMatcher(wanted);
    if (matcher == null) return null;
    final found = tracks.where((t) => matcher.matches(title: t.label)).toList();
    if (found.isEmpty) return null;
    return found.where((t) => !labelIsSigns(t.label ?? '')).firstOrNull ??
        found.first;
  }

  Future<void> _addExternal(v.Track track, String wanted) =>
      engine.addSubtitle(track.file!, track.label ?? wanted);

  Future<void> _useEmbedded(PlayerTrack track) async {
    if (engine.activeSubtitle.value == track.id) return;
    await engine.chooseSubtitle(track.id);
    await _confirm('sid', track.id, () => engine.setSubtitle(track.id));
  }

  Future<void> _confirm(
    String property,
    String id,
    Future<void> Function() apply,
  ) async {
    await Future<void>.delayed(const Duration(milliseconds: 800));
    if (cancelled()) return;
    if (await engine.currentTrack(property) != id) await apply();
  }
}

class _Audio {
  final PlayerTrack? track;
  final v.Track? file;

  const _Audio.track(PlayerTrack this.track) : file = null;

  const _Audio.file(v.Track this.file) : track = null;

  String? get title => track?.title ?? file?.label;

  String? get language => track?.language;
}
