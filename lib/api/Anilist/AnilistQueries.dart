import 'dart:convert';
import 'dart:math';

import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/Prefrerences/Prefrences.dart';

import '../../DataClass/Author.dart';
import '../../DataClass/Character.dart';
import '../../DataClass/Media.dart';
import '../../DataClass/SearchResults.dart';
import '../../DataClass/User.dart';
import '../../Prefrerences/PrefManager.dart';
import '../AnilistNew.dart';
import 'Data/data.dart';
import 'Data/media.dart';
import 'Data/page.dart';
import 'Data/staff.dart';

class AnilistQueries{

  Future<bool> getUserData() async {
      var response = await executeQuery<ViewerResponse>(
          '{Viewer{name options{timezone titleLanguage staffNameLanguage activityMergeTime airingNotifications displayAdultContent restrictMessagesToFollowing} avatar{medium} bannerImage id mediaListOptions{scoreFormat rowOrder animeList{customLists} mangaList{customLists}} statistics{anime{episodesWatched} manga{chaptersRead}} unreadNotificationCount}}'
      );
      var user = response?.data?.user;
      if (user == null) return false;

      Anilist.userid = user.id;
      Anilist.username = user.name;
      Anilist.bg = user.bannerImage;
      Anilist.avatar = user.avatar?.medium;
      Anilist.episodesWatched = user.statistics?.anime?.episodesWatched;
      Anilist.chapterRead = user.statistics?.manga?.chaptersRead;
      Anilist.adult = user.options?.displayAdultContent ?? false;
      Anilist.unreadNotificationCount = user.unreadNotificationCount ?? 0;
      final unread = PrefManager.getVal(PrefName.unReadCommentNotifications);
      Anilist.unreadNotificationCount += unread;
      Anilist.isInitialized = true;

      final options = user.options;
      if (options != null) {
        Anilist.titleLanguage = options.titleLanguage?.name;
        Anilist.staffNameLanguage = options.staffNameLanguage?.name;
        Anilist.airingNotifications = options.airingNotifications ?? false;
        Anilist.restrictMessagesToFollowing = options.restrictMessagesToFollowing ?? false;
        Anilist.timezone = options.timezone;
        Anilist.activityMergeTime = options.activityMergeTime;
      }
      final mediaListOptions = user.mediaListOptions;
      if (mediaListOptions != null) {
        Anilist.scoreFormat = mediaListOptions.scoreFormat;
        Anilist.rowOrder = mediaListOptions.rowOrder;
        Anilist.animeCustomLists = mediaListOptions.animeList?.customLists;
        Anilist.mangaCustomLists = mediaListOptions.mangaList?.customLists;
      }
      return true;
  }

  Future<media?> getMedia(int id, {bool mal = true}) async {
    var response = (await executeQuery<MediaResponse>(
        "{Media(${mal ? 'idMal' : 'id'}: $id){id idMal status chapters episodes nextAiringEpisode{episode}type meanScore isAdult isFavourite format bannerImage coverImage{large}title{english romaji userPreferred}mediaListEntry{progress private score(format:POINT_100)status}}}",
        force: true))
        ?.data
        ?.media;
    return mediaData(response!);
  }

  Future<media?> mediaDetails(media media) async {
    var query =
        "{Media(id:${media.id}){id favourites popularity episodes chapters streamingEpisodes {title thumbnail url site} mediaListEntry{id status score(format:POINT_100)progress private notes repeat customLists updatedAt startedAt{year month day}completedAt{year month day}}reviews(perPage:3, sort:SCORE_DESC){nodes{id mediaId mediaType summary body(asHtml:true) rating ratingAmount userRating score private siteUrl createdAt updatedAt user{id name bannerImage avatar{medium large}}}} isFavourite siteUrl idMal nextAiringEpisode{episode airingAt}source countryOfOrigin format duration season seasonYear startDate{year month day}endDate{year month day}genres studios(isMain:true){nodes{id name siteUrl}}description trailer{site id}synonyms tags{name rank isMediaSpoiler}characters(sort:[ROLE,FAVOURITES_DESC],perPage:25,page:1){edges{role voiceActors { id name { first middle last full native userPreferred } image { large medium } languageV2 } node{id image{medium}name{userPreferred}isFavourite}}}relations{edges{relationType(version:2)node{id idMal mediaListEntry{progress private score(format:POINT_100)status}episodes chapters nextAiringEpisode{episode}popularity meanScore isAdult isFavourite format title{english romaji userPreferred}type status(version:2)bannerImage coverImage{large}}}}staffPreview:staff(perPage:8,sort:[RELEVANCE,ID]){edges{role node{id image{large medium}name{userPreferred}}}}recommendations(sort:RATING_DESC){nodes{mediaRecommendation{id idMal mediaListEntry{progress private score(format:POINT_100)status}episodes chapters nextAiringEpisode{episode}meanScore isAdult isFavourite format title{english romaji userPreferred}type status(version:2)bannerImage coverImage{large}}}}externalLinks{url site}}Page(page:1){pageInfo{total perPage currentPage lastPage hasNextPage}mediaList(isFollowing:true,sort:[STATUS],mediaId:${media.id}){id status score(format: POINT_100) progress progressVolumes user{id name avatar{large medium}}}}}";
    var response = (await executeQuery<MediaResponse>(query, force: true));
    if (response == null) return null;
    void parse() {
      var fetchedMedia = response?.data?.media;
      var user = response?.data?.page;
      if (fetchedMedia == null) return;
      media.source = fetchedMedia.source?.name;
      media.countryOfOrigin = fetchedMedia.countryOfOrigin;
      media.format = fetchedMedia.format?.name;
      media.favourites = fetchedMedia.favourites;
      media.popularity = fetchedMedia.popularity;
      media.startDate = fetchedMedia.startDate;
      media.endDate = fetchedMedia.endDate;
      media.streamingEpisodes = fetchedMedia.streamingEpisodes;
      media.shareLink = fetchedMedia.siteUrl;
      if (fetchedMedia.genres != null) {
        media.genres = fetchedMedia.genres?.toList() ?? [];
      }
      if (fetchedMedia.trailer != null &&
          fetchedMedia.trailer!.site != null &&
          fetchedMedia.trailer!.site.toString() == "youtube") {
        media.trailer =
        "https://www.youtube.com/embed/${fetchedMedia.trailer!.id.toString().trim()}";
      } else {
        media.trailer = null;
      }
      media.synonyms = fetchedMedia.synonyms?.toList() ?? [];
      media.tags = fetchedMedia.tags
          ?.where((i) => i.isMediaSpoiler == false)
          .map((i) => "${i.name} : ${i.rank.toString()}%")
          .toList() ??
          [];
      media.description = fetchedMedia.description.toString();
      if (fetchedMedia.characters != null) {
        media.characters = [];

        fetchedMedia.characters?.edges?.forEach((i) {
          var node = i.node;
          if (node != null) {
            media.characters?.add(
              character(
                id: node.id,
                name: node.name?.userPreferred,
                image: node.image?.medium,
                banner: media.banner ?? media.cover,
                isFav: node.isFavourite ?? false,
                role: i.role?.toString() ?? "",
                voiceActor: (i.voiceActors?.map((voiceActor) {
                  return author(
                      id: voiceActor.id,
                      name: voiceActor.name?.userPreferred,
                      image: voiceActor.image?.large,
                      role: voiceActor.languageV2,
                      character: voiceActor.characters?.nodes);
                }).toList()) ??
                    [],
              ),
            );
          }
        });
      }

      if (fetchedMedia.staff != null) {
        media.staff = [];

        fetchedMedia.staff?.edges?.forEach((i) {
          var node = i.node;
          if (node != null) {
            media.staff?.add(
              author(
                id: node.id,
                name: node.name?.userPreferred,
                image: node.image?.large,
                role: i.role?.toString() ?? "",
              ),
            );
          }
        });
      }
      if (fetchedMedia.relations != null) {
        media.relations = [];

        fetchedMedia.relations?.edges?.forEach((mediaEdge) {
          final m = mediaEdgeData(mediaEdge);
          media.relations?.add(m);

          if (m.relation == "SEQUEL") {
            media.sequel = ((media.sequel?.popularity ?? 0) < (m.popularity ?? 0)
                ? m
                : media.sequel);
          } else if (m.relation == "PREQUEL") {
            media.prequel =
            ((media.prequel?.popularity ?? 0) < (m.popularity ?? 0)
                ? m
                : media.prequel);
          }
        });

        media.relations?.sort((a, b) {
          final popularityComparison =
          (b.popularity ?? 0).compareTo(a.popularity ?? 0);
          if (popularityComparison != 0) return popularityComparison;

          final startDateComparison =
          (b.startDate?.year ?? 0).compareTo(a.startDate?.year ?? 0);
          if (startDateComparison != 0) return startDateComparison;

          return (a.relation ?? "").compareTo(b.relation ?? "");
        });
      }
      if (fetchedMedia.recommendations != null) {
        media.recommendations = [];
        fetchedMedia.recommendations?.nodes?.forEach((i) {
          var mediaRecommendation = i.mediaRecommendation;
          if (mediaRecommendation != null) {
            media.recommendations?.add(
              mediaData(mediaRecommendation),
            );
          }
        });
      }
      if (fetchedMedia.reviews?.nodes != null) {
        media.review = fetchedMedia.reviews?.nodes;
      }
      if (user?.mediaList?.isNotEmpty == true) {
        media.users = (user?.mediaList?.where((item) {
          final user = item.user;
          return user != null;
        }).map((item) {
          final user = item.user!;
          return userData(
            id: user.id,
            name: user.name ?? "Unknown",
            pfp: user.avatar?.large,
            banner: "",
            status: item.status?.name ?? "",
            score: item.score ?? 0,
            progress: item.progress ?? 0,
            totalEpisodes:
            fetchedMedia.episodes ?? fetchedMedia.chapters ?? 0,
          );
        }).toList() ??
            []);
      }
      if (fetchedMedia.mediaListEntry != null) {
        final mediaListEntry = fetchedMedia.mediaListEntry!;
        media.userProgress = mediaListEntry.progress;
        media.isListPrivate = mediaListEntry.private ?? false;
        media.notes = mediaListEntry.notes;
        media.userListId = mediaListEntry.id;
        media.userScore = mediaListEntry.score?.toInt() ?? 0;
        media.userStatus = mediaListEntry.status?.name;
        media.inCustomListsOf =
            mediaListEntry.customLists?.map((k, v) => MapEntry(k, v)) ?? {};
        media.userRepeat = mediaListEntry.repeat ?? 0;
        media.userUpdatedAt = mediaListEntry.updatedAt != null
            ? (mediaListEntry.updatedAt! * 1000)
            : null;
        media.userCompletedAt = mediaListEntry.completedAt;
        media.userStartedAt = mediaListEntry.startedAt;
      } else {
        media.isListPrivate = false;
        media.userStatus = null;
        media.userListId = null;
        media.userProgress = null;
        media.userScore = 0;
        media.userRepeat = 0;
        media.userUpdatedAt = null;
        media.userCompletedAt = 0;
        media.userStartedAt = 0;
      }
      StaffEdge? findAuthorEdge(List<StaffEdge>? edges) {
        if (edges == null) return null;
        try {
          return edges
              .firstWhere((edge) => AnilistController.authorRoles.contains(edge.role?.trim()));
        } catch (e) {
          return null;
        }
      }

      if (media.anime != null) {
        media.anime!.episodeDuration = fetchedMedia.duration;
        media.anime!.season = fetchedMedia.season?.toString();
        media.anime!.seasonYear = fetchedMedia.seasonYear;
        if (fetchedMedia.studios?.nodes?.isNotEmpty == true) {
          final firstStudio = fetchedMedia.studios!.nodes![0];
          media.anime?.mainStudio?.id = firstStudio.id;
          media.anime?.mainStudio?.name = firstStudio.name;
        }
        final authorEdge =
        findAuthorEdge(fetchedMedia.staff?.edges?.cast<StaffEdge>());
        if (authorEdge != null) {
          final authorNode = authorEdge.node;
          media.anime!.mediaAuthor = author(
            id: authorNode!.id,
            name: authorNode.name?.userPreferred ?? "N/A",
            image: authorNode.image?.medium,
            role: "AUTHOR",
          );
        }
        media.anime!.nextAiringEpisodeTime =
            fetchedMedia.nextAiringEpisode?.airingAt?.toInt();
        fetchedMedia.externalLinks?.forEach((link) {
          switch (link.site.toLowerCase()) {
            case "youtube":
              media.anime!.youtube = link.url;
              break;
            case "crunchyroll":
              media.crunchySlug = link.url?.split("/").elementAtOrNull(3);
              break;
            case "vrv":
              media.vrvId = link.url?.split("/").elementAtOrNull(4);
              break;
          }
        });
      } else if (media.manga != null) {
        final authorEdge =
        findAuthorEdge(fetchedMedia.staff?.edges?.cast<StaffEdge>());
        if (authorEdge != null) {
          final authorNode = authorEdge.node;
          media.manga!.mediaAuthor = author(
            id: authorNode!.id,
            name: authorNode.name?.userPreferred ?? "N/A",
            image: authorNode.image?.medium,
            role: "AUTHOR",
          );
        }
      }
    }

    if (response.data?.media != null) {
      parse();
    } else {
      response = await executeQuery(query, force: true, useToken: false);
      if (response?.data?.media != null) {
        snackString('Adult Stuff? Adult Stuff? ( ͡° ͜ʖ ͡° )');
        parse();
      } else {
        snackString('Error getting data from Anilist.');
      }
    }
    return media;
  }

  String recommendationQuery() {
    return 'Page(page: 1, perPage:30) { pageInfo { total currentPage hasNextPage } recommendations(sort: RATING_DESC, onList: true) { rating userRating mediaRecommendation { id idMal isAdult mediaListEntry { progress private score(format:POINT_100) status } chapters isFavourite format episodes nextAiringEpisode {episode} popularity meanScore isFavourite format title {english romaji userPreferred } type status(version: 2) bannerImage coverImage { large } } } }';
  }

  String recommendationPlannedQuery(String type) {
    return ' MediaListCollection(userId: ${Anilist.userid}, type: $type, status: PLANNING${type == "ANIME" ? ", sort: MEDIA_POPULARITY_DESC" : ""} ) { lists { entries { media { id mediaListEntry { progress private score(format:POINT_100) status } idMal type isAdult popularity status(version: 2) chapters episodes nextAiringEpisode {episode} meanScore isFavourite format bannerImage coverImage{large} title { english romaji userPreferred } } } } }';
  }

  String continueMediaQuery(String type, String status) {
    return ' MediaListCollection(userId: ${Anilist.userid}, type: $type, status: $status , sort: UPDATED_TIME ) { lists { entries { progress private score(format:POINT_100) status media { id idMal type isAdult status chapters episodes nextAiringEpisode {episode} meanScore isFavourite format bannerImage coverImage{large} title { english romaji userPreferred } } } } } ';
  }

  String favMediaQuery(bool anime, int page) {
    return 'User(id:${Anilist.userid}){id favourites{${anime ? "anime" : "manga"}(page:$page){pageInfo{hasNextPage}edges{favouriteOrder node{id idMal isAdult mediaListEntry{ progress private score(format:POINT_100) status } chapters isFavourite format episodes nextAiringEpisode{episode}meanScore isFavourite format startDate{year month day} title{english romaji userPreferred}type status(version:2)bannerImage coverImage{large}}}}}}';
  }

  Future<Map<String, List<media>>> initHomePage() async {
    try {
      final removeList = PrefManager.getVal(PrefName.removeList);
      const hidePrivate = true;
      List<media> removedMedia = [];
      final toShow = PrefManager.getVal(PrefName.homeLayout);

      List<String> queries = [];
      if (toShow[0]) {
        queries.add(
            """currentAnime: ${continueMediaQuery("ANIME", "CURRENT")}""");
        queries.add(
            """repeatingAnime: ${continueMediaQuery("ANIME", "REPEATING")}""");
      }
      if (toShow[1]) {
        queries.add("""favoriteAnime: ${favMediaQuery(true, 1)}""");
      }
      if (toShow[2]) {
        queries.add(
            """plannedAnime: ${continueMediaQuery("ANIME", "PLANNING")}""");
      }
      if (toShow[3]) {
        queries.add(
            """currentManga: ${continueMediaQuery("MANGA", "CURRENT")}""");
        queries.add(
            """repeatingManga: ${continueMediaQuery("MANGA", "REPEATING")}""");
      }
      if (toShow[4]) {
        queries.add("""favoriteManga: ${favMediaQuery(false, 1)}""");
      }
      if (toShow[5]) {
        queries.add(
            """plannedManga: ${continueMediaQuery("MANGA", "PLANNING")}""");
      }
      if (toShow[6]) {
        queries.add("""recommendationQuery: ${recommendationQuery()}""");
        queries.add(
            """recommendationPlannedQueryAnime: ${recommendationPlannedQuery("ANIME")}""");
        queries.add(
            """recommendationPlannedQueryManga: ${recommendationPlannedQuery("MANGA")}""");
      }

      String query = "{${queries.join(",")}}";
      var response = await executeQuery<UserListResponse>(query);
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

        var list =
            PrefManager.getCustomVal<List<int>>("continue${type}List") ?? [];
        if (list.isNotEmpty) {
          for (var id in list.reversed) {
            if (subMap.containsKey(id)) returnArray.add(subMap[id]!);
          }
          returnArray
              .addAll(subMap.values.where((m) => !returnArray.contains(m)));
        } else {
          returnArray.addAll(subMap.values);
        }

        returnMap["current$type"] = returnArray;
      }

      List<MediaList> getMediaList(List<MediaListGroup>? lists) {
        return (lists
            ?.expand((x) => x.entries ?? [])
            .cast<MediaList>()
            .toList() ??
            [])
            .reversed
            .toList();
      }

      if (toShow[0]) {
        processMedia("Anime", getMediaList(response?.data?.currentAnime?.lists),
            getMediaList(response?.data?.repeatingAnime?.lists));
      }
      if (toShow[2]) {
        processMedia("AnimePlanned",
            getMediaList(response?.data?.plannedAnime?.lists), null);
      }
      if (toShow[3]) {
        processMedia("Manga", getMediaList(response?.data?.currentManga?.lists),
            getMediaList(response?.data?.repeatingManga?.lists));
      }
      if (toShow[5]) {
        processMedia("MangaPlanned",
            getMediaList(response?.data?.plannedManga?.lists), null);
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

      if (toShow[1]) {
        processFavorites(
            "Anime", response?.data?.favoriteAnime?.favourites?.anime?.edges);
      }
      if (toShow[4]) {
        processFavorites(
            "Manga", response?.data?.favoriteManga?.favourites?.manga?.edges);
      }

      if (toShow[6]) {
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
      }

      returnMap["hidden"] = removedMedia.toSet().toList();
      return returnMap;
    } catch (e) {
      // Handle exception
      return {};
    }
  }

  Future<String?> bannerImage(String type) async {
    var url = PrefManager.getCustomVal<String>("banner_${type}_url");
    var time = PrefManager.getCustomVal<int>("banner_${type}_time");
    bool checkTime() {
      if (time == null) return true;
      return DateTime.now()
          .difference(DateTime.fromMillisecondsSinceEpoch(time))
          .inDays >
          1;
    }

    if (url == null || url.isEmpty || checkTime()) {
      final response = await executeQuery<MediaListCollectionResponse>(
        '''{ MediaListCollection(userId: ${Anilist.userid} , type: $type, chunk:1, perChunk:25, sort: [SCORE_DESC, UPDATED_TIME_DESC]) { lists { entries { media { id bannerImage } } } } }''',
      );
      final bannerImages = response?.data?.mediaListCollection?.lists
          ?.expand((list) => list.entries ?? [])
          .map((entry) => entry.media?.bannerImage)
          .where((imageUrl) => imageUrl != null && imageUrl != 'null')
          .toList() ??
          [];
      bannerImages.shuffle(Random());
      var random = bannerImages.isNotEmpty ? bannerImages.first : null;

      PrefManager.setCustomVal("banner_${type}_url", random);
      PrefManager.setCustomVal(
          "banner_${type}_time", DateTime.now().millisecondsSinceEpoch);

      return random;
    } else {
      return url;
    }
  }

  Future<List<String?>> getBannerImages() async {
    final b = <String?>[null, null];
    b[0] = await bannerImage("ANIME");
    b[1] = await bannerImage("MANGA");
    return b;
  }

  Future<SearchResults?> search({
    required String type,
    int? page,
    int? perPage,
    String? search,
    String? sort,
    List<String>? genres,
    List<String>? tags,
    String? status,
    String? source,
    String? format,
    String? countryOfOrigin,
    bool isAdult = false,
    bool? onList,
    List<String>? excludedGenres,
    List<String>? excludedTags,
    int? startYear,
    int? seasonYear,
    String? season,
    int? id,
    bool hd = false,
    bool adultOnly = false,
  }) async {
    String query = """
query (\$page: Int = 1, \$id: Int, \$type: MediaType, \$isAdult: Boolean = false, \$search: String, \$format: [MediaFormat], \$status: MediaStatus, \$countryOfOrigin: CountryCode, \$source: MediaSource, \$season: MediaSeason, \$seasonYear: Int, \$year: String, \$onList: Boolean, \$yearLesser: FuzzyDateInt, \$yearGreater: FuzzyDateInt, \$episodeLesser: Int, \$episodeGreater: Int, \$durationLesser: Int, \$durationGreater: Int, \$chapterLesser: Int, \$chapterGreater: Int, \$volumeLesser: Int, \$volumeGreater: Int, \$licensedBy: [String], \$isLicensed: Boolean, \$genres: [String], \$excludedGenres: [String], \$tags: [String], \$excludedTags: [String], \$minimumTagRank: Int, \$sort: [MediaSort] = [POPULARITY_DESC, SCORE_DESC, START_DATE_DESC]) {
  Page(page: \$page, perPage: ${perPage ?? 50}) {
    pageInfo {
      total
      perPage
      currentPage
      lastPage
      hasNextPage
    }
    media(id: \$id, type: \$type, season: \$season, format_in: \$format, status: \$status, countryOfOrigin: \$countryOfOrigin, source: \$source, search: \$search, onList: \$onList, seasonYear: \$seasonYear, startDate_like: \$year, startDate_lesser: \$yearLesser, startDate_greater: \$yearGreater, episodes_lesser: \$episodeLesser, episodes_greater: \$episodeGreater, duration_lesser: \$durationLesser, duration_greater: \$durationGreater, chapters_lesser: \$chapterLesser, chapters_greater: \$chapterGreater, volumes_lesser: \$volumeLesser, volumes_greater: \$volumeGreater, licensedBy_in: \$licensedBy, isLicensed: \$isLicensed, genre_in: \$genres, genre_not_in: \$excludedGenres, tag_in: \$tags, tag_not_in: \$excludedTags, minimumTagRank: \$minimumTagRank, sort: \$sort, isAdult: \$isAdult) {
      id
      idMal
      isAdult
      status
      chapters
      episodes
      nextAiringEpisode {
        episode
      }
      type
      genres
      meanScore
      isFavourite
      format
      bannerImage
      coverImage {
        large
        extraLarge
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
  }
}
""";

    final Map<String, dynamic> variables = {
      "type": type,
      "isAdult": isAdult,
      if (adultOnly) "isAdult": true,
      if (onList != null) "onList": onList,
      if (page != null) "page": page,
      if (id != null) "id": id,
      if (type == "ANIME" && seasonYear != null) "seasonYear": seasonYear,
      if (type == "MANGA" && startYear != null) "yearGreater": startYear * 10000,
      if (type == "MANGA" && startYear != null)
        "yearLesser": (startYear + 1) * 10000,
      if (season != null) "season": season,
      if (search != null) "search": search,
      if (source != null) "source": source,
      if (sort != null) "sort": sort,
      if (status != null) "status": status,
      if (format != null) "format": format.replaceAll(" ", "_"),
      if (countryOfOrigin != null) "countryOfOrigin": countryOfOrigin,
      if (genres != null && genres.isNotEmpty) "genres": genres,
      if (excludedGenres != null && excludedGenres.isNotEmpty)
        "excludedGenres":
        excludedGenres.map((g) => g.replaceAll("Not ", "")).toList(),
      if (tags != null && tags.isNotEmpty) "tags": tags,
      if (excludedTags != null && excludedTags.isNotEmpty)
        "excludedTags":
        excludedTags.map((t) => t.replaceAll("Not ", "")).toList(),
    };

    final response = (await executeQuery<PageResponse>(query,
        variables: jsonEncode(variables), force: true))
        ?.data
        ?.page;
    if (response?.media != null) {
      List<media> responseArray = [];

      response?.media?.forEach((i) {
        String userStatus = i.mediaListEntry?.status?.name ?? '';

        List<String> genresArr = [];
        i.genres?.forEach((genre) {
          genresArr.add(genre);
        });

        media mediaInfo = mediaData(i);
        if (!hd) mediaInfo.cover = i.coverImage?.large ?? '';
        mediaInfo.relation = (onList == true) ? userStatus : null;
        mediaInfo.genres = genresArr;

        responseArray.add(mediaInfo);
      });

      var pageInfo = response?.pageInfo;
      if (pageInfo == null) return null;

      return SearchResults(
        type: type,
        perPage: perPage,
        search: search,
        sort: sort,
        isAdult: isAdult,
        onList: onList,
        genres: genres,
        excludedGenres: excludedGenres,
        tags: tags,
        excludedTags: excludedTags,
        status: status,
        source: source,
        format: format,
        countryOfOrigin: countryOfOrigin,
        startYear: startYear,
        seasonYear: seasonYear,
        season: season,
        results: responseArray,
        page: pageInfo.currentPage ?? 0,
        hasNextPage: pageInfo.hasNextPage == true,
      );
    }
    return null;
  }

  List<media> mediaList(Page? media1) {
    final combinedList = <media>[];
    if (media1 != null && media1.media != null) {
      for (var media in media1.media!) {
        combinedList.add(mediaData(media));
      }
    }
    return combinedList;
  }

  String buildQueryString(String sort, String type,
      {String? format, String? country}) {
    final includeList =
    (type == "ANIME" && !PrefManager.getVal(PrefName.includeAnimeList))
        ? "onList:false"
        : (type == "MANGA" && !PrefManager.getVal(PrefName.includeMangaList))
        ? "onList:false"
        : "";

    final isAdult = PrefManager.getVal(PrefName.adultOnly) ? "isAdult:true" : "";
    final formatFilter = format != null ? "format:$format, " : "";
    final countryFilter = country != null ? "countryOfOrigin:$country, " : "";

    return """Page(page:1,perPage:50){pageInfo{hasNextPage total}media(sort:$sort, type:$type, $formatFilter $countryFilter $includeList $isAdult){id idMal status chapters episodes nextAiringEpisode{episode} isAdult type meanScore isFavourite format bannerImage countryOfOrigin coverImage{large} title{english romaji userPreferred} mediaListEntry{progress private score(format:POINT_100) status}}}""";
  }

  String recentAnimeUpdates(int page) {
    final currentTime = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    return """Page(page:$page,perPage:50){pageInfo{hasNextPage total}airingSchedules(airingAt_greater:0 airingAt_lesser:${currentTime - 10000} sort:TIME_DESC){episode airingAt media{id idMal status chapters episodes nextAiringEpisode{episode} isAdult type meanScore isFavourite format bannerImage countryOfOrigin coverImage{large} title{english romaji userPreferred} mediaListEntry{progress private score(format:POINT_100) status}}}}""";
  }

  String queryAnimeList() {
    return '''
    {
      recentUpdates: ${recentAnimeUpdates(1)} 
      recentUpdates2: ${recentAnimeUpdates(2)} 
      trendingMovies: ${buildQueryString("POPULARITY_DESC", "ANIME", format: "MOVIE")} 
      topRated: ${buildQueryString("SCORE_DESC", "ANIME")} 
      mostFav: ${buildQueryString("FAVOURITES_DESC", "ANIME")}
    }
  ''';
  }

  String queryMangaList() {
    return '''
    {
      trendingManga: ${buildQueryString("POPULARITY_DESC", "MANGA", country: "JP")} 
      trendingManhwa: ${buildQueryString("POPULARITY_DESC", "MANGA", country: "KR")} 
      trendingNovel: ${buildQueryString("POPULARITY_DESC", "MANGA", format: "NOVEL", country: "JP")} 
      topRated: ${buildQueryString("SCORE_DESC", "MANGA")} 
      mostFav: ${buildQueryString("FAVOURITES_DESC", "MANGA")}
    }
  ''';
  }

  Future<Map<String, List<media>>> loadAnimeList() async {
    final list = <String, List<media>>{};

    List<media>? filterRecentUpdates(Page? page) {
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
          .map((i) => mediaData(i.media!))
          .toList();
    }

    final animeList =
    await executeQuery<AnimeListResponse>(queryAnimeList(), force: true);

    if (animeList?.data != null) {
      list["recentUpdates"] =
      filterRecentUpdates(animeList?.data?.recentUpdates)!;
      list["trendingMovies"] = mediaList(animeList?.data?.trendingMovies);
      list["topRated"] = mediaList(animeList?.data?.topRated);
      list["mostFav"] = mediaList(animeList?.data?.mostFav);
    }

    return list;
  }

  Future<Map<String, List<media>>> loadMangaList() async {
    final list = <String, List<media>>{};

    final mangaList =
    await executeQuery<MangaListResponse>(queryMangaList(), force: true);

    if (mangaList?.data != null) {
      list["trendingManga"] = mediaList(mangaList?.data?.trendingManga);
      list["trendingManhwa"] = mediaList(mangaList?.data?.trendingManhwa);
      list["trendingNovel"] = mediaList(mangaList?.data?.trendingNovel);
      list["topRated"] = mediaList(mangaList?.data?.topRated);
      list["mostFav"] = mediaList(mangaList?.data?.mostFav);
    }
    return list;
  }
}


