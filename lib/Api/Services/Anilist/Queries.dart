import 'dart:convert';
import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Api/Queries.dart';
import '../../../Core/Services/Api/SectionJobs.dart';
import '../../../Core/Services/Model/Author.dart';
import '../../../Core/Services/Model/Character.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Model/Studio.dart';
import '../../../Core/Services/Model/User.dart';
import '../../../Core/Services/ServiceNotification.dart';
import '../../../Model/SearchResults.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Data/Notification.dart';
import 'Prefs.dart';
import 'AnilistService.dart';

part 'Queries/GetAnimeMangaListData.dart';
part 'Queries/GetBannerImages.dart';
part 'Queries/GetCalendarData.dart';
part 'Queries/GetGenresAndTags.dart';
part 'Queries/GetHomePageData.dart';
part 'Queries/GetMediaData.dart';
part 'Queries/GetMediaDetails.dart';
part 'Queries/GetNotifications.dart';
part 'Queries/GetUserData.dart';
part 'Queries/GetUserMediaList.dart';
part 'Queries/Search.dart';

class AnilistQueries extends Queries {
  final AnilistClient client;
  final int? Function() userId;
  final Future<bool> Function() refreshUser;

  AnilistQueries(
    this.client, {
    required this.userId,
    required this.refreshUser,
  });

  @override
  Future<bool> getUserData() => _getUserData();

  @override
  Future<Media?> getMedia(String id) => _getMedia(id);

  @override
  Future<Media?> mediaDetails(Media media) => _mediaDetails(media);

  @override
  List<SectionJob> homeJobs() => _homeJobs();

  @override
  List<SectionJob> browseJobs({required bool anime}) =>
      _browseJobs(anime: anime);

  @override
  Future<Map<String, List<Media>>> getMediaLists({
    required bool anime,
    int? userId,
    String? sortOrder,
  }) => _getMediaLists(anime: anime, userId: userId, sortOrder: sortOrder);

  @override
  Future<List<Media>> getCalendarData() => _getCalendarData();

  @override
  Future<bool> getGenresAndTags() => _getGenresAndTags();

  @override
  Future<List<String?>> getBannerImages() => _getBannerImages();

  @override
  Future<List<ServiceNotification>> getNotifications({int page = 1}) =>
      _getNotifications(page);

  @override
  Future<SearchResults?> search(SearchResults? results) => _search(results);
}
