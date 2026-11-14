import 'dart:convert';
import 'dart:io';

import 'package:dartotsu/Api/Services/Trakt/Data/Mapper.dart';
import 'package:flutter_test/flutter_test.dart';

Object? fixture(String name) =>
    jsonDecode(File('test/fixtures/trakt/$name.json').readAsStringSync());

Map<String, dynamic> first(String name) =>
    ((fixture(name) as List).first as Map).cast<String, dynamic>();

void main() {
  test('a trending movie maps ids, images, score and runtime', () {
    final media = mapTraktItem(first('trending_movies'))!;
    expect(media.id, startsWith('movies/'));
    expect(media.format, 'MOVIE');
    expect(media.cover, startsWith('https://media.trakt.tv/movies/'));
    expect(media.cover, endsWith('/poster.webp'));
    expect(media.meanScore, greaterThan(0));
    expect(media.anime?.totalEpisodes, 1);
    final extras = traktExtras[media]!;
    expect(extras.traktId, isNotNull);
    expect(extras.imdbId, startsWith('tt'));
  });

  test('a show maps its aired episodes, network and status', () {
    final show = (fixture('show') as Map).cast<String, dynamic>();
    final media = mapTraktItem(show, kind: TraktKind.shows)!;
    expect(media.id, 'shows/1390');
    expect(media.format, 'TV');
    expect(media.status, 'FINISHED');
    expect(media.anime?.totalEpisodes, 73);
    expect(media.anime?.studio?.name, 'HBO');
    expect(
      media.banner,
      'https://media.trakt.tv/shows/1390/medium/fanart.webp',
    );
    expect(traktExtras[media]!.airs, isNotNull);
  });

  test('wrapped rows read the show or movie inside', () {
    expect(mapTraktItem(first('trending_shows'))!.id, startsWith('shows/'));
    expect(mapTraktItem(first('watched_week'))!.id, startsWith('shows/'));
    final hit = first('search');
    expect(
      mapTraktItem(hit)!.id,
      startsWith(hit['type'] == 'show' ? 'shows/' : 'movies/'),
    );
  });

  test('a calendar row has the show inside and a first aired time', () {
    final row = first('calendar');
    final media = mapTraktItem(
      (row['show'] as Map).cast<String, dynamic>(),
      kind: TraktKind.shows,
    )!;
    expect(media.id, startsWith('shows/'));
    expect(DateTime.tryParse('${row['first_aired']}'), isNotNull);
  });

  test('media ids round trip', () {
    expect(parseTraktMediaId('movies/12'), (TraktKind.movies, 12));
    expect(parseTraktMediaId('shows/7'), (TraktKind.shows, 7));
    expect(parseTraktMediaId('anime/7'), isNull);
    expect(TraktKind.movies.itemKey, 'movie');
    expect(TraktKind.shows.itemKey, 'show');
  });
}
