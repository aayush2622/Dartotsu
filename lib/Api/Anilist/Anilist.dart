import 'dart:convert';

import 'package:dartotsu/Services/BaseServiceData.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../Functions/Function.dart';
import '../../Preferences/PrefManager.dart';
import '../../Widgets/CustomBottomDialog.dart';
import '../TypeFactory.dart';
import 'AnilistMutations.dart';
import 'AnilistQueries.dart';
import 'Login.dart' as anilist_login;

var Anilist = Get.put(AnilistController());

class AnilistController extends BaseServiceData {
  List<String>? genres;
  Map<bool, List<String>>? tags;
  int rateLimitReset = 0;
  String? titleLanguage;
  String? staffNameLanguage;
  bool airingNotifications = false;
  bool restrictMessagesToFollowing = false;
  String? scoreFormat;
  String? rowOrder;
  int? activityMergeTime;
  String? timezone;
  List<String>? animeCustomLists;
  List<String>? mangaCustomLists;

  final List<String> sortBy = [
    "SCORE_DESC",
    "POPULARITY_DESC",
    "TRENDING_DESC",
    "START_DATE_DESC",
    "TITLE_ENGLISH",
    "TITLE_ENGLISH_DESC",
    "SCORE"
  ];
  var source = [
    "ORIGINAL",
    "MANGA",
    "LIGHT NOVEL",
    "VISUAL NOVEL",
    "VIDEO GAME",
    "OTHER",
    "NOVEL",
    "DOUJINSHI",
    "ANIME",
    "WEB NOVEL",
    "LIVE ACTION",
    "GAME",
    "COMIC",
    "MULTIMEDIA PROJECT",
    "PICTURE BOOK"
  ];

  var animeStatus = ["FINISHED", "RELEASING", "NOT YET RELEASED", "CANCELLED"];

  var status = [
    "PLANNING",
    "CURRENT",
    "COMPLETED",
    "REPEATING",
    "PAUSED",
    "DROPPED",
  ];
  var mangaStatus = [
    "FINISHED",
    "RELEASING",
    "NOT YET RELEASED",
    "HIATUS",
    "CANCELLED"
  ];

  var animeFormats = [
    "TV",
    "TV SHORT",
    "MOVIE",
    "SPECIAL",
    "OVA",
    "ONA",
    "MUSIC"
  ];

  var mangaFormats = ["MANGA", "NOVEL", "ONE SHOT"];

  final List<String> authorRoles = ["Original Creator", "Story & Art", "Story"];
  final List<String> seasons = ["WINTER", "SPRING", "SUMMER", "FALL"];
  final int currentYear = DateTime.now().year;
  final int currentMonth = DateTime.now().month;

  AnilistController() {
    query = AnilistQueries(executeQuery);
    mutations = AnilistMutations(executeQuery);
  }

  int get currentSeason {
    if (currentMonth <= 2) return 0;
    if (currentMonth <= 5) return 1;
    if (currentMonth <= 8) return 2;
    if (currentMonth <= 11) return 3;
    return 0;
  }

  Map<String, int> getSeason(bool next) {
    int season = currentSeason + (next ? 1 : -1);
    int year = currentYear;
    if (season > 3) {
      season = 0;
      year++;
    } else if (season < 0) {
      season = 3;
      year--;
    }
    return {seasons[season]: year};
  }

  List<Map<String, int>> get currentSeasons => [
        getSeason(false),
        {seasons[currentSeason]: currentYear},
        getSeason(true),
      ];

  @override
  bool getSavedToken() {
    token.value = loadData(PrefName.anilistToken);
    query?.getGenresAndTags();
    if (token.isNotEmpty) query?.getUserData();

    return token.isNotEmpty;
  }

  @override
  Future<void> saveToken(String token) async {
    saveData(PrefName.anilistToken, token);
    this.token.value = token;
    run.value = true;
    isInitialized.value = false;
    query?.getUserData();
    Refresh.refreshService(RefreshId.Anilist);
  }

  @override
  void login(BuildContext context) =>
      showCustomBottomDialog(context, anilist_login.login(context));

  @override
  void removeSavedToken() {
    token.value = '';
    username.value = '';
    adult = false;
    userid = null;
    avatar.value = '';
    bg = null;
    episodesWatched = null;
    chapterRead = null;
    unreadNotificationCount = 0;
    removeData(PrefName.anilistToken);
    saveCustomData<String>("banner_ANIME_url", '');
    saveCustomData<String>("banner_MANGA_url", '');
    run.value = true;
    isInitialized.value = false;
    Refresh.refreshService(RefreshId.Anilist);
  }

  Future<T?> executeQuery<T>(
    String query, {
    String variables = "",
    bool force = false,
    bool useToken = true,
    bool show = true,
  }) async {
    try {
      if (rateLimitReset > DateTime.now().millisecondsSinceEpoch ~/ 1000) {
        final secondsLeft =
            rateLimitReset - DateTime.now().millisecondsSinceEpoch ~/ 1000;
        snackString("Rate limited, wait ${secondsLeft}s");
        throw Exception("Rate limited, wait ${secondsLeft}s");
      }

      final headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        if (token.isNotEmpty && useToken)
          'Authorization': 'Bearer ${token.value}',
      };

      final response = await http.post(
        Uri.parse("https://graphql.anilist.co/"),
        headers: headers,
        body: jsonEncode({"query": query.trim(), "variables": variables}),
      );

      final remaining =
          int.parse(response.headers['x-ratelimit-remaining'] ?? '-1');
      debugPrint("Remaining Anilist requests: $remaining");

      if (response.statusCode == 429) {
        final retry = int.parse(response.headers['Retry-After'] ?? '-1');
        rateLimitReset =
            int.parse(response.headers['x-ratelimit-limit'] ?? '0');
        snackString("Rate limited, retry after $retry seconds");
        throw Exception("Rate limited, retry after $retry seconds");
      }

      final jsonResponse = json.decode(response.body);
      if (!response.body.startsWith("{")) {
        snackString("Anilist seems down, maybe use a VPN or wait.");
        throw Exception("Anilist API down");
      }

      if (jsonResponse.containsKey('errors')) return null;

      return TypeFactory.get<T>(jsonResponse);
    } catch (e) {
      if (show) snackString("Error fetching Anilist data: ${e.toString()}");
      debugPrint("Error fetching Anilist data: ${e.toString()}");
      return null;
    }
  }
}
