import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../Functions/Function.dart';
import '../../Preferences/IsarDataClasses/MalToken/MalToken.dart';
import '../../Preferences/PrefManager.dart';
import '../../Services/BaseServiceData.dart';
import '../../Widgets/CustomBottomDialog.dart';
import '../TypeFactory.dart';
import 'Login.dart' as MalLogin;
import 'MalQueries.dart';
import 'MalQueries/MalStrings.dart';

var Mal = Get.put(MalController());

class MalController extends BaseServiceData {
  MalController() {
    query = MalQueries(executeQuery);
  }

  final List<String> seasons = ["winter", "spring", "summer", "fall"];
  final int currentYear = DateTime.now().year;
  final int currentMonth = DateTime.now().month;

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
    }
    if (season < 0) {
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
    var malToken = loadData(PrefName.malToken);
    if (malToken == null) return false;
    token.value = malToken.accessToken;

    if (token.isNotEmpty) {
      getToken().then((m) {
        query?.getUserData();
      });
    }
    return token.isNotEmpty;
  }

  final _loadingToken = false.obs;

  Future<void> getToken() async {
    var malToken = loadData(PrefName.malToken);
    if (malToken == null) return;
    if (DateTime.now().millisecondsSinceEpoch > malToken.expiresIn) {
      if (_loadingToken.value) {
        while (_loadingToken.value == true) {
          await Future.delayed(const Duration(milliseconds: 100));
        }
        return;
      }
      _loadingToken.value = true;
      malToken = await refreshToken();
      if (malToken == null) return;
    }
    token.value = malToken.accessToken;
  }

  @override
  void login(BuildContext context) =>
      showCustomBottomDialog(context, MalLogin.login(context));

  @override
  void removeSavedToken() {
    removeData(PrefName.malToken);
    token.value = '';
    username.value = '';
    adult = false;
    userid = null;
    avatar.value = '';
    bg = null;
    episodesWatched = null;
    chapterRead = null;
    unreadNotificationCount = 0;
    run.value = true;
    isInitialized.value = false;
    Refresh.refreshService(RefreshId.Mal);
  }

  @override
  Future<void> saveToken(String token) async {
    var res = ResponseToken.fromJson(json.decode(token));
    res.expiresIn += DateTime.now().millisecondsSinceEpoch;
    saveData<ResponseToken?>(PrefName.malToken, res);
    run.value = true;
    isInitialized.value = false;
    this.token.value = res.accessToken;
    query?.getUserData();
    Refresh.refreshService(RefreshId.Mal);
  }

  Future<ResponseToken?> refreshToken() async {
    final malToken = loadData(PrefName.malToken);
    if (malToken == null) {
      throw Exception('Failed to load refresh token');
    }
    final response = await http.post(
      Uri.parse('https://myanimelist.net/v1/oauth2/token'),
      body: {
        'client_id': MalStrings.clientId,
        'grant_type': 'refresh_token',
        'refresh_token': malToken.refreshToken,
      },
    );

    if (response.statusCode == 200) {
      final res = ResponseToken.fromJson(json.decode(response.body));
      res.expiresIn += DateTime.now().millisecondsSinceEpoch;
      saveData(PrefName.malToken, res);
      token.value = res.accessToken;
      _loadingToken.value = false;
      return res;
    } else {
      throw Exception('Failed to refresh token');
    }
  }

  final rateLimiter = RateLimiter();

  Future<T?> executeQuery<T>(
    String url, {
    Map<String, String>? headers,
    bool withNoHeaders = false,
    bool force = false,
    bool useToken = true,
    bool show = true,
  }) async {
    await getToken();
    if (!rateLimiter.canMakeRequest()) {
      final secondsLeft =
          rateLimiter.resetTime.difference(DateTime.now()).inSeconds;
      debugPrint(
          "Rate limited. Wait ${secondsLeft}s before making new requests.");
      throw Exception("Rate limited. Wait ${secondsLeft}s.");
    }
    if (adult) {
      String op = Uri.dataFromString(url).queryParameters.isEmpty ? "?" : "&";
      url = "$url${op}nsfw=${adult ? '1' : '0'}";
    }

    headers ??= <String, String>{};
    if (!withNoHeaders) {
      headers["X-MAL-Client-ID"] = MalStrings.clientId;
      headers["Accept"] = "application/json";
      if (useToken) {
        headers["Authorization"] = "Bearer ${token.value}";
      }
    }
    final response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    rateLimiter.increment();
    debugPrint("Remaining Mal requests: ${rateLimiter.remainingRequests}");

    final jsonResponse = json.decode(response.body);
    if (jsonResponse == null) return null;

    return TypeFactory.get<T>(jsonResponse);
  }
}

class RateLimiter {
  static const int maxRequestsPerMinute = 60;
  int requestCount = 0;
  late DateTime resetTime;

  RateLimiter() {
    resetTime = DateTime.now().add(const Duration(minutes: 1));
  }

  bool canMakeRequest() {
    if (DateTime.now().isAfter(resetTime)) {
      requestCount = 0;
      resetTime = DateTime.now().add(const Duration(minutes: 1));
    }
    return requestCount < maxRequestsPerMinute;
  }

  void increment() {
    requestCount++;
  }

  int get remainingRequests {
    return maxRequestsPerMinute - requestCount;
  }
}
