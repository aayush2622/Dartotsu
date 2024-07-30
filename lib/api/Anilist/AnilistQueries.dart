import 'dart:math';

import 'package:dantotsu/api/Anilist/Data/media.dart';
import 'package:dantotsu/api/Anilist/Data/staff.dart';
import 'package:dantotsu/api/Anilist/Data/user.dart';
import 'package:dantotsu/prefManager.dart';

import '../../DataClass/Author.dart';
import '../../DataClass/Character.dart';
import '../../DataClass/Media.dart';
import '../../DataClass/User.dart';
import 'Anilist.dart';
import 'Data/data.dart';

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
            .firstWhere((edge) => authorRoles.contains(edge.role?.trim()));
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
      //print("adult");
      parse();
    } else {
      //print("huh");
    }
  }
  return media;
}

Future<media?> getMedia(int id, {bool mal = true}) async {
  var response = (await executeQuery<MediaResponse>(
          "{Media(${mal ? 'idMal' : 'id'}: $id){id idMal status chapters episodes nextAiringEpisode{episode}type meanScore isAdult isFavourite format bannerImage coverImage{large}title{english romaji userPreferred}mediaListEntry{progress private score(format:POINT_100)status}}}",
          force: true))
      ?.data
      ?.media;
  return mediaData(response!);
}

Future<String?> bannerImage(String type, int id) async {
  var url = await PrefManager.getVal<String>("banner_${type}_url");
  var time = await PrefManager.getVal<int>("banner_${type}_time");
  bool checkTime() {
    if (time == null) return true;
    return DateTime.now()
            .difference(DateTime.fromMillisecondsSinceEpoch(time))
            .inDays >
        1;
  }

  if (url == null || url.isEmpty || checkTime()) {
    final response = await executeQuery<MediaListCollectionResponse>(
      '''{ MediaListCollection(userId: $id , type: $type, chunk:1, perChunk:25, sort: [SCORE_DESC, UPDATED_TIME_DESC]) { lists { entries { media { id bannerImage } } } } }''',
    );
    final bannerImages = response?.data?.mediaListCollection?.lists
            ?.expand((list) => list.entries ?? [])
            .map((entry) => entry.media?.bannerImage)
            .where((imageUrl) => imageUrl != null && imageUrl != 'null')
            .toList() ??
        [];
    bannerImages.shuffle(Random());
    var random = bannerImages.isNotEmpty ? bannerImages.first : null;

    await PrefManager.setVal("banner_${type}_url", random);
    await PrefManager.setVal(
        "banner_${type}_time", DateTime.now().millisecondsSinceEpoch);

    return random;
  } else {
    return url;
  }
}

Future<List<String?>> getBannerImages(int id) async {
  final b = <String?>[null, null];
  b[0] = await bannerImage("ANIME", id);
  b[1] = await bannerImage("MANGA", id);
  return b;
}

Future<User?> getUserData() async {
  var response = await executeQuery<ViewerResponse>(
      '{Viewer{name options{timezone titleLanguage staffNameLanguage activityMergeTime airingNotifications displayAdultContent restrictMessagesToFollowing} avatar{medium} bannerImage id mediaListOptions{scoreFormat rowOrder animeList{customLists} mangaList{customLists}} statistics{anime{episodesWatched} manga{chaptersRead}} unreadNotificationCount}}');
  return response?.data?.user;
}

String recommendationQuery() {
  return 'Page(page: 1, perPage:30) { pageInfo { total currentPage hasNextPage } recommendations(sort: RATING_DESC, onList: true) { rating userRating mediaRecommendation { id idMal isAdult mediaListEntry { progress private score(format:POINT_100) status } chapters isFavourite format episodes nextAiringEpisode {episode} popularity meanScore isFavourite format title {english romaji userPreferred } type status(version: 2) bannerImage coverImage { large } } } }';
}

String recommendationPlannedQuery(String type, int id) {
  return ' MediaListCollection(userId: $id, type: $type, status: PLANNING${type == "ANIME" ? ", sort: MEDIA_POPULARITY_DESC" : ""} ) { lists { entries { media { id mediaListEntry { progress private score(format:POINT_100) status } idMal type isAdult popularity status(version: 2) chapters episodes nextAiringEpisode {episode} meanScore isFavourite format bannerImage coverImage{large} title { english romaji userPreferred } } } } }';
}

String continueMediaQuery(String type, String status, int id) {
  return ' MediaListCollection(userId: $id, type: $type, status: $status , sort: UPDATED_TIME ) { lists { entries { progress private score(format:POINT_100) status media { id idMal type isAdult status chapters episodes nextAiringEpisode {episode} meanScore isFavourite format bannerImage coverImage{large} title { english romaji userPreferred } } } } } ';
}

String favMediaQuery(bool anime, int page, int? id) {
  return 'User(id:$id){id favourites{${anime ? "anime" : "manga"}(page:$page){pageInfo{hasNextPage}edges{favouriteOrder node{id idMal isAdult mediaListEntry{ progress private score(format:POINT_100) status } chapters isFavourite format episodes nextAiringEpisode{episode}meanScore isFavourite format startDate{year month day} title{english romaji userPreferred}type status(version:2)bannerImage coverImage{large}}}}}}';
}

Future<Map<String, List<media>>> initHomePage(int id) async {
  try {
    final removeList = await PrefManager.getVal<Set<int>>("removeList") ?? {};
    const hidePrivate = true;
    List<media> removedMedia = [];
    final toShow = await PrefManager.getVal<List<bool>>("HomeLayout") ??
        [true, true, true, true, true, true, true];

    List<String> queries = [];
    if (toShow[0]) {
      queries.add(
          """currentAnime: ${continueMediaQuery("ANIME", "CURRENT", id)}""");
      queries.add(
          """repeatingAnime: ${continueMediaQuery("ANIME", "REPEATING", id)}""");
    }
    if (toShow[1]) {
      queries.add("""favoriteAnime: ${favMediaQuery(true, 1, id)}""");
    }
    if (toShow[2]) {
      queries.add(
          """plannedAnime: ${continueMediaQuery("ANIME", "PLANNING", id)}""");
    }
    if (toShow[3]) {
      queries.add(
          """currentManga: ${continueMediaQuery("MANGA", "CURRENT", id)}""");
      queries.add(
          """repeatingManga: ${continueMediaQuery("MANGA", "REPEATING", id)}""");
    }
    if (toShow[4]) {
      queries.add("""favoriteManga: ${favMediaQuery(false, 1, id)}""");
    }
    if (toShow[5]) {
      queries.add(
          """plannedManga: ${continueMediaQuery("MANGA", "PLANNING", id)}""");
    }
    if (toShow[6]) {
      queries.add("""recommendationQuery: ${recommendationQuery()}""");
      queries.add(
          """recommendationPlannedQueryAnime: ${recommendationPlannedQuery("ANIME", id)}""");
      queries.add(
          """recommendationPlannedQueryManga: ${recommendationPlannedQuery("MANGA", id)}""");
    }

    String query = "{${queries.join(",")}}";
    var response = await executeQuery<UserListResponse>(query);
    Map<String, List<media>> returnMap = {};

    Future<void> processMedia(String type, List<MediaList>? currentMedia,
        List<MediaList>? repeatingMedia) async {
      Map<int, media> subMap = {};
      List<media> returnArray = [];

      for (var entry in (currentMedia ?? [])) {
        var media = mediaListData(entry);
        if (!removeList.contains(media.id) &&
            (!hidePrivate || !media.isListPrivate)) {
          media.cameFromContinue = true;
          subMap[media.id] = media;
        } else {
          removedMedia.add(media);
        }
      }

      for (var entry in (repeatingMedia ?? [])) {
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
          await PrefManager.getVal<List<int>>("continue${type}List") ?? [];
      if (list.isNotEmpty) {
        for (var id in list.reversed) {
          if (subMap.containsKey(id)) {
            returnArray.add(subMap[id]!);
          }
        }
        for (var media in subMap.values) {
          if (!returnArray.contains(media)) {
            returnArray.add(media);
          }
        }
      } else {
        returnArray.addAll(subMap.values);
      }

      returnMap["current$type"] = returnArray;
    }

    if (toShow[0]) {
      processMedia(
          "Anime",
          response?.data?.currentAnime?.lists
              ?.expand((x) => x.entries ?? [])
              .cast<MediaList>()
              .toList(),
          response?.data?.repeatingAnime?.lists
              ?.expand((x) => x.entries ?? [])
              .cast<MediaList>()
              .toList());
    }
    if (toShow[2]) {
      processMedia(
          "AnimePlanned",
          response?.data?.plannedAnime?.lists
              ?.expand((x) => x.entries ?? [])
              .cast<MediaList>()
              .toList(),
          null);
    }
    if (toShow[3]) {
      processMedia(
          "Manga",
          response?.data?.currentManga?.lists
              ?.expand((x) => x.entries ?? [])
              .cast<MediaList>()
              .toList(),
          response?.data?.repeatingManga?.lists
              ?.expand((x) => x.entries ?? [])
              .cast<MediaList>()
              .toList());
    }
    if (toShow[5]) {
      processMedia(
          "MangaPlanned",
          response?.data?.plannedManga?.lists
              ?.expand((x) => x.entries ?? [])
              .cast<MediaList>()
              .toList(),
          null);
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
      var animePlannedLists = response
              ?.data?.recommendationPlannedQueryAnime?.lists
              ?.expand((x) => x.entries ?? []) ??
          [];
      for (var entry in animePlannedLists) {
        var media = mediaListData(entry);
        if (['RELEASING', 'FINISHED'].contains(media.status)) {
          media.relation = 'Anime Planned';
          subMap[media.id] = media;
        }
      }

      var mangaPlannedLists = response
              ?.data?.recommendationPlannedQueryManga?.lists
              ?.expand((x) => x.entries ?? []) ??
          [];
      for (var entry in mangaPlannedLists) {
        var media = mediaListData(entry);
        if (['RELEASING', 'FINISHED'].contains(media.status)) {
          media.relation = 'Manga Planned';
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
    return {};
  }
}
