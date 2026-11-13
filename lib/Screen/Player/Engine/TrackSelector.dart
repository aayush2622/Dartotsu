import 'dart:async';

import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;

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
      await Future.wait([_audio(), _subtitle(video)]);
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

  Future<void> _audio() async {
    final tracks = engine.audioTracks.value;
    if (tracks.isEmpty) return;
    final priority = languageList(settings.audioLanguage);
    final wanted = priority.isEmpty ? null : pickTrack(tracks, priority);
    final target =
        wanted ?? (engine.activeAudio.value == null ? tracks.first : null);
    if (target == null || engine.activeAudio.value == target.id) return;
    await engine.chooseAudio(target.id);
    await _confirm('aid', target.id, () => engine.setAudio(target.id));
  }

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
