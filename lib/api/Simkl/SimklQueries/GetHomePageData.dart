part of '../SimklQueries.dart';

Future<List<media.Media>> processMediaResponse(Media? data) async {
  return await CombineWorker().executeWithArg(
      (data) => data?.map((m) => media.Media.fromSimkl(m)).toList() ?? [],
      data?.anime);
}

extension on SimklQueries {
  Future<Map<String, List<media.Media>>> _initHomePage() async {
    final list = <String, List<media.Media>>{};

    final res = await executeQuery<Media>(
      'https://api.simkl.com/sync/all-items/anime/?extended=full',
    );

    var animeList = groupBy(
      await processMediaResponse(res),
      (m) => m.userStatus ?? 'other',
    );

    list['watching'] = animeList['CURRENT'] ?? [];
    list['dropped'] = animeList['DROPPED'] ?? [];
    list['planned'] = animeList['PLANNING'] ?? [];
    return list;
  }
}
