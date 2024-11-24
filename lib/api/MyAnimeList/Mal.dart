import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Services/BaseServiceData.dart';
import '../TypeFactory.dart';
import 'MalQueries.dart';
import 'MalQueries/MalStrings.dart';
import 'package:http/http.dart' as http;

var mal = Get.put(MalController());

class MalController extends BaseServiceData {

  @override
  RxString get token => ''.obs;

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
    if (season > 3) { season = 0; year++; }
    if (season < 0) { season = 3; year--; }
    return {seasons[season]: year};
  }

  List<Map<String, int>> get currentSeasons => [
    getSeason(false),
    {seasons[currentSeason]: currentYear},
    getSeason(true),
  ];

  @override
  bool getSavedToken() {
    // TODO: implement getSavedToken
    throw UnimplementedError();
  }

  @override
  void login(BuildContext context) {
    // TODO: implement login
  }

  @override
  void removeSavedToken() {
    // TODO: implement removeSavedToken
  }

  @override
  Future<void> saveToken(String token) {
    // TODO: implement saveToken
    throw UnimplementedError();
  }

  Future<T?> executeQuery<T>(
    String url, {
    Map<String, String>? headers,
    bool withNoHeaders = false,
    bool force = false,
    bool useToken = true,
    bool includeNsfw = false,
    bool show = true,
  }) async {
    if (adult && includeNsfw) {
      String op = Uri.dataFromString(url).queryParameters.isEmpty ? "?" : "&";
      url = "$url${op}nsfw=${adult ? '1' : '0'}";
    }
    headers ??= <String, String>{};
    if (!withNoHeaders) {
      headers["X-MAL-Client-ID"] = MalStrings.clientId;
      headers["Accept"] = "application/json";
      /*if (useToken) {
        headers["Authorization"] = "Bearer ${token.value}";
      }*/
    }

    final response = await http.get(
      Uri.parse(url),
      headers: headers,
    );
    final jsonResponse = json.decode(response.body);
    return TypeFactory.get<T>(jsonResponse);
  }
}
