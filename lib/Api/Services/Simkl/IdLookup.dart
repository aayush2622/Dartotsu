import 'package:rhttp/rhttp.dart';

final _target = RegExp(r'/(?:anime|tv|movies)/(\d+)');
final _animeTarget = RegExp(r'/anime/(\d+)');

Future<int?> simklIdFromRedirect({
  int? mal,
  int? anilist,
  int? kitsu,
  String? imdb,
  int? tvdb,
  bool animeOnly = false,
}) async {
  final query = imdb != null
      ? {'imdb': imdb}
      : tvdb != null
      ? {'tvdb': '$tvdb'}
      : mal != null
      ? {'mal': '$mal'}
      : anilist != null
      ? {'anilist': '$anilist'}
      : kitsu != null
      ? {'kitsu': '$kitsu'}
      : null;
  if (query == null) return null;
  final res = await Rhttp.get(
    'https://api.simkl.com/redirect',
    query: {'to': 'simkl', ...query},
    settings: const ClientSettings(
      redirectSettings: RedirectSettings.none(),
      throwOnStatusCode: false,
    ),
  );
  final location = res.headerMapList['location']?.firstOrNull;
  final match = location == null
      ? null
      : (animeOnly ? _animeTarget : _target).firstMatch(location);
  return int.tryParse(match?.group(1) ?? '');
}
