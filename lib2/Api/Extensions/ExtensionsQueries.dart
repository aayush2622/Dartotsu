import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dartotsu/Core/Services/Model/Media.dart';
import 'package:dartotsu/DataClass/SearchResults.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Functions/Extensions/StringExtensions.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:get/get.dart';
import '../../DataClass/Author.dart';
import '../../Preferences/PrefManager.dart';
import '../../Core/Services/Api/Queries.dart';
import 'ExtensionsData.dart';

part 'ExtensionsQueries/GetHomePageData.dart';

part 'ExtensionsQueries/GetMediaDetails.dart';

part 'ExtensionsQueries/GetUserData.dart';

class ExtensionsQueries extends Queries {
  @override
  Future<Map<String, List<Media>>> getAnimeList() {
    // not needed
    throw UnimplementedError();
  }

  @override
  Future<List<Media>> getCalendarData() {
    // TODO: implement getCalendarData
    throw UnimplementedError();
  }

  @override
  Future<bool>? getGenresAndTags() {
    // TODO: implement getGenresAndTags
    throw UnimplementedError();
  }

  @override
  Future<Map<String, List<Media>>> getMangaList() {
    // not needed
    throw UnimplementedError();
  }

  @override
  Future<Media?>? getMedia(int id, {bool mal = true}) {
    // not needed
    throw UnimplementedError();
  }

  @override
  Future<Map<String, List<Media>>> getMediaLists(
      {required bool anime, required int userId, String? sortOrder}) {
    // TODO: implement getMediaLists
    throw UnimplementedError();
  }

  @override
  Future<bool>? getUserData() => _getUserData();

  @override
  Future<Map<String, List<Media>>>? initHomePage() => _initHomePage();

  @override
  Future<Media?>? mediaDetails(Media media) => _mediaDetails(media);

  @override
  Future<SearchResults?> search(SearchResults? searchResults) async {
    // not needed
    throw UnimplementedError();
  }
}
