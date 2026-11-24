import 'package:dartotsu/Screen/Reader/Components/ReaderPinch.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<double> _scaleAfter(
  WidgetTester tester, {
  required int firstUpMs,
  required int secondDownMs,
  required int secondUpMs,
  Offset second = const Offset(200, 400),
}) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: SizedBox(
        width: 400,
        height: 800,
        child: ReaderPinch(
          doubleTap: true,
          settle: Duration(milliseconds: 200),
          child: ColoredBox(color: Colors.red, child: SizedBox.expand()),
        ),
      ),
    ),
  );
  final pointer = TestPointer(1, PointerDeviceKind.touch);
  const first = Offset(200, 400);
  await tester.sendEventToBinding(
    pointer.down(first, timeStamp: Duration.zero),
  );
  await tester.sendEventToBinding(
    pointer.up(timeStamp: Duration(milliseconds: firstUpMs)),
  );
  await tester.sendEventToBinding(
    pointer.down(second, timeStamp: Duration(milliseconds: secondDownMs)),
  );
  await tester.sendEventToBinding(
    pointer.up(timeStamp: Duration(milliseconds: secondUpMs)),
  );
  await tester.pump();
  await tester.pump(const Duration(milliseconds: 600));
  await tester.pump();
  final transform = tester.widget<Transform>(
    find.descendant(
      of: find.byType(ReaderPinch),
      matching: find.byType(Transform),
    ),
  );
  return transform.transform.getMaxScaleOnAxis();
}

void main() {
  testWidgets('a quick double tap zooms in', (tester) async {
    expect(
      await _scaleAfter(
        tester,
        firstUpMs: 60,
        secondDownMs: 200,
        secondUpMs: 260,
      ),
      greaterThan(1.5),
    );
  });

  testWidgets('a relaxed double tap zooms in', (tester) async {
    expect(
      await _scaleAfter(
        tester,
        firstUpMs: 90,
        secondDownMs: 330,
        secondUpMs: 430,
      ),
      greaterThan(1.5),
    );
  });

  testWidgets('two taps far apart in time do not zoom', (tester) async {
    expect(
      await _scaleAfter(
        tester,
        firstUpMs: 60,
        secondDownMs: 900,
        secondUpMs: 960,
      ),
      closeTo(1, 0.05),
    );
  });

  testWidgets('two taps on different spots do not zoom', (tester) async {
    expect(
      await _scaleAfter(
        tester,
        firstUpMs: 60,
        secondDownMs: 200,
        secondUpMs: 260,
        second: const Offset(40, 100),
      ),
      closeTo(1, 0.05),
    );
  });
}
