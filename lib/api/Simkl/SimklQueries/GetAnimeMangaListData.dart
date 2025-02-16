part of '../SimklQueries.dart';

extension on SimklQueries {
  Future<Map<String, List<media.Media>>> _getAnimeList() async {
    final list = <String, List<media.Media>>{};
    final urls = {
      'premiere':
          'https://api.simkl.com/anime/premieres/param?type=all&client_id=${SimklLogin.clientId}',
      'airingAnime':
          'https://api.simkl.com/anime/airing?date?sort=time&client_id=${SimklLogin.clientId}',
    };
    final mangaLayoutMap = loadData(PrefName.simklAnimeLayout);

    Map<String, String> generate = Map.fromEntries(
      urls.entries.where((entry) => mangaLayoutMap[entry.key] == true),
    );

    generate.addAll({
      'trendingAnime':
          'https://api.simkl.com/anime/trending/today?extended=overview,metadata,tmdb,genres,trailer&client_id=${SimklLogin.clientId}',
      'popularAnime':
          'https://api.simkl.com/anime/genres/all/all-types/all-countries/all-years?client_id=${SimklLogin.clientId}',
    });
    final results = await Future.wait(generate.entries.map((entry) async {
      final response = await executeQuery<Media>(entry.value, mapKey: 'anime');
      return MapEntry(entry.key,
          await updateAnimeFromLocal(await processMediaResponse(response)));
    }));

    list.addEntries(results);
    return list;
  }

  Future<Map<String, List<media.Media>>> _getMangaList() async {
    final list = <String, List<media.Media>>{};
    return list;
  }

  Future<List<media.Media>> updateAnimeFromLocal(List<media.Media> m) async {
    final localData = loadCustomData<String?>('simklUserAnimeList');
    if (localData == null) return m;
    var media = Media.fromJson(jsonDecode(localData));
    if (media.anime?.isEmpty ?? true) return m;
    final localList = await processMediaResponse(media);
    for (final localMedia in localList) {
      for (final existingMedia in m) {
        if (existingMedia.id == localMedia.id) {
          existingMedia.description = localMedia.description;
          existingMedia.userProgress = localMedia.userProgress;
          existingMedia.userScore = localMedia.userScore;
          existingMedia.userStatus = localMedia.userStatus;
          existingMedia.anime?.totalEpisodes ??=
              localMedia.anime?.totalEpisodes;
        }
      }
    }
    return m;
  }

  Future<List<media.Media>> _getTrending({String? type}) async {
    var updaterShowList = await executeQuery<Media>(
      'https://api.simkl.com/anime/trending/$type?extended=overview,metadata,tmdb,genres,trailer&client_id=${SimklLogin.clientId}',
      mapKey: 'anime',
    );
    var map = await processMediaResponse(updaterShowList);
    return await updateAnimeFromLocal(map);
  }

  Future<List<media.Media>> _loadNextPage(String type, int page) async {
    var updaterShowList = await executeQuery<Media>(
      'https://api.simkl.com/anime/genres/all/all-types/all-countries/all-years?client_id=${SimklLogin.clientId}&page=$page',
      mapKey: 'anime',
    );
    var map = await processMediaResponse(updaterShowList);
    return await updateAnimeFromLocal(map);
  }
}
