import 'dart:convert';

import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../Functions/Function.dart';
import '../../Services/BaseServiceData.dart';
import '../../Widgets/CustomBottomDialog.dart';
import '../TypeFactory.dart';
import 'Login.dart' as SimklLogin;
import 'SimklQueries.dart';

var Simkl = Get.put(SimklController());

class SimklController extends BaseServiceData {
  SimklController() {
    query = SimklQueries(executeQuery);
  }

  @override
  bool getSavedToken() {
    token.value = loadData(PrefName.simklToken);

    if (token.isNotEmpty) query?.getUserData();

    return token.isNotEmpty;
  }

  @override
  void login(BuildContext context) =>
      showCustomBottomDialog(context, SimklLogin.login(context));

  @override
  void removeSavedToken() {
    removeData(PrefName.simklToken);
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
    removeCustomData('simklUserActivity');
    removeCustomData('simklUserAnimeList');
    removeCustomData('simklUserShowList');
    removeCustomData('simklUserMovieList');
    Refresh.refreshService(RefreshId.Simkl);
  }

  @override
  Future<void> saveToken(String token) async {
    saveData(PrefName.simklToken, token);
    this.token.value = token;
    run.value = true;
    isInitialized.value = false;
    query?.getUserData();
    Refresh.refreshService(RefreshId.Simkl);
  }

  final rateLimiter = RateLimiter();

  Future<T?> executeQuery<T>(
    String url, {
    Map<String, String>? headers,
    bool withNoHeaders = false,
    bool useToken = true,
    bool show = true,
    String mapKey = '',
  }) async {
    if (!rateLimiter.canMakeRequest()) {
      final secondsLeft =
          rateLimiter.resetTime.difference(DateTime.now()).inSeconds;
      debugPrint(
          "Rate limited. Wait ${secondsLeft}s before making new requests.");
      throw Exception("Rate limited. Wait ${secondsLeft}s.");
    }

    headers ??= <String, String>{};

    if (!withNoHeaders) {
      headers["Accept"] = "application/json";
      headers['simkl-api-key'] = SimklLogin.clientId;
      if (useToken && token.isNotEmpty) {
        headers["Authorization"] = "Bearer ${token.value}";
      }
    }

    final response = await http.get(
      Uri.parse(url),
      headers: headers,
    );

    rateLimiter.increment();
    debugPrint("Remaining Simkl requests: ${rateLimiter.remainingRequests}");

    final jsonResponse = json.decode(response.body);
    if (jsonResponse is Map<String, dynamic>) {
      return TypeFactory.get<T>(jsonResponse);
    } else if (jsonResponse is List) {
      var map = {mapKey: jsonResponse};
      return TypeFactory.get<T>(map);
    }
    return null;
  }
}

class RateLimiter {
  static const int maxRequestsPerMinute = 30;
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
