import 'Client.dart';
import 'Data/Mapper.dart';

Future<int?> traktIdLookup(
  TraktClient client, {
  int? tmdb,
  int? tvdb,
  String? imdb,
  TraktKind? kind,
}) async {
  final (type, id) = tmdb != null
      ? ('tmdb', '$tmdb')
      : tvdb != null
      ? ('tvdb', '$tvdb')
      : imdb != null
      ? ('imdb', imdb)
      : (null, null);
  if (type == null || id == null) return null;
  final filterType = kind == TraktKind.movies
      ? 'movie'
      : kind == TraktKind.shows
      ? 'show'
      : 'movie,show';
  try {
    final res = await client.get(
      '/search/$type/$id',
      query: {'type': filterType},
      auth: false,
    );
    if (res is List && res.isNotEmpty) {
      final first = res.first;
      if (first is Map) {
        return traktIdOf(first);
      }
    }
  } catch (_) {}
  return null;
}
