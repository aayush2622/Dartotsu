import 'dart:io';

import 'package:dartotsu/Core/Services/Api/Chiaki.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('parses a watch order page', () {
    final body = File('test/fixtures/chiaki/watch_order.html')
        .readAsStringSync();
    final order = parseChiakiOrder(body, malId: 1735)!;
    expect(order.title, 'Naruto Watch Order');
    expect(order.entries, hasLength(4));
    final first = order.entries.first;
    expect(first.malId, 20);
    expect(first.anilistId, 20);
    expect(first.title, 'Naruto');
    expect(first.typeLabel, 'TV');
    expect(first.episodes, 220);
    expect(first.related[1735], 'Sequel');
    expect(first.facts.first, 'Oct 3, 2002 – Feb 8, 2007');
    expect(first.facts, contains('TV'));
    expect(first.facts.any((f) => f.startsWith('★8.02')), isTrue);
    expect(first.cover, 'https://chiaki.site/media/a/1b/20.jpg');
    final special = order.entries[1];
    expect(special.typeLabel, 'Special');
    expect(special.altTitle, contains('Crimson Four-leaf Clover'));
    expect(special.related[20], 'Parent Story');
  });

  test('a page without a list is no watch order', () {
    expect(
      parseChiakiOrder('<html><body>none</body></html>', malId: 1),
      isNull,
    );
  });
}
