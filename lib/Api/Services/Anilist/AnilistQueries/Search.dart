part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<SearchResults?> _search(SearchResults? results) async {
    if (results == null) return null;
    switch (results.type) {
      case SearchType.ANIME:
      case SearchType.MANGA:
      case SearchType.NOVEL:
      case SearchType.MOVIES:
      case SearchType.SERIES:
        return _searchMedia(results);
      case SearchType.CHARACTER:
        return _searchPeople(results, 'characters', _characterFields);
      case SearchType.STAFF:
        return _searchPeople(results, 'staff', _staffFields);
      case SearchType.STUDIO:
        return _searchPeople(results, 'studios', _studioFields);
      case SearchType.USER:
        return _searchPeople(results, 'users', _userFields);
    }
  }

  Future<SearchResults?> _searchMedia(SearchResults r) async {
    final variables = <String, dynamic>{
      'type': r.type == SearchType.MANGA || r.type == SearchType.NOVEL
          ? 'MANGA'
          : 'ANIME',
      'page': r.page ?? 1,
      'isAdult': r.isAdult ?? false,
      if (r.onList != null) 'onList': r.onList,
      if (r.id != null) 'id': r.id,
      if (r.search != null && r.search!.isNotEmpty) 'search': r.search,
      if (r.seasonYear != null) 'seasonYear': r.seasonYear,
      if (r.season != null) 'season': r.season,
      if (r.sort != null) 'sort': r.sort,
      if (r.status != null) 'status': r.status!.replaceAll(' ', '_'),
      if (r.source != null) 'source': r.source!.replaceAll(' ', '_'),
      if (r.format != null) 'format': r.format!.replaceAll(' ', '_'),
      if (r.countryOfOrigin != null) 'countryOfOrigin': r.countryOfOrigin,
      if (r.genres?.isNotEmpty == true) 'genres': r.genres,
      if (r.excludedGenres?.isNotEmpty == true)
        'excludedGenres': r.excludedGenres,
      if (r.tags?.isNotEmpty == true) 'tags': r.tags,
      if (r.excludedTags?.isNotEmpty == true) 'excludedTags': r.excludedTags,
    };

    final data = await executeQuery(
      _querySearchMedia(r.perPage ?? 30),
      variables: variables,
    );
    final page = data['Page'] as Map<String, dynamic>?;
    if (page == null) return null;

    final media = (page['media'] as List? ?? const [])
        .cast<Map<String, dynamic>>()
        .map((m) => mapAnilistMedia(m))
        .toList();
    final info = page['pageInfo'] as Map<String, dynamic>?;

    return r
      ..results = media
      ..page = (info?['currentPage'] as num?)?.toInt() ?? r.page
      ..hasNextPage = info?['hasNextPage'] == true;
  }

  Future<SearchResults?> _searchPeople(
    SearchResults r,
    String field,
    String fragment,
  ) async {
    final data = await executeQuery('''
{
  Page(page: ${r.page ?? 1}, perPage: ${r.perPage ?? 30}) {
    pageInfo { currentPage hasNextPage }
    $field(search: "${r.search ?? ''}") { $fragment }
  }
}''');
    final page = data['Page'] as Map<String, dynamic>?;
    if (page == null) return null;
    final nodes = (page[field] as List? ?? const [])
        .cast<Map<String, dynamic>>();
    final info = page['pageInfo'] as Map<String, dynamic>?;

    switch (field) {
      case 'characters':
        r.characters = nodes
            .map(
              (c) => Character(
                id: c['id'].toString(),
                name: (c['name'] as Map?)?['full'] as String?,
                image: (c['image'] as Map?)?['large'] as String?,
                description: c['description'] as String?,
                gender: c['gender'] as String?,
                isFav: c['isFavourite'] as bool?,
              ),
            )
            .toList();
      case 'staff':
        r.staff = nodes
            .map(
              (s) => Author(
                id: s['id'].toString(),
                name: (s['name'] as Map?)?['userPreferred'] as String?,
                image: (s['image'] as Map?)?['large'] as String?,
              ),
            )
            .toList();
      case 'studios':
        r.studios = nodes
            .map(
              (s) => Studio(
                id: s['id'].toString(),
                name: s['name'] as String? ?? '',
                isFav: s['isFavourite'] as bool?,
                favourites: (s['favourites'] as num?)?.toInt(),
              ),
            )
            .toList();
      case 'users':
        r.users = nodes
            .map(
              (u) => User(
                id: (u['id'] as num?)?.toInt() ?? 0,
                name: u['name'] as String? ?? '',
                pfp: (u['avatar'] as Map?)?['large'] as String?,
                banner: u['bannerImage'] as String?,
              ),
            )
            .toList();
    }

    return r
      ..page = (info?['currentPage'] as num?)?.toInt() ?? r.page
      ..hasNextPage = info?['hasNextPage'] == true;
  }
}

const _characterFields =
    'id name { full userPreferred } image { large medium } '
    'description gender isFavourite';
const _staffFields =
    'id name { userPreferred full } image { large medium } isFavourite';
const _studioFields = 'id name isFavourite favourites';
const _userFields = 'id name avatar { large medium } bannerImage';

String _querySearchMedia(int perPage) =>
    '''
query (
  \$page: Int = 1, \$id: Int, \$type: MediaType, \$isAdult: Boolean = false,
  \$search: String, \$format: [MediaFormat], \$status: MediaStatus,
  \$countryOfOrigin: CountryCode, \$source: MediaSource, \$season: MediaSeason,
  \$seasonYear: Int, \$onList: Boolean, \$genres: [String],
  \$excludedGenres: [String], \$tags: [String], \$excludedTags: [String],
  \$sort: [MediaSort] = [POPULARITY_DESC, SCORE_DESC]
) {
  Page(page: \$page, perPage: $perPage) {
    pageInfo { total currentPage hasNextPage }
    media(
      id: \$id, type: \$type, season: \$season, format_in: \$format,
      status: \$status, countryOfOrigin: \$countryOfOrigin, source: \$source,
      search: \$search, onList: \$onList, seasonYear: \$seasonYear,
      genre_in: \$genres, genre_not_in: \$excludedGenres, tag_in: \$tags,
      tag_not_in: \$excludedTags, sort: \$sort, isAdult: \$isAdult
    ) {
      $anilistMediaFragment
    }
  }
}''';
