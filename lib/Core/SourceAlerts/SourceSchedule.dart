import 'dart:math';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../Screen/Detail/Watch/Data/EpisodeUnits.dart';
import '../Services/Model/Media.dart';
import 'SourceSub.dart';

const _minute = 60000;
const _hour = 60 * _minute;
const _day = 24 * _hour;
const _maxReleases = 8;

enum SkipReason { completed, unstarted, unseen, window }

class SkipRules {
  final bool unstarted;
  final bool unseen;

  const SkipRules({this.unstarted = true, this.unseen = true});
}

class Latest {
  final double max;
  final List<double> values;
  final List<int> stamps;

  const Latest({required this.max, required this.values, required this.stamps});
}

class CheckInput {
  final List<DEpisode> raw;
  final bool anime;
  final String title;
  final String? season;

  const CheckInput({
    required this.raw,
    required this.anime,
    required this.title,
    this.season,
  });
}

Latest? checkEpisodes(CheckInput input) {
  final normalized = input.anime
      ? normalizeAll(input.raw)
      : prepareChapters(input.raw, input.title);
  return latestOf(normalized, season: input.season, anime: input.anime);
}

Latest? latestOf(
  List<DEpisode> normalized, {
  String? season,
  bool anime = true,
}) {
  var list = normalized;
  if (anime && season != null && seasonNames(normalized).isNotEmpty) {
    final wanted = season.trim();
    list = [
      for (final e in normalized)
        if (seasonOf(e) == wanted) e,
    ];
  }
  final dated = <double, int?>{};
  for (final e in list) {
    final value = double.tryParse(e.episodeNumber);
    if (value == null || !value.isFinite) continue;
    final stamp = parseUploadDate(e.dateUpload)?.millisecondsSinceEpoch;
    if (!dated.containsKey(value) || dated[value] == null) dated[value] = stamp;
  }
  if (dated.isEmpty) return null;
  final values = dated.keys.toList()..sort();
  final stamps = <int>[
    for (final v in values.reversed.take(_maxReleases))
      if (dated[v] != null) dated[v]!,
  ]..sort();
  return Latest(max: values.last, values: values, stamps: stamps);
}

String unitLabel(double value) =>
    value == value.truncateToDouble() ? '${value.toInt()}' : '$value';

List<int> mergeReleases(List<int> old, List<int> added, int now) {
  final all = <int>{
    for (final s in [...old, ...added])
      if (s > 946684800000 && s <= now + _day) s,
  }.toList()..sort();
  return all.length <= _maxReleases
      ? all
      : all.sublist(all.length - _maxReleases);
}

int _median(List<int> values) {
  final sorted = [...values]..sort();
  final mid = sorted.length ~/ 2;
  return sorted.length.isOdd
      ? sorted[mid]
      : ((sorted[mid - 1] + sorted[mid]) / 2).round();
}

int? releaseInterval(List<int> stamps) {
  final sorted = ({...stamps}.toList())..sort();
  if (sorted.length < 2) return null;
  final gaps = <int>[
    for (var i = 1; i < sorted.length; i++)
      if (sorted[i] - sorted[i - 1] >= _hour) sorted[i] - sorted[i - 1],
  ];
  if (gaps.isEmpty) return null;
  var middle = _median(gaps);
  final kept = [
    for (final g in gaps)
      if (g <= middle * 3) g,
  ];
  if (kept.isNotEmpty) middle = _median(kept);
  return middle.clamp(3 * _hour, 30 * _day);
}

int quietPeriod(int interval) => max(
  0,
  interval - (interval <= 14 * _day ? _day : (interval * 0.15).round()),
);

int? airingDue(SourceSub s, int now) {
  final at = s.airingAt;
  if (at == null) return null;
  final due = at + 30 * _minute;
  return due > now ? due : null;
}

int computeNextCheck(SourceSub s, int now) {
  final interval = releaseInterval(s.releases);
  var due = airingDue(s, now);
  if (due == null && interval != null && s.lastReleaseAt > 0) {
    due = s.lastReleaseAt + quietPeriod(interval);
  }
  if (due != null && due > now) return due;
  final since = s.lastReleaseAt > 0 ? now - s.lastReleaseAt : 0;
  final delay = since > 60 * _day
      ? 7 * _day
      : interval != null && since > interval * 3
      ? _day
      : interval != null && since > interval * 1.5
      ? 12 * _hour
      : 6 * _hour;
  return now + delay;
}

int failureBackoff(int failures) {
  final steps = min(max(failures, 1) - 1, 5);
  return min(_hour * (1 << steps), _day);
}

SkipReason? skipReason(
  SourceSub s,
  int now,
  SkipRules rules, {
  bool ignoreWindow = false,
}) {
  if (s.listStatus == 'COMPLETED' && s.total != null) {
    return SkipReason.completed;
  }
  final seen = s.seen;
  if (seen != null) {
    if (rules.unstarted && seen <= 0 && s.lastValue >= 1) {
      return SkipReason.unstarted;
    }
    if (rules.unseen && s.lastValue.floor() > seen) return SkipReason.unseen;
  }
  if (!ignoreWindow && now < s.nextCheckAt) return SkipReason.window;
  return null;
}

int? finalTotal(Media media) {
  final total = media.totalUnits;
  return media.status == 'FINISHED' && total != null && total > 0
      ? total
      : null;
}

bool reachedTotal(double max, int? total) =>
    total != null && total > 0 && max >= total;

class SubRelease {
  final int at;
  final double? episode;
  final bool expected;

  const SubRelease(this.at, {this.episode, this.expected = false});
}

List<SubRelease> subReleases(
  SourceSub s,
  int now, {
  int back = _day,
  int ahead = 6 * _day,
}) {
  final out = <SubRelease>[];
  for (final at in s.releases) {
    if (at < now - back || at > now) continue;
    out.add(
      SubRelease(
        at,
        episode: at == s.lastReleaseAt && s.lastValue > 0 ? s.lastValue : null,
      ),
    );
  }
  final interval = releaseInterval(s.releases);
  var next = s.airingAt != null && s.airingAt! > now ? s.airingAt : null;
  next ??= interval != null && s.lastReleaseAt > 0
      ? s.lastReleaseAt + interval
      : null;
  var number = s.lastValue + 1;
  var guard = 0;
  while (next != null && next > now && next <= now + ahead && guard++ < 8) {
    out.add(
      SubRelease(
        next,
        episode: s.lastValue > 0 ? number : null,
        expected: true,
      ),
    );
    if (interval == null) break;
    next += interval;
    number += 1;
  }
  return out;
}
