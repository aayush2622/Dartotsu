import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/Services/Screens/EntityHost.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Logger.dart';
import '../Auth.dart';
import '../Data/Mapper.dart';

class TraktEntityView extends EntityScreenView {
  TraktEntityView(super.service);

  @override
  Stream<List<ScreenWidget>> screenStream(EntityHost host) async* {
    final id = host.profile.value.id;
    if (id.isEmpty) return;

    try {
      final personData = await traktAuth.client
          .get('/people/$id?extended=full', auth: false);
      if (personData is! Map) return;
      final person = personData.cast<String, dynamic>();

      final ids = person['ids'] as Map?;
      final slug = ids?['slug'] as String?;
      final traktId = ids?['trakt'];
      final name = person['name'] as String? ?? host.profile.value.name;
      final bio = (person['biography'] as String?)?.trim() ??
          (person['summary'] as String?)?.trim();
      final birthday = person['birthday'] as String?;
      final death = person['death'] as String?;
      final birthplace = person['birthplace'] as String?;
      final dept = person['known_for_department'] as String?;

      String? headshot;
      if (traktId != null) {
        headshot =
            'https://media.trakt.tv/people/$traktId/medium/headshot.webp';
      }

      final profile = EntityProfile(
        id: id,
        name: name,
        image: headshot ?? host.profile.value.image,
        url: 'https://trakt.tv/people/${slug ?? id}',
        description: bio != null && bio.isNotEmpty ? bio : null,
        facts: [
          if (birthday != null && birthday.isNotEmpty) ('Born', birthday),
          if (death != null && death.isNotEmpty) ('Died', death),
          if (birthplace != null && birthplace.isNotEmpty)
            ('Birthplace', birthplace),
          if (dept != null && dept.isNotEmpty)
            ('Department', dept[0].toUpperCase() + dept.substring(1)),
        ],
      );
      host.update(profile);

      final (movieCredits, showCredits) = await (
        _getCredits('/people/$id/movies?extended=full'),
        _getCredits('/people/$id/shows?extended=full'),
      ).wait;

      final (actingMovies, crewMovies) =
          _extract(movieCredits, TraktKind.movies);
      final (actingShows, crewShows) =
          _extract(showCredits, TraktKind.shows);

      final widgets = <ScreenWidget>[
        if (actingMovies.isNotEmpty)
          ScreenWidget.media(getString.movies, actingMovies),
        if (actingShows.isNotEmpty)
          ScreenWidget.media(getString.shows, actingShows),
        for (final entry in _mergeCrew(crewMovies, crewShows).entries)
          if (entry.value.isNotEmpty)
            ScreenWidget.media(entry.key, entry.value),
      ];

      if (widgets.isNotEmpty) {
        yield widgets;
      }
    } catch (e, st) {
      logError('TraktEntityView', e, st);
    }
  }

  Future<Map<String, dynamic>?> _getCredits(String path) async {
    try {
      final res = await traktAuth.client.get(path, auth: false);
      return res is Map ? res.cast<String, dynamic>() : null;
    } catch (e, st) {
      logError('TraktEntityView.getCredits', e, st);
      return null;
    }
  }

  (List<Media>, Map<String, List<Media>>) _extract(
    Map<String, dynamic>? credits,
    TraktKind kind,
  ) {
    if (credits == null) {
      return (const <Media>[], const <String, List<Media>>{});
    }

    final acting = <Media>[];
    final seenActing = <String>{};
    final castList = credits['cast'] as List?;
    if (castList != null) {
      for (final item in castList) {
        if (item is! Map) continue;
        final raw = item.cast<String, dynamic>();
        final media = mapTraktItem(raw, kind: kind);
        if (media == null || !seenActing.add(media.id)) continue;
        final char = item['character'] as String? ??
            (item['characters'] as List?)?.firstOrNull as String?;
        if (char != null && char.isNotEmpty) media.relation = char;
        acting.add(media);
      }
    }

    final crewMap = <String, List<Media>>{};
    final crewObj = credits['crew'] as Map?;
    if (crewObj != null) {
      for (final entry in crewObj.entries) {
        final dept = entry.key.toString();
        final label = dept[0].toUpperCase() + dept.substring(1);
        final list = entry.value as List?;
        if (list == null) continue;
        final deptMedia = crewMap.putIfAbsent(label, () => <Media>[]);
        final seenCrew = <String>{};
        for (final item in list) {
          if (item is! Map) continue;
          final raw = item.cast<String, dynamic>();
          final media = mapTraktItem(raw, kind: kind);
          if (media == null || !seenCrew.add(media.id)) continue;
          final job = item['job'] as String? ??
              (item['jobs'] as List?)?.firstOrNull as String?;
          if (job != null && job.isNotEmpty) media.relation = job;
          deptMedia.add(media);
        }
      }
    }

    return (acting, crewMap);
  }

  Map<String, List<Media>> _mergeCrew(
    Map<String, List<Media>> a,
    Map<String, List<Media>> b,
  ) {
    final res = <String, List<Media>>{};
    final allKeys = {...a.keys, ...b.keys};
    for (final key in allKeys) {
      final listA = a[key] ?? const [];
      final listB = b[key] ?? const [];
      res[key] = [...listA, ...listB];
    }
    return res;
  }
}
