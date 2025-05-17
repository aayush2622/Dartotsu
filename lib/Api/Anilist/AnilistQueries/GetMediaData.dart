part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<Media?> _getMedia(int id, {bool mal = true}) async => Media.mediaData(
      ((await executeQuery<MediaResponse>(_queryMediaData(id, mal: mal),
              force: true))
          ?.data
          ?.media)!);
}

String _queryMediaData(int id, {bool mal = false}) => '''{
  Media(${mal ? 'idMal' : 'id'}: $id) {
    id 
    idMal 
    status 
    chapters 
    episodes 
    nextAiringEpisode {
      episode
    }
    type 
    meanScore 
    isAdult 
    isFavourite 
    format 
    bannerImage 
    coverImage {
      large
    }
    title {
      english 
      romaji 
      userPreferred
    }
    mediaListEntry {
      progress 
      private 
      score(format: POINT_100) 
      status
    }
  }
}''';
