part of '../MalQueries.dart';

extension on MalQueries {
  static const field =
      "fields=mean,num_list_users,status,nsfw,mean,my_list_status,num_episodes,num_chapters,genres,media_type";

  Future<Map<String, List<Media>>> _initHomePage() async {
    try {
      var list = {
        'https://api.myanimelist.net/v2/users/@me/animelist?$field&limit=1000&sort=list_updated_at&nsfw=1',
        'https://api.myanimelist.net/v2/users/@me/mangalist?$field&limit=1000&sort=list_updated_at&nsfw=1'
      };
      final results = await Future.wait(list.map(executeQuery<MediaResponse>));
      final responses = await Future.wait([
        () async {
          results[0]?.data?.forEach((m) => m.node?.mediaType = 'anime');
          return await processMediaResponse(results[0]);
        }(),
        () async {
          results[1]?.data?.forEach((m) => m.node?.mediaType = 'manga');
          return await processMediaResponse(results[1]);
        }(),
      ]);

      var animeList = groupBy(responses[0], (m) => m.userStatus ?? 'other');
      var mangaList = groupBy(responses[1], (m) => m.userStatus ?? 'other');

      final removeList = loadData(PrefName.malRemoveList);
      List<Media> removedMedia = [];

      Map<String, List<Media>> returnMap = {};

      if (animeList['watching'] != null) {
        returnMap['Watching'] = animeList['watching']!;
      }
      if (animeList['on_hold'] != null) {
        returnMap['OnHold'] = animeList['on_hold']!;
      }
      if (animeList['dropped'] != null) {
        returnMap['Dropped'] = animeList['dropped']!;
      }
      if (animeList['plan_to_watch'] != null) {
        returnMap['PlanToWatch'] = animeList['plan_to_watch']!;
      }

      if (mangaList['reading'] != null) {
        returnMap['Reading'] = mangaList['reading']!;
      }
      if (mangaList['on_hold'] != null) {
        returnMap['OnHoldReading'] = mangaList['on_hold']!;
      }
      if (mangaList['dropped'] != null) {
        returnMap['DroppedReading'] = mangaList['dropped']!;
      }
      if (mangaList['plan_to_read'] != null) {
        returnMap['PlanToRead'] = mangaList['plan_to_read']!;
      }

      List<Media> mediaToRemove = [];

      for (var m in returnMap.values) {
        for (var media in m) {
          if (removeList.contains(media.id)) {
            mediaToRemove.add(media);
          }
        }
      }
      for (var media in mediaToRemove) {
        removedMedia.add(media);
        for (var element in returnMap.values) {
          element.remove(media);
        }
      }
      returnMap['hidden'] = removedMedia;
      return returnMap;
    } catch (e) {
      Logger.log('Error in initHomePage $e');
      return {};
    }
  }
}
