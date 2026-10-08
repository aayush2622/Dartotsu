import 'package:dartotsu/Core/Services/Api/LibraryCache.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('loads once while fresh and shares an in-flight load', () async {
    var loads = 0;
    final cache = LibraryCache<int>(
      load: (_) async {
        await Future<void>.delayed(const Duration(milliseconds: 10));
        return ++loads;
      },
    );
    final results = await Future.wait([cache.get(), cache.get()]);
    expect(results, [1, 1]);
    expect(await cache.get(), 1);
    expect(loads, 1);
  });

  test('expire reloads with the previous value, clear drops it', () async {
    final seen = <int?>[];
    var n = 0;
    final cache = LibraryCache<int>(
      load: (previous) async {
        seen.add(previous);
        return ++n;
      },
    );
    await cache.get();
    cache.expire();
    expect(await cache.get(), 2);
    cache.clear();
    expect(await cache.get(), 3);
    expect(seen, [null, 1, null]);
  });

  test('a failed load leaves nothing cached and can be retried', () async {
    var attempts = 0;
    final cache = LibraryCache<int>(
      load: (_) async {
        if (++attempts == 1) throw StateError('boom');
        return 7;
      },
    );
    await expectLater(cache.get(), throwsStateError);
    expect(await cache.get(), 7);
  });
}
