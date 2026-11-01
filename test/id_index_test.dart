import 'dart:convert';

import 'package:dartotsu/Screen/Settings/Sync/Data/SyncIdIndex.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final raw = jsonEncode([
    {
      'mangabaka_id': 1,
      'anilist_id': 85208,
      'mal_id': 147443,
      'total_chapters': 388.0,
      'status': 'completed',
    },
    {'mangabaka_id': 2, 'anilist_id': 30705, 'total_chapters': 0.0},
    {'mangabaka_id': 3, 'total_chapters': 50.0},
    {'mangabaka_id': 4, 'mal_id': 705, 'kitsu_id': 1576},
  ]);

  test('manga index keeps ids and chapter counts side by side', () {
    final flat = compactMangaIndex(raw);
    expect(flat.length, 3 * 6);
    final index = SyncIdIndex(flat, anime: false);
    expect(index.rows, 3);
    expect(index.chaptersOf('anilist', 85208), 388);
    expect(index.chaptersOf('mangabaka', 1), 388);
    expect(index.chaptersOf('anilist', 30705), isNull);
    expect(index.chaptersOf('mal', 705), isNull);
    expect(index.chaptersOf('mal', 999), isNull);
  });

  test('expanding ids never leaks the chapter column', () {
    final index = SyncIdIndex(compactMangaIndex(raw), anime: false);
    expect(index.expand({'anilist': 85208}), {
      'anilist': 85208,
      'mangabaka': 1,
      'mal': 147443,
    });
  });

  test('anime index has no chapter data', () {
    final flat = compactAnimeIndex(
      jsonEncode([
        {'anilist_id': 1, 'mal_id': 2, 'kitsu_id': 3, 'simkl_id': 4},
      ]),
    );
    final index = SyncIdIndex(flat);
    expect(index.rows, 1);
    expect(index.chaptersOf('anilist', 1), isNull);
    expect(index.expand({'mal': 2})['simkl'], 4);
  });
}
