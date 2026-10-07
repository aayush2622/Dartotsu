import 'package:dartotsu/Core/State/State.dart' as state;
import 'package:dartotsu/Core/State/State.dart' hide find;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart' as t;
import 'package:flutter_test/flutter_test.dart' hide find;

class _Controller extends AppController {
  int inits = 0;
  int closes = 0;

  @override
  void onInit() => inits++;

  @override
  void onClose() => closes++;
}

Widget _host(Widget child) =>
    Directionality(textDirection: TextDirection.ltr, child: child);

void main() {
  setUp(() => StateLog.enabled = false);

  group('Watch', () {
    testWidgets('rebuilds on change and drops stale dependencies', (
      tester,
    ) async {
      final a = 0.live;
      final b = 'x'.live;
      final useB = true.live;
      var builds = 0;
      await tester.pumpWidget(
        _host(
          Watch(() {
            builds++;
            return Text(useB.value ? '${a.value}${b.value}' : '${a.value}');
          }),
        ),
      );
      expect(t.find.text('0x'), findsOneWidget);

      a.value = 1;
      await tester.pump();
      expect(t.find.text('1x'), findsOneWidget);

      useB.value = false;
      await tester.pump();
      expect(t.find.text('1'), findsOneWidget);

      final before = builds;
      b.value = 'y';
      await tester.pump();
      expect(builds, before, reason: 'b is no longer read');
      expect(b.hasListeners, isFalse);

      await tester.pumpWidget(const SizedBox());
      expect(a.hasListeners, isFalse);
    });

    testWidgets('tracks lists, maps and triggers', (tester) async {
      final list = <int>[1].liveList;
      final map = <String, int>{'a': 1}.liveMap;
      final trigger = Trigger();
      await tester.pumpWidget(
        _host(
          Watch(() {
            trigger.track();
            final sum = list.fold(0, (s, e) => s + e);
            return Text('${list.length}-$sum-${map['a']}-${trigger.count}');
          }),
        ),
      );
      expect(t.find.text('1-1-1-0'), findsOneWidget);

      list.add(2);
      map['a'] = 5;
      trigger.fire();
      await tester.pump();
      expect(t.find.text('2-3-5-1'), findsOneWidget);
    });

    testWidgets('a write during build is deferred, not thrown', (tester) async {
      final value = 0.live;
      await tester.pumpWidget(
        _host(
          Watch(() {
            if (value.value == 0) value.value = 1;
            return Text('${value.value}');
          }),
        ),
      );
      await tester.pump();
      expect(t.find.text('1'), findsOneWidget);
    });
  });

  group('Live', () {
    test('notifies only on a different value', () {
      final live = 1.live;
      final seen = <int>[];
      final sub = onChange(live, seen.add);
      live.value = 2;
      live.value = 2;
      live.value = 3;
      sub.dispose();
      live.value = 4;
      expect(seen, [2, 3]);
    });

    test('refresh notifies for the same object', () {
      final live = <int>[].live;
      var calls = 0;
      onChange(live, (_) => calls++);
      live.value.add(1);
      live.refresh();
      expect(calls, 1);
    });

    test('onFirstChange fires once', () {
      final live = 0.live;
      final seen = <int>[];
      onFirstChange(live, seen.add);
      live.value = 1;
      live.value = 2;
      expect(seen, [1]);
    });

    test('onAnyChange covers every source', () {
      final a = 0.live;
      final b = 0.live;
      var calls = 0;
      final sub = onAnyChange([a, b], () => calls++);
      a.value = 1;
      b.value = 1;
      sub.dispose();
      a.value = 2;
      expect(calls, 2);
    });

    test('stream emits changes', () {
      final live = 0.live;
      final got = <int>[];
      live.stream.listen(got.add);
      live.value = 1;
      live.value = 2;
      expect(got, [1, 2]);
    });
  });

  group('locator', () {
    test('lazyPut builds on first find, once', () {
      lazyPut<_Controller>(_Controller.new);
      expect(isRegistered<_Controller>(), isTrue);
      final first = state.find<_Controller>();
      expect(identical(first, state.find<_Controller>()), isTrue);
      expect(first.inits, 1);
      delete<_Controller>();
    });

    test('delete closes and unregisters', () {
      final controller = put(_Controller());
      delete<_Controller>();
      expect(controller.closes, 1);
      expect(tryFind<_Controller>(), isNull);
    });

    test('permanent entries survive delete', () {
      final controller = put(_Controller(), permanent: true);
      delete<_Controller>();
      expect(identical(state.find<_Controller>(), controller), isTrue);
    });

    test('tags are separate entries and put keeps the first', () {
      final tagged = put(_Controller(), tag: 'a');
      final again = put(_Controller(), tag: 'a');
      expect(identical(again, tagged), isTrue);
      expect(tryFind<_Controller>(tag: 'b'), isNull);
      delete<_Controller>(tag: 'a');
    });
  });
}
