part of '../AnilistQueries.dart';

const _genresKey = 'anilist_genres';
const _adultTagsKey = 'anilist_tags_adult';
const _nonAdultTagsKey = 'anilist_tags_nonadult';

extension on AnilistQueries {
  Future<bool> _getGenresAndTags() async {
    var genres = loadCustomData<List<String>>(_genresKey) ?? const [];
    var adultTags = loadCustomData<List<String>>(_adultTagsKey) ?? const [];
    var nonAdultTags =
        loadCustomData<List<String>>(_nonAdultTagsKey) ?? const [];

    if (genres.isEmpty) {
      final data = await client.query('{ GenreCollection }', useToken: false);
      genres = (data['GenreCollection'] as List?)?.cast<String>() ?? const [];
      if (genres.isNotEmpty) saveCustomData(_genresKey, genres.toList());
    }

    if (adultTags.isEmpty || nonAdultTags.isEmpty) {
      final data = await client.query(
        '{ MediaTagCollection { name isAdult } }',
      );
      final tags =
          (data['MediaTagCollection'] as List?)?.cast<Map<String, dynamic>>() ??
          const [];
      final adult = <String>[];
      final nonAdult = <String>[];
      for (final t in tags) {
        (t['isAdult'] == true ? adult : nonAdult).add(t['name'] as String);
      }
      if (tags.isNotEmpty) {
        adultTags = adult;
        nonAdultTags = nonAdult;
        saveCustomData(_adultTagsKey, adult);
        saveCustomData(_nonAdultTagsKey, nonAdult);
      }
    }

    return genres.isNotEmpty && nonAdultTags.isNotEmpty;
  }
}
