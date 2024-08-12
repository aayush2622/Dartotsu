import 'dart:convert';
import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import '../../Functions/Function.dart';
import '../../Prefrerences/PrefManager.dart';
import '../../Prefrerences/Prefrences.dart';
import 'AnilistQueries.dart';

class AnilistData extends ChangeNotifier {
  // user data that can be used in app already init on app start
  String? token;
  String? username;
  int? userid;
  String? avatar;
  String? bg;
  int? episodesWatched;
  int? chapterRead;
  int unreadNotificationCount = 0;
  List<String>? genres;
  Map<bool, List<String>>? tags;
  int rateLimitReset = 0;
  bool initialized = false;
  bool adult = false;
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

  AnilistData() {
    _initialize();
  }

  Future<void> _initialize() async {
    var token = PrefManager.getVal(PrefName.anilistToken);
    if (token != "") {
      var data = await get();
      if (data) {
        notifyListeners();
      }
    } else {
      initialized = true;
      notifyListeners();
    }
  }

  Future<bool> get() async {
    var data = (await getUserData());
    if (data == null) {
      initialized = true;
      return false;
    }
    userid = data.id;
    username = data.name;
    bg = data.bannerImage;
    avatar = data.avatar?.medium;
    episodesWatched = data.statistics?.anime?.episodesWatched;
    chapterRead = data.statistics?.manga?.chaptersRead;
    adult = data.options?.displayAdultContent ?? false;
    unreadNotificationCount = data.unreadNotificationCount ?? 0;
    final unread = PrefManager.getVal(PrefName.unReadCommentNotifications);
    unreadNotificationCount += unread;
    initialized = true;

    final options = data.options;
    if (options != null) {
      titleLanguage = options.titleLanguage?.name;
      staffNameLanguage = options.staffNameLanguage?.name;
      airingNotifications = options.airingNotifications ?? false;
      restrictMessagesToFollowing =
          options.restrictMessagesToFollowing ?? false;
      timezone = options.timezone;
      activityMergeTime = options.activityMergeTime;
    }

    final mediaListOptions = data.mediaListOptions;
    if (mediaListOptions != null) {
      scoreFormat = mediaListOptions.scoreFormat;
      rowOrder = mediaListOptions.rowOrder;
      animeCustomLists = mediaListOptions.animeList?.customLists;
      mangaCustomLists = mediaListOptions.mangaList?.customLists;
    }
    return true;
  }

  void removeAllData() {
    userid = null;
    username = null;
    bg = null;
    avatar = null;
    episodesWatched = null;
    chapterRead = null;
    adult = false;
    unreadNotificationCount = 0;
    titleLanguage = null;
    staffNameLanguage = null;
    airingNotifications = false;
    restrictMessagesToFollowing = false;
    scoreFormat = null;
    rowOrder = null;
    activityMergeTime = null;
    timezone = null;
    animeCustomLists = null;
    mangaCustomLists = null;
    initialized = false;
  }
}

class AnilistToken extends ChangeNotifier {
  String _token = '';

  String get token => _token;

  AnilistToken() {
    _initialize();
  }

  Future<void> _initialize() async {
    _token = PrefManager.getVal(PrefName.anilistToken);
    notifyListeners();
  }

  void saveToken(String token) async {
    PrefManager.setVal(PrefName.anilistToken, token);
    _token = token;
    notifyListeners();
  }

  void removeToken() async {
    PrefManager.removeVal(PrefName.anilistToken);
    _token = '';
    notifyListeners();
  }
}

Future<T?> executeQuery<T>(
  String query, {
  String variables = "",
  bool force = false,
  bool useToken = true,
  bool show = true,
}) async {
  try {
    String token = PrefManager.getVal(PrefName.anilistToken);
    int rateLimitReset = 0;
    if (rateLimitReset > DateTime.now().millisecondsSinceEpoch ~/ 1000) {
      snackString(
          "Rate limited after ${rateLimitReset - DateTime.now().millisecondsSinceEpoch ~/ 1000} seconds");
      throw Exception(
          "Rate limited after ${rateLimitReset - DateTime.now().millisecondsSinceEpoch ~/ 1000} seconds");
    }

    final data = jsonEncode({"query": query, "variables": variables});
    final headers = <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
    };

    if (token != '' || force) {
      if (token != '' && useToken) headers['Authorization'] = 'Bearer $token';

      final response = await http.post(
        Uri.parse("https://graphql.anilist.co/"),
        headers: headers,
        body: data,
      );
      final Map<String, dynamic> jsonResponse =
          json.decode("{\"response\":${response.body}}");
      var remaining =
          int.parse(response.headers['x-ratelimit-remaining'] ?? '-1');
      debugPrint("Remaining requests: $remaining");
      int.parse(response.headers['x-ratelimit-limit'] ?? '-1');
      if (response.statusCode == 429) {
        final int retry = int.parse(response.headers['Retry-After'] ?? '-1');
        final int passedLimitReset =
            int.parse(response.headers['x-ratelimit-limit'] ?? '0');
        if (retry > 0) {
          rateLimitReset = passedLimitReset;
        }
        snackString("Rate limited after $retry seconds");
        throw Exception("Rate limited after $retry seconds");
      }
      if (!response.body.startsWith("{")) {
        snackString(
            "Seems like Anilist is down, maybe try using a VPN or you can wait for it to come back.");
      }
      if (jsonResponse.containsKey('errors')) {
        return null;
      }
      return TypeFactory.get<T>(jsonResponse[
          "response"]); // pass json type in registerAllTypes() in data.dart eg: TypeFactory.create<MediaResponse>((json) => MediaResponse.fromJson(json));
    } else {
      return null;
    }
  } catch (e) {
    if (show) snackString("Error fetching Anilist data: ${e.toString()}");
    return null;
  }
}

const List<String> authorRoles = [
  "Original Creator",
  "Story & Art",
  "Story",
];
const List<String> sortBy = [
  "SCORE_DESC",
  "POPULARITY_DESC",
  "TRENDING_DESC",
  "START_DATE_DESC",
  "TITLE_ENGLISH",
  "TITLE_ENGLISH_DESC",
  "SCORE"
];
final int currentMonth = DateTime.now().month;

int get currentSeason {
  if (currentMonth >= 0 && currentMonth <= 2) {
    return 0;
  } else if (currentMonth >= 3 && currentMonth <= 5) {
    return 1;
  } else if (currentMonth >= 6 && currentMonth <= 8) {
    return 2;
  } else if (currentMonth >= 9 && currentMonth <= 11) {
    return 3;
  } else {
    return 0;
  }
}

int currentYear = DateTime.now().year;

List<String> seasons = ["WINTER", "SPRING", "SUMMER", "FALL"];

Map<String, int> getSeason(bool next) {
  int newSeason = next ? currentSeason + 1 : currentSeason - 1;
  int newYear = currentYear;

  if (newSeason > 3) {
    newSeason = 0;
    newYear++;
  } else if (newSeason < 0) {
    newSeason = 3;
    newYear--;
  }

  return {seasons[newSeason]: newYear};
}

// Get the list of current seasons with previous, current, and next seasons
List<Map<String, int>> get currentSeasons {
  return [
    getSeason(false),
    {seasons[currentSeason]: currentYear},
    getSeason(true),
  ];
}

typedef FromJson<T> = T Function(Map<String, dynamic> json);

class TypeFactory {
  static final Map<Type, FromJson> _factories = {};

  static void create<T>(FromJson<T> factory) {
    _factories[T] = factory;
  }

  static T get<T>(Map<String, dynamic> json) {
    final factory = _factories[T];
    if (factory == null) {
      throw Exception('Factory for type $T is not registered');
    }
    return factory(json) as T;
  }
}
