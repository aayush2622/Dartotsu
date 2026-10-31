import 'package:dartotsu/Core/SettingsSync/SyncVault.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'sealed secrets open with the passphrase and not with another',
    () async {
      final sealed = await SyncVault.seal(
        '{"token":"abc123"}',
        'correct horse',
      );
      expect(sealed.contains('abc123'), isFalse);
      expect(
        await SyncVault.open(sealed, 'correct horse'),
        '{"token":"abc123"}',
      );
      SyncVault.forget();
      await expectLater(
        SyncVault.open(sealed, 'wrong horse'),
        throwsA(isA<WrongPassphrase>()),
      );
    },
    timeout: const Timeout(Duration(minutes: 2)),
  );

  test('a second seal reuses the key and still opens', () async {
    final a = await SyncVault.seal('one', 'pass phrase');
    final b = await SyncVault.seal('two', 'pass phrase');
    expect(a == b, isFalse);
    expect(await SyncVault.open(b, 'pass phrase'), 'two');
  }, timeout: const Timeout(Duration(minutes: 2)));
}
