part of '../Queries.dart';

extension on AnilistQueries {
  Future<Media?> _getMedia(String id, {bool mal = false}) async {
    try {
      final data = await client.query(
        _queryMediaData(id, mal: mal),
        showErrors: mal,
      );
      final media = data['Media'] as Map<String, dynamic>?;
      return media == null ? null : mapAnilistMedia(media);
    } on AnilistException catch (e) {
      final numeric = int.tryParse(id);
      final cached = mal || numeric == null
          ? null
          : await _mediaIndex.findById(numeric);
      if (cached != null) return cached;
      if (!mal) {
        snackString(getString.serviceError(getString.anilist, e.message));
      }
      rethrow;
    }
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
