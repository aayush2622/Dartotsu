part of '../MalQueries.dart';

extension on MalQueries {
  static const field =
      "fields=mean,num_list_users,status,nsfw,mean,my_list_status,num_episodes,num_chapters,genres";

  Future<Map<String, List<Media>>> _initHomePage() async {
    try {
      var list = {
        'https://api.myanimelist.net/v2/users/@me/animelist?$field&limit=1000&sort=list_updated_at&nsfw=1',
        'https://api.myanimelist.net/v2/users/@me/mangalist?$field&limit=1000&sort=list_updated_at&nsfw=1'
      };
      final results = await Future.wait(list.map(executeQuery<MediaResponse>));

      results[0]?.data?.forEach((m) {
        m.node?.mediaType = 'anime';
      });

      results[1]?.data?.forEach((m) {
        m.node?.mediaType = 'manga';
      });

      var animeList = groupBy(await processMediaResponse(results[0]),
          (m) => m.userStatus ?? 'other');
      var mangaList = groupBy(await processMediaResponse(results[1]),
          (m) => m.userStatus ?? 'other');

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
      return returnMap;
    } catch (e) {
      return {};
    }
  }
}
