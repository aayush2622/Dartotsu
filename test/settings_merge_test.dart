import 'package:dartotsu/Core/SettingsSync/SettingsMerge.dart';
import 'package:flutter_test/flutter_test.dart';

SyncEntry value(int stamp, Object v) =>
    SyncEntry(stamp, {'key': 'k', 'value': v});

SyncEntry gone(int stamp) => SyncEntry(stamp, null);

void main() {
  secretsMain();
  const now = 1000000;

  test('newer remote wins and is applied', () {
    final r = mergeSettings({'a': value(5, 1)}, {'a': value(9, 2)}, now);
    expect(r.apply.keys, ['a']);
    expect(r.merged['a']!.stamp, 9);
    expect(r.dirty, isFalse);
  });

  test('newer local wins and marks the file dirty', () {
    final r = mergeSettings({'a': value(9, 1)}, {'a': value(5, 2)}, now);
    expect(r.apply, isEmpty);
    expect(r.merged['a']!.stamp, 9);
    expect(r.dirty, isTrue);
  });

  test('unstamped local value loses to a stamped remote one', () {
    final r = mergeSettings({'a': value(0, 1)}, {'a': value(7, 2)}, now);
    expect(r.apply.keys, ['a']);
  });

  test('local-only keys are stamped and pushed', () {
    final r = mergeSettings({'a': value(0, 1)}, {}, now);
    expect(r.merged['a']!.stamp, now);
    expect(r.dirty, isTrue);
  });

  test('remote-only key is applied, remote tombstone is not', () {
    final r = mergeSettings({}, {'a': value(3, 1), 'b': gone(3)}, now);
    expect(r.apply.keys, ['a']);
    expect(r.merged.keys, containsAll(['a', 'b']));
  });

  test('newer remote tombstone deletes a local value', () {
    final r = mergeSettings({'a': value(3, 1)}, {'a': gone(8)}, now);
    expect(r.apply['a']!.deleted, isTrue);
  });

  test('newer local tombstone beats an older remote value', () {
    final r = mergeSettings({'a': gone(8)}, {'a': value(3, 1)}, now);
    expect(r.apply, isEmpty);
    expect(r.merged['a']!.deleted, isTrue);
    expect(r.dirty, isTrue);
  });

  test('same value with a newer stamp is not re-applied', () {
    final r = mergeSettings({'a': value(3, 1)}, {'a': value(8, 1)}, now);
    expect(r.apply, isEmpty);
    expect(r.merged['a']!.stamp, 8);
  });

  test('old tombstones are dropped', () {
    final old = now - tombstoneLife.inMilliseconds - 1;
    final r = mergeSettings({}, {'a': gone(old)}, now);
    expect(r.merged, isEmpty);
    expect(r.dirty, isTrue);
  });
}

void secretsMain() {
  SyncEntry token(int stamp, String v) =>
      SyncEntry(stamp, {'key': 'k', 'value': v});

  group('secrets', () {
    test(
      'a signed-out key is never replaced and its removal is not uploaded',
      () {
        final r = mergeSecrets(
          {'PROTECTED/anilistToken': const SyncEntry(50, null)},
          {'PROTECTED/anilistToken': token(10, 'abc')},
          1000,
        );
        expect(r.apply, isEmpty);
        expect(r.merged['PROTECTED/anilistToken']!.deleted, isFalse);
        expect(r.dirty, isFalse);
        expect(r.signedOut, {'PROTECTED/anilistToken'});
      },
    );

    test('remote removals never sign this device out', () {
      final r = mergeSecrets(
        {'PROTECTED/malToken': token(10, 'abc')},
        {'PROTECTED/malToken': const SyncEntry(99, null)},
        1000,
      );
      expect(r.apply, isEmpty);
    });

    test('a new device receives the tokens', () {
      final r = mergeSecrets({}, {
        'PROTECTED/kitsuToken': token(10, 'abc'),
      }, 1000);
      expect(r.apply.keys, ['PROTECTED/kitsuToken']);
      expect(r.dirty, isFalse);
    });

    test('a refreshed token on this device is uploaded', () {
      final r = mergeSecrets(
        {'PROTECTED/simklToken': token(40, 'new')},
        {'PROTECTED/simklToken': token(10, 'old')},
        1000,
      );
      expect(r.apply, isEmpty);
      expect(r.dirty, isTrue);
    });
  });
}
