part of '../MalQueries.dart';

extension on MalQueries {
  static const field =
      "fields=mean,num_list_users,status,nsfw,mean,my_list_status,num_episodes,num_chapters,genres,media_type";

  Future<List<Media>> processMediaResponse(MediaResponse? data) async {
    return await compute(
        (data) =>
            data
                ?.where((m) => m.node != null)
                .map((m) => Media.fromMal(m.node!))
                .toList() ??
            [],
        data?.data);
  }

  Future<Map<String, List<Media>>> _getAnimeList() async {
    final list = <String, List<Media>>{};
    final animeLayoutMap = loadData(PrefName.malAnimeLayout);

    var currentSeasonMap = Mal.currentSeasons[1];
    var season = currentSeasonMap.keys.first;
    var year = currentSeasonMap.values.first;

    final extra = [
      '${MalStrings.endPoint}anime/ranking?offset=0&ranking_type=bypopularity&limit=50&$field',
      '${MalStrings.endPoint}anime/season/$year/$season?limit=15&offset=1&sort=anime_num_list_users&$field',
    ];

    final Map<String, List<String>> queryMappings = {
      'Top Airing': [
        '${MalStrings.endPoint}anime/ranking?offset=0&ranking_type=airing&limit=50&$field',
      ],
      'Trending Movies': [
        '${MalStrings.endPoint}anime/ranking?offset=0&ranking_type=movie&limit=50&$field'
      ],
      'Top Rated Series': [
        '${MalStrings.endPoint}anime/ranking?offset=0&ranking_type=tv&limit=50&$field'
      ],
      'Most Favourite Series': [
        '${MalStrings.endPoint}anime/ranking?offset=0&ranking_type=favorite&limit=50&$field'
      ],
    };
    var generateOrderedQueries = animeLayoutMap.entries
        .where((entry) => entry.value && queryMappings.containsKey(entry.key))
        .expand((entry) => queryMappings[entry.key]!)
        .toList();

    var endpoints = extra + generateOrderedQueries;
    final results =
        await Future.wait(endpoints.map(executeQuery<MediaResponse>));
    int resultIndex = 1;
    List<Future> futures = [];

    queryMappings.forEach((key, _) {
      if (animeLayoutMap[key] == true) {
        futures.add(() async {
          resultIndex++;
          list[key.camelCase!] =
              await processMediaResponse(results[resultIndex]);
        }());
      }
    });

    futures.add(() async {
      list["popularAnime"] = await processMediaResponse(results[0]);
    }());

    futures.add(() async {
      list["trendingAnime"] = await processMediaResponse(results[1]);
    }());

    await Future.wait(futures);
    return list;
  }

  Future<Map<String, List<Media>>> _getMangaList() async {
    final list = <String, List<Media>>{};
    final mangaLayoutMap = loadData(PrefName.malMangaLayout);
    final extra = [
      '${MalStrings.endPoint}manga/ranking?offset=0&ranking_type=bypopularity&limit=50&$field',
      '${MalStrings.endPoint}manga/ranking?offset=0&ranking_type=manga&limit=12&$field',
    ];
    final Map<String, List<String>> queryMappings = {
      'Trending Manhwa': [
        '${MalStrings.endPoint}manga/ranking?offset=0&ranking_type=manhwa&limit=50&$field',
      ],
      'Trending Novels': [
        '${MalStrings.endPoint}manga/ranking?offset=0&ranking_type=novels&limit=50&$field'
      ],
      'Top Rated Manga': [
        '${MalStrings.endPoint}manga/ranking?offset=0&ranking_type=manga&limit=50&$field'
      ],
      'Most Favourite Manga': [
        '${MalStrings.endPoint}manga/ranking?offset=0&ranking_type=favorite&limit=50&$field'
      ],
    };

    var generateOrderedQueries = mangaLayoutMap.entries
        .where((entry) => entry.value && queryMappings.containsKey(entry.key))
        .expand((entry) => queryMappings[entry.key]!)
        .toList();

    var endpoints = extra + generateOrderedQueries;
    final results =
        await Future.wait(endpoints.map(executeQuery<MediaResponse>));

    int resultIndex = 1;
    List<Future> futures = [];

    queryMappings.forEach((key, _) {
      if (mangaLayoutMap[key] == true) {
        futures.add(() async {
          resultIndex++;
          list[key.camelCase!] =
              await processMediaResponse(results[resultIndex]);
        }());
      }
    });

    futures.add(() async {
      list["popularManga"] = await processMediaResponse(results[0]);
    }());
    futures.add(() async {
      list["trendingManga"] = await processMediaResponse(results[1]);
    }());

    await Future.wait(futures);
    return list;
  }

  Future<List<Media>> _getTrending({String? year, String? season}) async {
    // season is also used to gets manga type
    var anime =
        '${MalStrings.endPoint}anime/season/$year/$season?limit=15&offset=1&sort=anime_num_list_users&$field';
    var manga =
        '${MalStrings.endPoint}manga/ranking?offset=0&ranking_type=$season&limit=15&$field';
    return await processMediaResponse(
        await executeQuery<MediaResponse>(year != null ? anime : manga));
  }

  Future<List<Media>> _loadNextPage(String type, int page) async {
    return await processMediaResponse(await executeQuery<MediaResponse>(
        '${MalStrings.endPoint}$type/ranking?offset=${page * 50}&ranking_type=bypopularity&limit=50&$field'));
  }
}
