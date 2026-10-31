import '../Preferences/IsarDataClasses/KeyValue/KeyValues.dart';
import '../Preferences/PrefManager.dart';
import 'SettingsMerge.dart';
import 'SettingsScope.dart';

class TitleScope {
  TitleScope._();

  static const resumeKey = 'OTHER/resume';
  static const _recordPrefix = 'OTHER/media/';
  static const _localPrefix = 'OTHER/media/local/';

  static const _recordLocal = {'matches', 'streams', 'tab'};
  static const _watchLocal = {'sourceId', 'sourceName', 'hiddenScanlators'};
  static const _itemLocal = {'thumb', 'episode', 'source'};
  static const _deviceMaps = {
    'player': 'PLAYER/playerSettings',
    'reader': 'READER/readerSettings',
  };

  static const resumeLimit = 30;

  static bool isResume(String key) => key == resumeKey;

  static bool syncable(String key) =>
      key == resumeKey ||
      (key.startsWith(_recordPrefix) && !key.startsWith(_localPrefix));

  static bool get enabled => PrefName.settingsSyncTitles.value;

  static bool includes(String key) => enabled && syncable(key);

  static Map<String, dynamic> _map(Object? value) =>
      value is Map ? value.cast<String, dynamic>() : <String, dynamic>{};

  static Map<String, dynamic> _without(
    Map<String, dynamic> map,
    Set<String> skip,
  ) => {
    for (final e in map.entries)
      if (!skip.contains(e.key)) e.key: e.value,
  };

  static String slot(Map<String, dynamic> item) =>
      '${item['service']}/${item['kind']}/${_map(item['media'])['id']}';

  static Map<String, dynamic> strip(String key, Map<String, dynamic> json) {
    final value = json['value'];
    if (value is! Map) return json;
    final map = value.cast<String, dynamic>();
    if (isResume(key)) {
      final items = map['items'];
      if (items is! List) return json;
      return {
        ...json,
        'value': {
          ...map,
          'items': [
            for (final item in items)
              if (item is Map) _without(_map(item), _itemLocal),
          ],
        },
      };
    }
    final out = _without(map, _recordLocal);
    final watch = out['watch'];
    if (watch is Map) {
      out['watch'] = _without(_map(watch), _watchLocal);
    }
    for (final e in _deviceMaps.entries) {
      final inner = out[e.key];
      if (inner is Map) {
        out[e.key] = SettingsScope.portable(e.value, _map(inner));
      }
    }
    return {...json, 'value': out};
  }

  static KeyValue restore(String key, Map<String, dynamic> json) {
    final value = json['value'];
    if (value is! Map) return KeyValue.fromJson(json);
    final remote = value.cast<String, dynamic>();
    final local = PrefManager.getCustomVal<Map>(
      SettingsScope.nameOf(key),
      location: PrefLocation.OTHER,
    );
    final localMap = local == null
        ? <String, dynamic>{}
        : Map<String, dynamic>.from(local);

    if (isResume(key)) {
      final own = {
        for (final item in (localMap['items'] as List? ?? const []))
          if (item is Map) '${slot(_map(item))}/${item['unit']}': _map(item),
      };
      return KeyValue.fromJson({
        ...json,
        'value': {
          ...remote,
          'items': [
            for (final item in (remote['items'] as List? ?? const []))
              if (item is Map)
                {
                  ..._map(item),
                  ...?_pick(
                    own['${slot(_map(item))}/${item['unit']}'],
                    _itemLocal,
                  ),
                },
          ],
        },
      });
    }

    final out = {...remote};
    for (final f in _recordLocal) {
      if (localMap.containsKey(f)) out[f] = localMap[f];
    }
    if (localMap['watch'] is Map) {
      out['watch'] = {
        ..._map(out['watch']),
        ...?_pick(_map(localMap['watch']), _watchLocal),
      };
    }
    for (final e in _deviceMaps.entries) {
      if (out[e.key] is Map || localMap[e.key] is Map) {
        out[e.key] = SettingsScope.withLocalFields(
          e.value,
          _map(out[e.key]),
          localMap[e.key] as Map?,
        );
      }
    }
    return KeyValue.fromJson({...json, 'value': out});
  }

  static Map<String, dynamic>? _pick(
    Map<String, dynamic>? from,
    Set<String> keys,
  ) {
    if (from == null) return null;
    return {
      for (final k in keys)
        if (from.containsKey(k)) k: from[k],
    };
  }

  static Map<String, dynamic>? combine(
    String key,
    SyncEntry local,
    SyncEntry remote,
  ) {
    final l = _map(local.json!['value']);
    final r = _map(remote.json!['value']);
    final template = remote.stamp > local.stamp ? remote.json! : local.json!;
    if (isResume(key)) {
      return {
        ...template,
        'value': {
          ..._map(template['value']),
          'items': _combineResume(l, r, local.stamp, remote.stamp),
        },
      };
    }
    final value = {..._map(template['value'])};
    final playback = _combinePlayback(_map(l['playback']), _map(r['playback']));
    if (playback.isNotEmpty) value['playback'] = playback;
    return {...template, 'value': value};
  }

  static Map<String, dynamic> _combinePlayback(
    Map<String, dynamic> a,
    Map<String, dynamic> b,
  ) {
    final out = <String, dynamic>{...a};
    for (final e in b.entries) {
      final mine = out[e.key];
      if (mine is! Map || e.value is! Map) {
        out[e.key] = e.value;
        continue;
      }
      final at = (mine['at'] as num?) ?? 0;
      final other = ((e.value as Map)['at'] as num?) ?? 0;
      if (other > at) out[e.key] = e.value;
    }
    return out;
  }

  static List<Map<String, dynamic>> _combineResume(
    Map<String, dynamic> local,
    Map<String, dynamic> remote,
    int localStamp,
    int remoteStamp,
  ) {
    List<Map<String, dynamic>> items(Map<String, dynamic> m) => [
      for (final item in (m['items'] as List? ?? const []))
        if (item is Map) _map(item),
    ];
    final mine = {for (final i in items(local)) slot(i): i};
    final theirs = {for (final i in items(remote)) slot(i): i};
    int at(Map<String, dynamic> i) => (i['at'] as num?)?.toInt() ?? 0;

    final out = <Map<String, dynamic>>[];
    for (final s in {...mine.keys, ...theirs.keys}) {
      final a = mine[s];
      final b = theirs[s];
      if (a != null && b != null) {
        out.add(at(b) > at(a) ? b : a);
      } else if (a != null) {
        if (at(a) > remoteStamp) out.add(a);
      } else if (b != null) {
        if (at(b) > localStamp) out.add(b);
      }
    }
    out.sort((x, y) => at(y).compareTo(at(x)));
    return out.take(resumeLimit).toList();
  }

  static int recordCount(Map<String, SyncEntry> entries) =>
      entries.entries.where((e) => !isResume(e.key) && !e.value.deleted).length;

  static int resumeCount(Map<String, SyncEntry> entries) {
    final items = _map(entries[resumeKey]?.json?['value'])['items'];
    return items is List ? items.length : 0;
  }
}
