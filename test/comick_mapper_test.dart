import 'dart:convert';
import 'dart:io';

import 'package:dartotsu/Api/Services/Comick/Data/Mapper.dart';
import 'package:flutter_test/flutter_test.dart';

Object? fixture(String name) =>
    jsonDecode(File('test/fixtures/comick/$name.json').readAsStringSync());

void main() {
  test('a search item maps its string rating, cover, ids and titles', () {
    final item = (fixture('search') as List).first as Map<String, dynamic>;
    final media = mapComickSearchItem(item);
    expect(media.id, 'udwf1dTf');
    expect(media.name, 'Berserk');
    expect(media.meanScore, 96);
    expect(media.isAnime, isFalse);
    expect(media.format, 'MANGA');
    expect(media.status, 'RELEASING');
    expect(media.isAdult, isTrue);
    expect(media.cover, 'https://meo.comick.pictures/D4wyOZ.jpg');
    expect(media.manga?.totalChapters, 386);
    expect(media.synonyms, isNotEmpty);
    final extras = comickExtras[media]!;
    expect(extras.anilistId, 30002);
    expect(extras.malId, 2);
    expect(extras.mangabakaId, 1692);
    expect(extras.mangaUpdatesId, 'njeqwry');
  });

  test('an anime item keeps its type and episode count', () {
    final item =
        (fixture('search_anime') as List).first as Map<String, dynamic>;
    final media = mapComickSearchItem(item);
    expect(media.isAnime, isTrue);
    expect(media.anime?.totalEpisodes, 28);
    expect(media.countryOfOrigin, isNull);
    expect(comickExtras[media]!.malId, 52991);
  });

  test('top items read genres and covers from their nested fields', () {
    final top = fixture('top') as Map<String, dynamic>;
    final item = (top['7'] as List).first as Map<String, dynamic>;
    final media = mapComickSearchItem(item);
    expect(media.id, item['hid']);
    expect(media.genres, contains('Action'));
    expect(media.cover, startsWith('https://meo.comick.pictures/'));
  });

  test(
    'a library entry keeps its list status apart from the release status',
    () {
      final media = mapComickLibraryEntry({
        'hid': 'abc',
        'slug': 'abc',
        'title': 'Title',
        'media_type': 'manga',
        'status': 2,
        'publication_status': 1,
        'rating': 8,
        'progress': {'number': '12.5'},
      });
      expect(media.userStatus, 'COMPLETED');
      expect(media.status, 'RELEASING');
      expect(media.userScore, 80);
      expect(media.userProgress, 12);
    },
  );

  test('a schedule entry becomes an anime with its slug', () {
    final data = fixture('schedule') as Map<String, dynamic>;
    final entry = (data['entries'] as List).first as Map<String, dynamic>;
    final media = mapComickScheduleItem(entry);
    expect(media.isAnime, isTrue);
    expect(comickExtras[media]!.slug, 'kanata-kara');
    expect(
      DateTime.tryParse(entry['schedule']['occurrenceAt'] as String),
      isNotNull,
    );
  });
}
