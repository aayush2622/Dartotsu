import 'dart:convert';
import 'dart:math';

class SyncEntry {
  final int stamp;
  final Map<String, dynamic>? json;

  const SyncEntry(this.stamp, this.json);

  bool get deleted => json == null;

  SyncEntry withStamp(int stamp) => SyncEntry(stamp, json);

  bool sameValue(SyncEntry other) =>
      jsonEncode(json?['value']) == jsonEncode(other.json?['value']) &&
      deleted == other.deleted;

  Map<String, dynamic> toJson() => {'t': stamp, 'v': ?json};

  factory SyncEntry.fromJson(Map<String, dynamic> map) =>
      SyncEntry(map['t'] as int, (map['v'] as Map?)?.cast<String, dynamic>());
}

class SettingsMerge {
  final Map<String, SyncEntry> merged;
  final Map<String, SyncEntry> apply;
  final bool dirty;
  final Set<String> signedOut;

  const SettingsMerge(
    this.merged,
    this.apply,
    this.dirty, [
    this.signedOut = const {},
  ]);
}

const tombstoneLife = Duration(days: 90);

typedef Combine =
    Map<String, dynamic>? Function(
      String key,
      SyncEntry local,
      SyncEntry remote,
    );

Map<String, dynamic>? _combined(
  Combine? combine,
  String key,
  SyncEntry l,
  SyncEntry r,
) {
  if (combine == null || l.deleted || r.deleted || l.sameValue(r)) return null;
  return combine(key, l, r);
}

SettingsMerge mergeSettings(
  Map<String, SyncEntry> local,
  Map<String, SyncEntry> remote,
  int now, {
  Combine? combine,
}) {
  final merged = <String, SyncEntry>{};
  final apply = <String, SyncEntry>{};
  var dirty = false;
  final oldest = now - tombstoneLife.inMilliseconds;

  for (final key in {...local.keys, ...remote.keys}) {
    final l = local[key];
    final r = remote[key];
    if (r == null) {
      merged[key] = l!.stamp == 0 ? l.withStamp(now) : l;
      dirty = true;
    } else if (l == null) {
      merged[key] = r;
      if (!r.deleted) apply[key] = r;
    } else if (_combined(combine, key, l, r) case final value?) {
      final entry = SyncEntry(max(l.stamp, r.stamp), value);
      merged[key] = entry;
      if (!entry.sameValue(l)) apply[key] = entry;
      if (!entry.sameValue(r)) dirty = true;
    } else if (r.stamp > l.stamp) {
      merged[key] = r;
      if (!l.sameValue(r)) apply[key] = r;
    } else if (l.stamp > r.stamp) {
      merged[key] = l;
      dirty = true;
    } else {
      merged[key] = r;
    }
  }

  final before = merged.length;
  merged.removeWhere((_, e) => e.deleted && e.stamp < oldest);
  if (merged.length != before) dirty = true;
  return SettingsMerge(merged, apply, dirty);
}

SettingsMerge mergeSecrets(
  Map<String, SyncEntry> local,
  Map<String, SyncEntry> remote,
  int now,
) {
  final result = mergeSettings(local, remote, now);
  final merged = {...result.merged};
  final apply = {...result.apply};
  final signedOut = <String>{};
  for (final e in local.entries) {
    if (!e.value.deleted) continue;
    signedOut.add(e.key);
    apply.remove(e.key);
    final theirs = remote[e.key];
    if (theirs == null) {
      merged.remove(e.key);
    } else {
      merged[e.key] = theirs;
    }
  }
  apply.removeWhere((_, e) => e.deleted);
  final dirty =
      merged.length != remote.length ||
      merged.entries.any((e) {
        final theirs = remote[e.key];
        return theirs == null ||
            theirs.stamp != e.value.stamp ||
            !theirs.sameValue(e.value);
      });
  return SettingsMerge(merged, apply, dirty, signedOut);
}
