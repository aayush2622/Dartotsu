import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;

import '../../../Core/Services/MediaService.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../Detail/Watch/Data/EpisodeUnits.dart';

import 'package:dartotsu_extension_bridge/toolkit.dart';

class PlayItem {
  final String key;
  final String title;
  final String? subtitle;
  final double number;
  final DEpisode? episode;
  final WatchUnit? unit;
  final List<v.Video> fixed;

  const PlayItem({
    required this.key,
    required this.title,
    this.subtitle,
    this.number = 0,
    this.episode,
    this.unit,
    this.fixed = const [],
  });

  String get downloadKey => unit?.key ?? key;

  bool get hasFixedStreams => fixed.isNotEmpty;
}

class PlayRequest {
  final MediaService? service;
  final Media? media;
  final Source? source;
  final List<PlayItem> items;
  final int index;
  final List<v.Video> videos;
  final int videoIndex;
  final bool resume;
  final Future<List<PlayItem>?> Function()? loadItems;

  const PlayRequest({
    this.service,
    this.media,
    this.source,
    required this.items,
    this.index = 0,
    this.videos = const [],
    this.videoIndex = 0,
    this.resume = false,
    this.loadItems,
  });

  bool get tracked => service != null && media != null;

  PlayItem get current => items[index];
}

String streamLabel(v.Video video) {
  final title = video.title?.trim();
  return title != null && title.isNotEmpty ? title : video.quality;
}

int? bestStreamIndex(
  List<v.Video> videos,
  String last, {
  bool exact = false,
  int minimum = 45,
}) {
  if (videos.isEmpty) return null;
  final exactIndex = videos.indexWhere((e) => streamLabel(e) == last);
  if (exactIndex >= 0) return exactIndex;
  if (exact) return null;
  var best = -1;
  var score = 0;
  for (final (i, video) in videos.indexed) {
    final s = titleRatio(streamLabel(video), last);
    if (s > score) {
      score = s;
      best = i;
    }
  }
  return score >= minimum ? best : null;
}

void shareSubtitles(List<v.Video> videos) {
  final all = <v.Track>[];
  final seen = <String>{};
  for (final video in videos) {
    for (final track in video.subtitles ?? const <v.Track>[]) {
      final label = track.label;
      if (label != null && seen.add(label)) all.add(track);
    }
  }
  for (final video in videos) {
    if ((video.subtitles?.length ?? 0) <= 1 && all.isNotEmpty) {
      video.subtitles = [...all];
    }
  }
}

class StreamPick {
  final List<v.Video> videos;
  final int index;
  const StreamPick(this.videos, this.index);
}
