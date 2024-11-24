part of '../MalQueries.dart';

extension on MalQueries {
  static const field =
      "fields=mean,num_list_users,status,nsfw,mean,my_list_status,num_episodes,num_chapters,genres";

  Future<List<Media>> fetchMediaList(String endpoint) async {
    final response = await externalQuery<MediaResponse>(endpoint);
    return response?.data
            ?.where((m) => m.node != null)
            .map((m) => Media.fromMal(m.node!))
            .toList() ??
        [];
  }

  Future<Map<String, List<Media>>> _getAnimeList() async {
    final list = <String, List<Media>>{};
    final animeLayoutMap = PrefManager.getVal(PrefName.malAnimeLayout);

    var currentSeasonMap = mal.currentSeasons[1];
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
    final results = await Future.wait(endpoints.map(fetchMediaList));

    int resultIndex = 2;
    queryMappings.forEach((key, _) {
      if (animeLayoutMap[key] == true) {
        list[key.camelCase!] = results[resultIndex];
        resultIndex++;
      }
    });

    list["popularAnime"] = results[0];
    list["trendingAnime"] = results[1];

    return list;
  }

  Future<Map<String, List<Media>>> _getMangaList() async {
    final list = <String, List<Media>>{};
    final mangaLayoutMap = PrefManager.getVal(PrefName.malMangaLayout);
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
    final results = await Future.wait(endpoints.map(fetchMediaList));

    int resultIndex = 2;
    queryMappings.forEach((key, _) {
      if (mangaLayoutMap[key] == true) {
        list[key.camelCase!] = results[resultIndex];
        resultIndex++;
      }
    });
    list["popularManga"] = results[0];
    list["trendingManga"] = results[1];
    return list;
  }

  Future<List<Media>> _getTrending({String? year, String? season}) async { // season also gets manga type


    var anime = '${MalStrings.endPoint}anime/season/$year/$season?limit=15&offset=1&sort=anime_num_list_users&$field';
    var manga = '${MalStrings.endPoint}manga/ranking?offset=0&ranking_type=$season&limit=15&$field';
    return fetchMediaList(year != null ? anime : manga);
  }

  Future<List<Media>> _loadNextPage(String type, int page) async {

    return fetchMediaList(
        '${MalStrings.endPoint}$type/ranking?offset=${page * 50}&ranking_type=bypopularity&limit=50&$field');
  }
}
