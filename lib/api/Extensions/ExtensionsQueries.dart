  import 'package:dantotsu/DataClass/Media.dart';

import 'package:dantotsu/DataClass/SearchResults.dart';

import '../../Services/Api/Queries.dart';

class ExtensionsQueries extends  Queries  {
  @override
  Future<Map<String, List<Media>>> getAnimeList() {
    // TODO: implement getAnimeList
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
    // TODO: implement getMangaList
    throw UnimplementedError();
  }

  @override
  Future<Media?>? getMedia(int id, {bool mal = true}) {
    // TODO: implement getMedia
    throw UnimplementedError();
  }

  @override
  Future<Map<String, List<Media>>> getMediaLists({required bool anime, required int userId, String? sortOrder}) {
    // TODO: implement getMediaLists
    throw UnimplementedError();
  }

  @override
  Future<bool>? getUserData() {
    // TODO: implement getUserData
    throw UnimplementedError();
  }

  @override
  Future<Map<String, List<Media>>>? initHomePage() {
    // TODO: implement initHomePage
    throw UnimplementedError();
  }

  @override
  Future<Media?>? mediaDetails(Media media) => null;

  @override
  Future<SearchResults?> search({required String type, int? page, int? perPage, String? search, String? sort, List<String>? genres, List<String>? tags, String? status, String? source, String? format, String? countryOfOrigin, bool isAdult = false, bool? onList, List<String>? excludedGenres, List<String>? excludedTags, int? startYear, int? seasonYear, String? season, int? id, bool hd = false}) {
    // TODO: implement search
    throw UnimplementedError();
  }

}