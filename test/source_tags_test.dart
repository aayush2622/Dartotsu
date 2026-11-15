import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:dartotsu/Api/Services/Extension/SourceTags.dart';
import 'package:dartotsu/Core/Services/Model/Media.dart';
import 'package:flutter_test/flutter_test.dart';

Source src(String id) => Source(id: id, name: id);

List<String> ids(List<Source> s) => [for (final e in s) e.id!];

void main() {
  final a = src('a'), b = src('b'), c = src('c'), d = src('d'), e = src('e');
  final tags = <String, Set<SourceTag>>{
    'a': {SourceTag.anime},
    'b': {SourceTag.movies},
    'c': {},
    'd': {SourceTag.adult},
    'e': {SourceTag.anime, SourceTag.adult},
  };
  Set<SourceTag> of(Source s) => tags[s.id] ?? const {};
  final all = [c, a, b, d, e];

  test('nothing tagged shows everything in order', () {
    final r = rankSources(
      all,
      (_) => const {},
      category: MediaCategory.anime,
      adult: false,
    );
    expect(ids(r.shown), ['c', 'a', 'b', 'd', 'e']);
    expect(r.hidden, isEmpty);
  });

  test('anime title: matching tags first, untagged last, others hidden', () {
    final r = rankSources(all, of, category: MediaCategory.anime, adult: false);
    expect(ids(r.shown), ['a', 'c']);
    expect(ids(r.hidden), ['b', 'd', 'e']);
  });

  test('adult anime title lists 18+ sources first', () {
    final r = rankSources(all, of, category: MediaCategory.anime, adult: true);
    expect(ids(r.shown), ['d', 'e', 'a', 'c']);
    expect(ids(r.hidden), ['b']);
  });

  test('anime movie is anime', () {
    final r = rankSources(
      all,
      of,
      category: MediaCategory.animeMovie,
      adult: false,
    );
    expect(ids(r.shown), ['a', 'c']);
    expect(ids(r.hidden), ['b', 'd', 'e']);
  });

  test('falls back to all when everything would be hidden', () {
    final r = rankSources(
      [a, d],
      of,
      category: MediaCategory.series,
      adult: false,
    );
    expect(ids(r.shown), ['a', 'd']);
  });

  test('movies and series tag covers both', () {
    for (final category in [MediaCategory.movie, MediaCategory.series]) {
      final r = rankSources([a, b, c], of, category: category, adult: false);
      expect(ids(r.shown), ['b', 'c']);
      expect(ids(r.hidden), ['a']);
    }
  });

  test('category detection', () {
    Media m(String id, {String? format, List<String> genres = const []}) =>
        Media(id: id, name: id, shareLink: '', format: format, genres: genres);
    expect(mediaCategoryOf(m('123', format: 'TV')), MediaCategory.anime);
    expect(
      mediaCategoryOf(m('anime/9', format: 'MOVIE')),
      MediaCategory.animeMovie,
    );
    expect(
      mediaCategoryOf(m('movies/1', format: 'MOVIE')),
      MediaCategory.movie,
    );
    expect(mediaCategoryOf(m('shows/1', format: 'TV')), MediaCategory.series);
    expect(
      mediaCategoryOf(m('shows/1', format: 'TV', genres: ['Anime'])),
      MediaCategory.anime,
    );
    expect(
      mediaCategoryOf(m('movies/1', format: 'MOVIE', genres: ['Anime'])),
      MediaCategory.animeMovie,
    );
  });
}
