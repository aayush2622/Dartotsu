part of '../Queries.dart';

extension on AnilistQueries {
  Future<Map<String, dynamic>?> _character(String id) async {
    final data = await client.query(
      _queryCharacter,
      variables: {'id': int.parse(id)},
    );
    return data['Character'] as Map<String, dynamic>?;
  }

  Future<Map<String, dynamic>?> _staff(String id) async {
    final data = await client.query(
      _queryStaff,
      variables: {'id': int.parse(id)},
    );
    return data['Staff'] as Map<String, dynamic>?;
  }

  Future<List<Media>?> _characterMedia(String id, String type, int page) async {
    final data = await client.query(
      _queryCharacterMedia,
      variables: {'id': int.parse(id), 'type': type, 'page': page},
    );
    final connection =
        (data['Character'] as Map<String, dynamic>?)?['media']
            as Map<String, dynamic>?;
    return mapEntityMedia(connection, 'characterRole');
  }

  Future<List<Media>?> _staffMedia(String id, String type, int page) async {
    final data = await client.query(
      _queryStaffMedia,
      variables: {'id': int.parse(id), 'type': type, 'page': page},
    );
    final connection =
        (data['Staff'] as Map<String, dynamic>?)?['staffMedia']
            as Map<String, dynamic>?;
    return mapEntityMedia(connection, 'staffRole');
  }

  Future<List<Character>?> _staffCharacters(String id, int page) async {
    final data = await client.query(
      _queryStaffCharacters,
      variables: {'id': int.parse(id), 'page': page},
    );
    final connection =
        (data['Staff'] as Map<String, dynamic>?)?['characters']
            as Map<String, dynamic>?;
    return mapStaffCharacters(connection);
  }

  Future<bool> _toggleFavourite(bool character, String id) async {
    final data = await client.query(
      _mutationToggleFavourite(character),
      variables: {'id': int.parse(id)},
    );
    return data['ToggleFavourite'] != null;
  }
}

const _characterNameFields =
    'first middle last full native alternative alternativeSpoiler userPreferred';

const _staffNameFields =
    'first middle last full native alternative userPreferred';

const _voiceActorFields =
    'voiceActors(sort: [RELEVANCE, ID]) { id name { userPreferred } image { large medium } languageV2 }';

String _mediaConnection(
  String alias,
  String field,
  String type,
  String edgeFields, {
  int perPage = 25,
}) =>
    '''
$alias: $field(type: $type, sort: [POPULARITY_DESC], page: 1, perPage: $perPage) {
  pageInfo { hasNextPage }
  edges { $edgeFields node { $anilistMediaFragment } }
}''';

final _queryCharacter =
    '''
query (\$id: Int) {
  Character(id: \$id) {
    id
    name { $_characterNameFields }
    image { large medium }
    description(asHtml: false)
    gender
    dateOfBirth { year month day }
    age
    bloodType
    isFavourite
    favourites
    siteUrl
    ${_mediaConnection('anime', 'media', 'ANIME', 'characterRole $_voiceActorFields')}
    ${_mediaConnection('manga', 'media', 'MANGA', 'characterRole')}
  }
}''';

final _queryStaff =
    '''
query (\$id: Int) {
  Staff(id: \$id) {
    id
    name { $_staffNameFields }
    languageV2
    image { large medium }
    description(asHtml: false)
    primaryOccupations
    gender
    dateOfBirth { year month day }
    dateOfDeath { year month day }
    age
    yearsActive
    homeTown
    bloodType
    isFavourite
    favourites
    siteUrl
    ${_mediaConnection('anime', 'staffMedia', 'ANIME', 'staffRole')}
    ${_mediaConnection('manga', 'staffMedia', 'MANGA', 'staffRole')}
    characters(sort: [FAVOURITES_DESC], page: 1, perPage: 50) {
      pageInfo { hasNextPage }
      edges { role node { id name { userPreferred } image { large medium } } media { id type title { userPreferred } } }
    }
  }
}''';

final _queryCharacterMedia =
    '''
query (\$id: Int, \$type: MediaType, \$page: Int) {
  Character(id: \$id) {
    media(type: \$type, sort: [POPULARITY_DESC], page: \$page, perPage: 25) {
      pageInfo { hasNextPage }
      edges { characterRole node { $anilistMediaFragment } }
    }
  }
}''';

final _queryStaffMedia =
    '''
query (\$id: Int, \$type: MediaType, \$page: Int) {
  Staff(id: \$id) {
    staffMedia(type: \$type, sort: [POPULARITY_DESC], page: \$page, perPage: 25) {
      pageInfo { hasNextPage }
      edges { staffRole node { $anilistMediaFragment } }
    }
  }
}''';

const _queryStaffCharacters = '''
query (\$id: Int, \$page: Int) {
  Staff(id: \$id) {
    characters(sort: [FAVOURITES_DESC], page: \$page, perPage: 50) {
      pageInfo { hasNextPage }
      edges { role node { id name { userPreferred } image { large medium } } media { id type title { userPreferred } } }
    }
  }
}''';

String _mutationToggleFavourite(bool character) =>
    '''
mutation (\$id: Int) {
  ToggleFavourite(${character ? 'characterId' : 'staffId'}: \$id) {
    ${character ? 'characters' : 'staff'}(page: 1, perPage: 1) { pageInfo { total } }
  }
}''';
