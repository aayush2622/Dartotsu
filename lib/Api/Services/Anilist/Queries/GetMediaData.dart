part of '../Queries.dart';

extension on AnilistQueries {
  Future<Media?> _getMedia(String id, {bool mal = false}) async {
    try {
      final data  = await client.query(_queryMediaData(id, mal: mal));
      final media = data['Media'] as Map<String, dynamic>?;
      return media == null ? null : mapAnilistMedia(media);
    } on AnilistException {
      // AniList is down or rate-limited — fall back to the static media index.
      return _mediaFromIndex(id);
    }
  }

  /// Tries anime shard first then manga shard (type is unknown from ID alone).
  Future<Media?> _mediaFromIndex(String id) async {
    final numId = int.tryParse(id);
    if (numId == null) return null;
    return await _mediaIndex.getById(numId, isAnime: true) ??
        await _mediaIndex.getById(numId, isAnime: false);
  }
}

String _queryMediaData(String id, {bool mal = false}) =>
    '''
{
  Media(${mal ? 'idMal' : 'id'}: $id) {
    $anilistMediaFragment
    startDate { year month day }
    endDate { year month day }
  }
}''';
