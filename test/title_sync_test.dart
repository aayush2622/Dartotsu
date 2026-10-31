import 'dart:convert';

import 'package:dartotsu/Core/SettingsSync/SettingsMerge.dart';
import 'package:dartotsu/Core/SettingsSync/TitleScope.dart';
import 'package:flutter_test/flutter_test.dart';

Map<String, dynamic> kv(String key, Map<String, dynamic> value) => {
  'key': key,
  'type': 'KeyValue',
  'dataType': 'map',
  'value': value,
};

Map<String, dynamic> playback(int at, int position) => {
  'position': position,
  'duration': 1400,
  'at': at,
};

Map<String, dynamic> item(String id, String unit, int at) => {
  'kind': 'watch',
  'service': 'anilist',
  'media': {'id': id},
  'unit': unit,
  'at': at,
  'thumb': '/tmp/$id.img',
  'episode': {'url': 'x'},
  'source': 'src',
};

void main() {
  const record = 'OTHER/media/anilist/1';

  test('only real titles and the shelf are in scope', () {
    expect(TitleScope.syncable(record), isTrue);
    expect(TitleScope.syncable('OTHER/resume'), isTrue);
    expect(TitleScope.syncable('OTHER/media/local/book'), isFalse);
    expect(TitleScope.syncable('OTHER/downloads'), isFalse);
    expect(TitleScope.syncable('OTHER/pendingWrites'), isFalse);
    expect(TitleScope.syncable('OTHER/sourceSubs'), isFalse);
  });

  test('extension-bound fields stay out of a record', () {
    final out = TitleScope.strip(
      record,
      kv(record, {
        'watch': {'viewType': 1, 'sourceId': 'a', 'sourceName': 'A'},
        'matches': {'a': {}},
        'streams': {'auto': true},
        'tab': 2,
        'playback': {'1': playback(5, 100)},
        'player': {'speed': 1.5, 'decoder': 'sw'},
        'bookmarks': [],
      }),
    );
    final value = out['value'] as Map;
    expect(
      value.keys,
      containsAll(['watch', 'playback', 'player', 'bookmarks']),
    );
    expect(value.containsKey('matches'), isFalse);
    expect(value.containsKey('streams'), isFalse);
    expect(value.containsKey('tab'), isFalse);
    expect(value['watch'], {'viewType': 1});
    expect(value['player'], {'speed': 1.5});
  });

  test('stripping an already portable record changes nothing', () {
    final json = kv(record, {
      'watch': {'viewType': 1},
      'playback': {'1': playback(5, 100)},
      'bookmarks': [],
    });
    expect(jsonEncode(TitleScope.strip(record, json)), jsonEncode(json));
  });

  test('playback merges per episode, newest position wins', () {
    final local = SyncEntry(
      10,
      kv(record, {
        'saveProgress': true,
        'playback': {'1': playback(100, 900), '2': playback(50, 10)},
      }),
    );
    final remote = SyncEntry(
      20,
      kv(record, {
        'saveProgress': false,
        'playback': {'2': playback(80, 700), '3': playback(60, 20)},
      }),
    );
    final out = TitleScope.combine(record, local, remote)!;
    final value = out['value'] as Map;
    expect(value['saveProgress'], false);
    final pb = value['playback'] as Map;
    expect(pb.keys, unorderedEquals(['1', '2', '3']));
    expect(pb['2']['position'], 700);
    expect(pb['1']['position'], 900);
  });

  test(
    'shelf: newer entry per title wins, other device additions are kept',
    () {
      final local = SyncEntry(
        100,
        kv('OTHER/resume', {
          'items': [item('1', 'e1', 50), item('2', 'e4', 150)],
        }),
      );
      final remote = SyncEntry(
        200,
        kv('OTHER/resume', {
          'items': [item('1', 'e2', 180), item('3', 'e1', 190)],
        }),
      );
      final out = TitleScope.combine('OTHER/resume', local, remote)!;
      final items = (out['value'] as Map)['items'] as List;
      final byId = {for (final i in items) (i['media'] as Map)['id']: i};
      expect(byId['1']['unit'], 'e2');
      expect(byId.containsKey('3'), isTrue);
      expect(
        byId.containsKey('2'),
        isFalse,
        reason: 'removed on the other device',
      );
      expect(items.first['at'], 190);
    },
  );

  test('shelf: an entry removed here does not come back', () {
    final local = SyncEntry(300, kv('OTHER/resume', {'items': []}));
    final remote = SyncEntry(
      200,
      kv('OTHER/resume', {
        'items': [item('1', 'e1', 150)],
      }),
    );
    final out = TitleScope.combine('OTHER/resume', local, remote)!;
    expect((out['value'] as Map)['items'], isEmpty);
  });

  test('merge applies the combined record to both sides', () {
    final local = {
      record: SyncEntry(
        10,
        kv(record, {
          'playback': {'1': playback(100, 900)},
        }),
      ),
    };
    final remote = {
      record: SyncEntry(
        20,
        kv(record, {
          'playback': {'2': playback(80, 700)},
        }),
      ),
    };
    final r = mergeSettings(local, remote, 1000, combine: TitleScope.combine);
    expect(r.apply.containsKey(record), isTrue);
    expect(r.dirty, isTrue);
    expect(r.merged[record]!.stamp, 20);
    final pb = (r.merged[record]!.json!['value'] as Map)['playback'] as Map;
    expect(pb.keys, unorderedEquals(['1', '2']));
  });
}
