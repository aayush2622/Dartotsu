part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<Media?> _getMedia(String id, {bool mal = false}) async {
    final data = await client.query(_queryMediaData(id, mal: mal));
    final media = data['Media'] as Map<String, dynamic>?;
    return media == null ? null : mapAnilistMedia(media);
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
