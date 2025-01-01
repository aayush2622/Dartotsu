import 'dart:convert';
import 'dart:math';

import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Preferences/Preferences.dart';
import 'package:dartotsu/api/Anilist/Anilist.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_qjs/quickjs/ffi.dart';

import '../../DataClass/Author.dart';
import '../../DataClass/Character.dart';
import '../../DataClass/Media.dart';
import '../../DataClass/SearchResults.dart';
import '../../DataClass/User.dart';
import '../../Preferences/PrefManager.dart';
import '../../Services/Api/Queries.dart';
import 'Data/data.dart';
import 'Data/media.dart' as api;
import 'Data/page.dart';
import 'Data/staff.dart';

part 'AnilistQueries/GetAnimeMangaListData.dart';
part 'AnilistQueries/GetBannerImages.dart';
part 'AnilistQueries/GetCalendarData.dart';
part 'AnilistQueries/GetGenresAndTags.dart';
part 'AnilistQueries/GetHomePageData.dart';
part 'AnilistQueries/GetMediaData.dart';
part 'AnilistQueries/GetMediaDetails.dart';
part 'AnilistQueries/GetUserData.dart';
part 'AnilistQueries/GetUserMediaList.dart';
part 'AnilistQueries/Search.dart';

class AnilistQueries extends Queries {
  // main function in the [Anilist.dart]
  final Future<T?> Function<T>(
    String query, {
    String variables,
    bool force,
    bool useToken,
    bool show,
  }) executeQuery;

  AnilistQueries(this.executeQuery);

  @override
  Future<bool> getUserData() => _getUserData();

  @override
  Future<Media?> getMedia(int id, {bool mal = true}) => _getMedia(id, mal: mal);

  @override
  Future<Media?> mediaDetails(Media media) => _mediaDetails(media);

  @override
  Future<Map<String, List<Media>>> initHomePage() => _initHomePage();

  @override
  Future<bool> getGenresAndTags() => _getGenresAndTags();

  @override
  Future<Map<String, List<Media>>> getMediaLists({
    required bool anime,
    required int userId,
    String? sortOrder,
  }) =>
      _getMediaLists(
        anime: anime,
        userId: userId,
        sortOrder: sortOrder,
      );

  @override
  Future<List<String?>> getBannerImages() => _getBannerImages();

  @override
  Future<Map<String, List<Media>>> getAnimeList() => _getAnimeList();

  @override
  Future<Map<String, List<Media>>> getMangaList() => _getMangaList();

  @override
  Future<List<Media>> getCalendarData() => _getCalendarData();

  @override
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
  }) =>
      _search(
        type: type,
        page: page,
        perPage: perPage,
        search: search,
        sort: sort,
        genres: genres,
        tags: tags,
        status: status,
        source: source,
        format: format,
        countryOfOrigin: countryOfOrigin,
        isAdult: isAdult,
        onList: onList,
        excludedGenres: excludedGenres,
        excludedTags: excludedTags,
        startYear: startYear,
        seasonYear: seasonYear,
        season: season,
        id: id,
        hd: hd,
      );
}
