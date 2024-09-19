part of '../AnilistQueries.dart';

extension GetHomePageData on AnilistQueries {
  Future<Map<String, List<media>>> _initHomePage() async {
    try {
      final removeList = PrefManager.getVal(PrefName.removeList);
      const hidePrivate = true;
      List<media> removedMedia = [];
      final homeLayoutMap = PrefManager.getVal(PrefName.homeLayout);


      var response =
          await executeQuery<UserListResponse>(_queryHomeList());
      Map<String, List<media>> returnMap = {};

      void processMedia(String type, List<MediaList>? currentMedia,
          List<MediaList>? repeatingMedia) {
        Map<int, media> subMap = {};
        List<media> returnArray = [];

        for (var entry in (currentMedia ?? []) + (repeatingMedia ?? [])) {
          var media = mediaListData(entry);
          if (!removeList.contains(media.id) &&
              (!hidePrivate || !media.isListPrivate)) {
            media.cameFromContinue = true;
            subMap[media.id] = media;
          } else {
            removedMedia.add(media);
          }
        }

        List<int> list =
            PrefManager.getCustomVal<List<int>>("continue${type}List") ?? [];
        if (list.isNotEmpty) {
          returnArray.addAll(list.reversed.map((id) => subMap[id]!));
          returnArray
              .addAll(subMap.values.where((m) => !returnArray.contains(m)));
        } else {
          returnArray.addAll(subMap.values);
        }

        returnMap["current$type"] = returnArray;
      }

      void processFavorites(String type, List<MediaEdge>? favorites) {
        List<media> returnArray = [];
        for (var entry in (favorites ?? [])) {
          var media = mediaEdgeData(entry);
          media.isFav = true;
          if (!removeList.contains(media.id) &&
              (!hidePrivate || !media.isListPrivate)) {
            returnArray.add(media);
          } else {
            removedMedia.add(media);
          }
        }
        returnMap["favorite$type"] = returnArray;
      }

      List<MediaList> getMediaList(List<MediaListGroup>? lists) {
        return (lists?.expand((x) => x.entries ?? []) ?? [])
            .cast<MediaList>()
            .toList()
            .reversed
            .toList();
      }

      // Define processing mappings
      Map<String, void Function()> processMappings = {
        'Continue Watching': () {
          processMedia(
              "Anime",
              getMediaList(response?.data?.currentAnime?.lists),
              getMediaList(response?.data?.repeatingAnime?.lists));
        },
        'Favourite Anime': () {
          processFavorites(
              "Anime", response?.data?.favoriteAnime?.favourites?.anime?.edges);
        },
        'Planned Anime': () {
          processMedia("AnimePlanned",
              getMediaList(response?.data?.plannedAnime?.lists), null);
        },
        'Continue Reading': () {
          processMedia(
              "Manga",
              getMediaList(response?.data?.currentManga?.lists),
              getMediaList(response?.data?.repeatingManga?.lists));
        },
        'Favourite Manga': () {
          processFavorites(
              "Manga", response?.data?.favoriteManga?.favourites?.manga?.edges);
        },
        'Planned Manga': () {
          processMedia("MangaPlanned",
              getMediaList(response?.data?.plannedManga?.lists), null);
        },
        'Recommended': () {
          Map<int, media> subMap = {};

          var recommendations =
              response?.data?.recommendationQuery?.recommendations ?? [];
          for (var entry in recommendations) {
            var mediaRecommendation = entry.mediaRecommendation;
            if (mediaRecommendation != null) {
              var media = mediaData(mediaRecommendation);
              media.relation = mediaRecommendation.type?.toString() ?? "";
              subMap[media.id] = media;
            }
          }

          Iterable<dynamic> combineIterables(
              Iterable<dynamic>? first, Iterable<dynamic>? second) {
            return (first ?? []).followedBy(second ?? []);
          }

          for (var entry in combineIterables(
              response?.data?.recommendationPlannedQueryAnime?.lists
                  ?.expand((x) => x.entries ?? []),
              response?.data?.recommendationPlannedQueryManga?.lists
                  ?.expand((x) => x.entries ?? []))) {
            var media = mediaListData(entry);
            if (['RELEASING', 'FINISHED'].contains(media.status)) {
              media.relation =
                  entry is MediaList ? 'Anime Planned' : 'Manga Planned';
              subMap[media.id] = media;
            }
          }

          List<media> list = subMap.values.toList()
            ..sort((a, b) => b.meanScore!.compareTo(a.meanScore ?? 0));
          returnMap["recommendations"] = list;
        },
      };

      homeLayoutMap.entries
          .where((entry) => entry.value && processMappings.containsKey(entry.key))
          .forEach((entry) => processMappings[entry.key]!());

      returnMap["hidden"] = removedMedia.toSet().toList();
      return returnMap;
    } catch (e) {
      // Handle exception
      return {};
    }
  }
}
String _queryHomeList(){
  final homeLayoutMap = PrefManager.getVal(PrefName.homeLayout);
  final Map<String, List<String>> queryMappings = {
    'Continue Watching': [
      "currentAnime: ${_continueMediaQuery("ANIME", "CURRENT")}",
      "repeatingAnime: ${_continueMediaQuery("ANIME", "REPEATING")}"
    ],
    'Favourite Anime': ["favoriteAnime: ${_favMediaQuery(true, 1)}"],
    'Planned Anime': [
      "plannedAnime: ${_continueMediaQuery("ANIME", "PLANNING")}"
    ],
    'Continue Reading': [
      "currentManga: ${_continueMediaQuery("MANGA", "CURRENT")}",
      "repeatingManga: ${_continueMediaQuery("MANGA", "REPEATING")}"
    ],
    'Favourite Manga': ["favoriteManga: ${_favMediaQuery(false, 1)}"],
    'Planned Manga': [
      "plannedManga: ${_continueMediaQuery("MANGA", "PLANNING")}"
    ],
    'Recommended': [
      "recommendationQuery: ${_recommendationQuery()}",
      "recommendationPlannedQueryAnime: ${_recommendationPlannedQuery("ANIME")}",
      "recommendationPlannedQueryManga: ${_recommendationPlannedQuery("MANGA")}"
    ],
  };

  String generateOrderedQueries = homeLayoutMap.entries
      .where((entry) => entry.value && queryMappings.containsKey(entry.key))
      .expand((entry) => queryMappings[entry.key]!)
      .toList()
      .join(",");
  return "{$generateOrderedQueries}";
}
String _recommendationQuery() => '''
  Page(page: 1, perPage: 30) { 
    pageInfo { 
      total 
      currentPage 
      hasNextPage 
    } 
    recommendations(sort: RATING_DESC, onList: true) { 
      rating 
      userRating 
      mediaRecommendation { 
        id 
        idMal 
        isAdult 
        mediaListEntry { 
          progress 
          private 
          score(format: POINT_100) 
          status 
        } 
        chapters 
        isFavourite 
        format 
        episodes 
        nextAiringEpisode { episode } 
        popularity 
        meanScore 
        isFavourite 
        format 
        title { english romaji userPreferred } 
        type 
        status(version: 2) 
        bannerImage 
        coverImage { large } 
      } 
    } 
  }
''';

String _recommendationPlannedQuery(String type) => '''
  MediaListCollection(userId: ${Anilist.userid}, type: $type, status: PLANNING${type == "ANIME" ? ", sort: MEDIA_POPULARITY_DESC" : ""}) { 
    lists { 
      entries { 
        media { 
          id 
          mediaListEntry { 
            progress 
            private 
            score(format: POINT_100) 
            status 
          } 
          idMal 
          type 
          isAdult 
          popularity 
          status(version: 2) 
          chapters 
          episodes 
          nextAiringEpisode { episode } 
          meanScore 
          isFavourite 
          format 
          bannerImage 
          coverImage { large } 
          title { english romaji userPreferred } 
        } 
      } 
    } 
  }
''';

String _continueMediaQuery(String type, String status) => '''
  MediaListCollection(userId: ${Anilist.userid}, type: $type, status: $status, sort: UPDATED_TIME) { 
    lists { 
      entries { 
        progress 
        private 
        score(format: POINT_100) 
        status 
        media { 
          id 
          idMal 
          type 
          isAdult 
          status 
          chapters 
          episodes 
          nextAiringEpisode { episode } 
          meanScore 
          isFavourite 
          format 
          bannerImage 
          coverImage { large } 
          title { english romaji userPreferred } 
        } 
      } 
    } 
  }
''';

String _favMediaQuery(bool anime, int page) => '''
  User(id: ${Anilist.userid}) { 
    id 
    favourites { 
      ${anime ? "anime" : "manga"}(page: $page) { 
        pageInfo { hasNextPage } 
        edges { 
          favouriteOrder 
          node { 
            id 
            idMal 
            isAdult 
            mediaListEntry { 
              progress 
              private 
              score(format: POINT_100) 
              status 
            } 
            chapters 
            isFavourite 
            format 
            episodes 
            nextAiringEpisode { episode } 
            meanScore 
            isFavourite 
            format 
            startDate { year month day } 
            title { english romaji userPreferred } 
            type 
            status(version: 2) 
            bannerImage 
            coverImage { large } 
          } 
        } 
      } 
    } 
  }
''';
