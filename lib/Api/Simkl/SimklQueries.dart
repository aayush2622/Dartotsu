import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dartotsu/DataClass/Media.dart' as media;
import 'package:dartotsu/DataClass/SearchResults.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:flutter/foundation.dart';

import '../../Services/Api/Queries.dart';
import 'Data/Activity.dart';
import 'Data/Media.dart';
import 'Data/User.dart';
import 'Login.dart' as SimklLogin;
import 'Simkl.dart';

part 'SimklQueries/GetAnimeMangaListData.dart';
part 'SimklQueries/GetHomePageData.dart';
part 'SimklQueries/GetUserData.dart';

class SimklQueries extends Queries {
  SimklQueries(this.executeQuery);

  Future<T?> Function<T>(
    String url, {
    Map<String, String>? headers,
    bool withNoHeaders,
    bool useToken,
    bool show,
    String mapKey,
  }) executeQuery;

  @override
  Future<Map<String, List<media.Media>>> getAnimeList() => _getAnimeList();

  @override
  Future<List<media.Media>> getCalendarData() {
    // TODO: implement getCalendarData
    throw UnimplementedError();
  }

  @override
  Future<bool>? getGenresAndTags() {
    // TODO: implement getGenresAndTags
    throw UnimplementedError();
  }

  @override
  Future<Map<String, List<media.Media>>> getMangaList() => _getMangaList();

  Future<List<media.Media>> getTrending(String type, {String? time}) =>
      _getTrending(type, time: time);

  Future<List<media.Media>> loadNextPage(String type, int page) =>
      _loadNextPage(type, page);

  @override
  Future<media.Media?>? getMedia(int id, {bool mal = true}) {
    // TODO: implement getMedia
    throw UnimplementedError();
  }

  @override
  Future<Map<String, List<media.Media>>> getMediaLists(
      {required bool anime, required int userId, String? sortOrder}) {
    // TODO: implement getMediaLists
    throw UnimplementedError();
  }

  @override
  Future<bool>? getUserData() => _getUserData();

  @override
  Future<Map<String, List<media.Media>>>? initHomePage() => _initHomePage();

  @override
  Future<media.Media?>? mediaDetails(media.Media media) => null;

  @override
  Future<SearchResults?> search(SearchResults? searchResults) {
    // TODO: implement search
    throw UnimplementedError();
  }
}
