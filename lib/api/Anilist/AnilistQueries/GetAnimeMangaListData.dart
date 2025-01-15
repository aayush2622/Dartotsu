part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<Map<String, List<Media>>> _getAnimeList() async {
    final list = <String, List<Media>>{};

    List<Media>? filterRecentUpdates(Page? page) {
      final listOnly = PrefManager.getVal(PrefName.recentlyListOnly);
      final adultOnly = PrefManager.getVal(PrefName.adultOnly);
      final idArr = <int>{};

      if (page == null || page.airingSchedules == null) return [];

      return page.airingSchedules
          ?.where((i) {
            final media = i.media;
            if (media == null || idArr.contains(media.id)) return false;

            final shouldAdd = (!listOnly &&
                    media.countryOfOrigin == "JP" &&
                    adultOnly &&
                    media.isAdult == true) ||
                (!listOnly &&
                    !adultOnly &&
                    media.countryOfOrigin == "JP" &&
                    media.isAdult == false) ||
                (listOnly && media.mediaListEntry != null);

            if (shouldAdd) {
              idArr.add(media.id);
              return true;
            }
            return false;
          })
          .map((i) => Media.mediaData(i.media!))
          .toList();
    }

    final animeLayoutMap = PrefManager.getVal(PrefName.anilistAnimeLayout);
    final animeList =
        await executeQuery<AnimeListResponse>(_queryAnimeList(), force: true);
    Map<String, void Function()> returnMap = {
      'Recent Updates': () => list["recentUpdates"] =
          filterRecentUpdates(animeList?.data?.recentUpdates)!,
      'Trending Movies': () async => list["trendingMovies"] =
          await _mediaList(animeList?.data?.trendingMovies),
      'Top Rated Series': () async => list["topRatedSeries"] =
          await _mediaList(animeList?.data?.topRatedSeries),
      'Most Favourite Series': () async => list["mostFavSeries"] =
          await _mediaList(animeList?.data?.mostFavSeries),
    };
    animeLayoutMap.entries
        .where((entry) => entry.value && returnMap.containsKey(entry.key))
        .forEach((entry) => returnMap[entry.key]!());

    list["popularAnime"] = await _mediaList(animeList?.data?.popularAnime);
    list["trendingAnime"] = await _mediaList(animeList?.data?.trendingAnime);
    return list;
  }

  Future<Map<String, List<Media>>> _getMangaList() async {
    final list = <String, List<Media>>{};
    final mangaLayoutMap = PrefManager.getVal(PrefName.anilistMangaLayout);
    final mangaList =
        await executeQuery<MangaListResponse>(_queryMangaList(), force: true);

    Map<String, void Function()> returnMap = {
      'Trending Manhwa': () async => list["trendingManhwa"] =
          await _mediaList(mangaList?.data?.trendingManhwa),
      'Trending Novels': () async => list["trendingNovel"] =
          await _mediaList(mangaList?.data?.trendingNovel),
      'Top Rated Manga': () async =>
          list["topRated"] = await _mediaList(mangaList?.data?.topRated),
      'Most Favourite Manga': () async =>
          list["mostFav"] = await _mediaList(mangaList?.data?.mostFav),
    };
    mangaLayoutMap.entries
        .where((entry) => entry.value && returnMap.containsKey(entry.key))
        .forEach((entry) => returnMap[entry.key]!());

    list["popularManga"] = await _mediaList(mangaList?.data?.popularManga);
    list["trending"] = await _mediaList(mangaList?.data?.trending);
    return list;
  }
}

String _queryAnimeList() {
  final animeLayoutMap = PrefManager.getVal(PrefName.anilistAnimeLayout);
  var currentSeasonMap = Anilist.currentSeasons[1];
  var season = currentSeasonMap.keys.first;
  var year = currentSeasonMap.values.first;
  final extra = [
    'popularAnime: ${_buildQueryString("POPULARITY_DESC", "ANIME")}',
    'trendingAnime: ${_buildQueryString("TRENDING_DESC", "ANIME", perPage: 12, season: season, seasonYear: year)}',
  ];
  final Map<String, List<String>> queryMappings = {
    'Recent Updates': [
      'recentUpdates: ${_recentAnimeUpdates(1)}',
    ],
    'Trending Movies': [
      'trendingMovies: ${_buildQueryString("POPULARITY_DESC", "ANIME", format: "MOVIE")}'
    ],
    'Top Rated Series': [
      'topRatedSeries: ${_buildQueryString("SCORE_DESC", "ANIME", format: 'TV')}'
    ],
    'Most Favourite Series': [
      'mostFavSeries: ${_buildQueryString("FAVOURITES_DESC", "ANIME", format: 'TV')}'
    ],
  };
  String generateOrderedQueries = animeLayoutMap.entries
      .where((entry) => entry.value && queryMappings.containsKey(entry.key))
      .expand((entry) => queryMappings[entry.key]!)
      .toList()
      .join(",");
  generateOrderedQueries += ",${extra.join(",")}";
  return "{$generateOrderedQueries}";
}

String _queryMangaList() {
  final mangaLayoutMap = PrefManager.getVal(PrefName.anilistMangaLayout);
  final extra = [
    'trending: ${_buildQueryString("TRENDING_DESC", "MANGA", perPage: 12, country: "JP")}',
    'popularManga: ${_buildQueryString("POPULARITY_DESC", "MANGA", perPage: 50, country: "JP")}',
  ];
  final Map<String, List<String>> queryMappings = {
    'Trending Manhwa': [
      'trendingManhwa: ${_buildQueryString("POPULARITY_DESC", "MANGA", country: "KR")}'
    ],
    'Trending Novels': [
      'trendingNovel: ${_buildQueryString("POPULARITY_DESC", "MANGA", format: "NOVEL", country: "JP")}'
    ],
    'Top Rated Manga': [
      'topRated: ${_buildQueryString("SCORE_DESC", "MANGA")}'
    ],
    'Most Favourite Manga': [
      'mostFav: ${_buildQueryString("FAVOURITES_DESC", "MANGA")}'
    ],
  };
  String generateOrderedQueries = mangaLayoutMap.entries
      .where((entry) => entry.value && queryMappings.containsKey(entry.key))
      .expand((entry) => queryMappings[entry.key]!)
      .toList()
      .join(",");
  generateOrderedQueries += ",${extra.join(",")}";
  return "{$generateOrderedQueries}";
}

Future<List<Media>> _mediaList(Page? media) async {
  if (media == null || media.media == null) {
    return [];
  }
  return media.media!.map((media) => Media.mediaData(media)).toList();
}


String _buildQueryString(String sort, String type,
    {String? format,
    String? country,
    String? season,
    int? seasonYear,
    int perPage = 50}) {
  final includeList =
      (type == "ANIME" && !PrefManager.getVal(PrefName.includeAnimeList))
          ? "onList:false"
          : (type == "MANGA" && !PrefManager.getVal(PrefName.includeMangaList))
              ? "onList:false"
              : "";

  final isAdult = PrefManager.getVal(PrefName.adultOnly) ? "isAdult:true" : "";

  final formatFilter = format != null ? "format:$format, " : "";

  final countryFilter = country != null ? "countryOfOrigin:$country, " : "";
  final seasonFilter = season != null ? "season:$season, " : "";
  final seasonYearFilter = seasonYear != null ? "seasonYear:$seasonYear, " : "";

  return """Page(page:1,perPage:$perPage){
    pageInfo{
      hasNextPage 
      total
    }
    media(
      sort:$sort, 
      type:$type, 
      $formatFilter 
      $countryFilter 
      $seasonFilter 
      $seasonYearFilter 
      $includeList 
      $isAdult
    ){
      id 
      idMal 
      status 
      chapters 
      episodes 
      nextAiringEpisode{
        episode
      } 
      isAdult 
      type 
      meanScore 
      isFavourite 
      format 
      genres
      bannerImage 
      countryOfOrigin 
      coverImage{
        large
      } 
      title{
        english 
        romaji 
        userPreferred
      } 
      mediaListEntry{
        progress 
        private 
        score(format:POINT_100) 
        status
      }
    }
  }""";
}

String _recentAnimeUpdates(int page) {
  final currentTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
  final timeLimit = currentTime - 10000;

  return """Page(page:$page,perPage:50){
    pageInfo{
      hasNextPage
      total
    }
    airingSchedules(
      airingAt_greater:0, 
      airingAt_lesser:$timeLimit, 
      sort:TIME_DESC
    ){
      episode 
      airingAt 
      media{
        id 
        idMal 
        status 
        chapters 
        episodes 
        nextAiringEpisode{episode} 
        isAdult 
        type 
        meanScore 
        isFavourite 
        format 
        bannerImage 
        countryOfOrigin 
        coverImage{large} 
        title{
          english 
          romaji 
          userPreferred
        } 
        mediaListEntry{
          progress 
          private 
          score(format:POINT_100) 
          status
        }
      }
    }
  }""";
}
