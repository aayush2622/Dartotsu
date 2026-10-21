import 'dart:io';

import 'package:flutter/painting.dart';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:dartotsu/Screen/Detail/Watch/Data/Media/MediaRecord.dart';
import 'package:dartotsu/Screen/Reader/Engine/NovelText.dart';
import 'package:dartotsu/Screen/Reader/Engine/ReaderImageLoader.dart';
import 'package:dartotsu/Screen/Reader/Engine/ReaderItems.dart';
import 'package:dartotsu/Screen/Reader/Engine/ReaderSettings.dart';

List<PageUrl> pages(int n) => [for (var i = 0; i < n; i++) PageUrl('u$i')];

void main() {
  group('buildReaderItems', () {
    test('wraps each chapter in gaps', () {
      final items = buildReaderItems([
        ReaderSegment(2, pages(3)),
      ], chapterCount: 5);
      expect(items.length, 5);
      expect(items.first, isA<ReaderGap>());
      expect((items.first as ReaderGap).target, 1);
      expect((items.last as ReaderGap).target, 3);
      expect((items.last as ReaderGap).atStart, isFalse);
    });

    test('first and last chapter have no outer target', () {
      final items = buildReaderItems([
        ReaderSegment(0, pages(1)),
      ], chapterCount: 1);
      expect(items.first, isA<ReaderPage>());
      expect((items.last as ReaderGap).target, isNull);
    });

    test('appended segments continue the list', () {
      final items = buildReaderItems([
        ReaderSegment(0, pages(2)),
        ReaderSegment(1, pages(2)),
      ], chapterCount: 3);
      final chapters = items.whereType<ReaderPage>().map((p) => p.chapter);
      expect(chapters.toList(), [0, 0, 1, 1]);
    });

    test('spreads keep the first page alone and pair the rest', () {
      final items = buildReaderItems(
        [ReaderSegment(0, pages(5))],
        chapterCount: 1,
        spreads: true,
      );
      expect(items.whereType<ReaderPage>().length, 1);
      expect(items.whereType<ReaderSpread>().length, 2);
      expect(items.whereType<ReaderPage>().first.page, 0);
    });

    test('an odd tail page stays single', () {
      final items = buildReaderItems(
        [ReaderSegment(0, pages(4))],
        chapterCount: 1,
        spreads: true,
      );
      expect(items.whereType<ReaderSpread>().length, 1);
      expect(items.whereType<ReaderPage>().length, 2);
    });
  });

  group('tapActionFor top to bottom', () {
    test('top scrolls up, bottom scrolls down, the middle opens the menu', () {
      TapAction at(double x, double y, {bool invert = false}) => tapActionFor(
        'default',
        Offset(x, y),
        invert: invert,
        topDown: true,
      );
      expect(at(0.1, 0.1), TapAction.previous);
      expect(at(0.9, 0.9), TapAction.next);
      expect(at(0.1, 0.5), TapAction.menu);
      expect(at(0.9, 0.5), TapAction.menu);
      expect(at(0.5, 0.9, invert: true), TapAction.previous);
    });
  });

  group('tapActionFor', () {
    test('default zones', () {
      expect(
        tapActionFor('default', const Offset(0.1, 0.5), invert: false),
        TapAction.previous,
      );
      expect(
        tapActionFor('default', const Offset(0.9, 0.5), invert: false),
        TapAction.next,
      );
      expect(
        tapActionFor('default', const Offset(0.5, 0.5), invert: false),
        TapAction.menu,
      );
    });

    test('right to left flips the sides', () {
      expect(
        tapActionFor(
          'default',
          const Offset(0.1, 0.5),
          invert: false,
          reversed: true,
        ),
        TapAction.next,
      );
    });

    test('invert flips again', () {
      expect(
        tapActionFor(
          'default',
          const Offset(0.1, 0.5),
          invert: true,
          reversed: true,
        ),
        TapAction.previous,
      );
    });

    test('disabled zones only open the menu', () {
      expect(
        tapActionFor('off', const Offset(0.05, 0.5), invert: false),
        TapAction.menu,
      );
    });

    test('l-shaped uses the top and left as previous', () {
      expect(
        tapActionFor('lshaped', const Offset(0.5, 0.1), invert: false),
        TapAction.previous,
      );
      expect(
        tapActionFor('lshaped', const Offset(0.5, 0.9), invert: false),
        TapAction.next,
      );
    });
  });

  group('parseNovel', () {
    test('splits paragraphs, headings and line breaks', () {
      final blocks = parseNovel(
        '<h2>Title</h2><p>One<br>Two</p><div>Three</div>',
      );
      final texts = blocks.whereType<NovelParagraph>().toList();
      expect(texts.map((p) => p.text), ['Title', 'One', 'Two', 'Three']);
      expect(texts.first.heading, 2);
      expect(texts[1].heading, 0);
    });

    test('collects images and rules', () {
      final blocks = parseNovel('<p>a</p><img src="x.png"><hr><p>b</p>');
      expect(blocks.whereType<NovelPicture>().single.url, 'x.png');
      expect(blocks.whereType<NovelRule>().length, 1);
    });

    test('plain text becomes one paragraph per line', () {
      final blocks = parseNovel('first line\n\nsecond line');
      expect(blocks.length, 2);
    });

    test('scripts and styles are dropped', () {
      final blocks = parseNovel(
        '<style>p{}</style><script>x()</script><p>kept</p>',
      );
      expect(blocks.whereType<NovelParagraph>().map((p) => p.text), ['kept']);
    });

    test('empty input gives nothing', () {
      expect(parseNovel('   '), isEmpty);
    });
  });

  group('ReaderSettings', () {
    test('defaults and modes', () {
      final s = ReaderSettings();
      expect(s.mode, 'ltr');
      expect(s.reversed, isFalse);
      expect(s.scrolls, isFalse);
      s.mode = 'webtoon';
      expect(s.scrolls, isTrue);
    });

    test('diff and merge round trip', () {
      final base = ReaderSettings();
      final custom = base.copy()
        ..mode = 'ltr'
        ..dim = 20;
      final diff = custom.diff(base);
      expect(diff, {'mode': 'ltr', 'dim': 20});
      final merged = base.merged(diff);
      expect(merged.mode, 'ltr');
      expect(merged.dim, 20);
    });

    test('wrongly typed values fall back', () {
      final s = ReaderSettings({'dim': 'x', 'novelLineHeight': 2});
      expect(s.dim, 0);
      expect(s.novelLineHeight, 2.0);
    });

    test('filterQuality defaults to medium and persists', () {
      final s = ReaderSettings();
      expect(s.filterQuality, 'medium');
      s.filterQuality = 'lanczos';
      expect(s.filterQuality, 'lanczos');
      final diff = s.diff(ReaderSettings());
      expect(diff['filterQuality'], 'lanczos');
      final merged = ReaderSettings().merged(diff);
      expect(merged.filterQuality, 'lanczos');
    });
  });

  test('MediaRecord keeps reader overrides', () {
    final record = MediaRecord(reader: {'mode': 'webtoon'});
    final again = MediaRecord.fromJson(record.toJson());
    expect(again.reader['mode'], 'webtoon');
  });

  test('local pages use a file image provider', () {
    final file = File('${Directory.systemTemp.path}/reader_loader_test.bin')
      ..writeAsBytesSync([1, 2, 3]);
    expect(ReaderImageLoader.providerFor(PageUrl(file.path)), isA<FileImage>());
    file.deleteSync();
  });
}
