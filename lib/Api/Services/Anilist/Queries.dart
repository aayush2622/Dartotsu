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
import '../../../Core/Services/Model/Social.dart';
import '../../../Core/Services/Model/Studio.dart';
import '../../../Core/Services/Model/User.dart';
import '../../../Core/Services/ServiceNotification.dart';
import '../../../Model/SearchResults.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Data/Entity.dart';
import 'Data/Mapper.dart';
import 'Data/Notification.dart';
import 'Data/Social.dart';
import 'Prefs.dart';
import 'AnilistService.dart';

part 'Queries/GetAnimeMangaListData.dart';
part 'Queries/GetBannerImages.dart';
part 'Queries/GetCalendarData.dart';
part 'Queries/GetEntityData.dart';
part 'Queries/GetGenresAndTags.dart';
part 'Queries/GetHomePageData.dart';
part 'Queries/GetMediaData.dart';
part 'Queries/GetMediaDetails.dart';
part 'Queries/GetNotifications.dart';
part 'Queries/GetSocialData.dart';
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

  Future<Map<String, dynamic>?> character(String id) => _character(id);

  Future<Map<String, dynamic>?> staff(String id) => _staff(id);

  Future<List<Media>?> characterMedia(String id, String type, int page) =>
      _characterMedia(id, type, page);

  Future<List<Media>?> staffMedia(String id, String type, int page) =>
      _staffMedia(id, type, page);

  Future<List<Character>?> staffCharacters(String id, int page) =>
      _staffCharacters(id, page);

  Future<bool> toggleFavourite(String kind, String id) =>
      _toggleFavourite(kind, id);

  Future<Map<String, dynamic>?> studio(String id) => _studio(id);

  Future<SocialUser?> socialProfile({String? id, String? name}) =>
      _socialProfile(id: id, name: name);

  Future<SocialFavourites> socialFavourites(String id) => _socialFavourites(id);

  Future<SocialProfile?> socialBundle({String? id, String? name}) =>
      _socialBundle(id: id, name: name);

  Future<UserPage> follows(
    String id, {
    required bool followers,
    int page = 1,
  }) => _follows(id, followers, page);

  Future<List<Media>> favouriteMedia(
    String id, {
    required bool anime,
    int page = 1,
  }) => _socialFavouriteMedia(id, anime, page);

  Future<ActivityPage> activities(
    ActivityScope scope, {
    String? userId,
    String? activityId,
    int page = 1,
  }) => _activities(scope, userId: userId, activityId: activityId, page: page);

  Future<ReplyPage> activityReplies(String id, {int page = 1}) =>
      _replies(id, page);

  Future<UserStats?> userStats(String id) => _stats(id);

  Future<List<ActivityDay>> activityHistory(String id) => _activityHistory(id);

  Future<List<StoryGroup>> storyGroups() => _stories();

  Future<Map<String, Media>> mediaByIds(List<String> ids) => _mediaByIds(ids);

  Future<List<Media>?> studioMedia(String id, bool main, int page) =>
      _studioMedia(id, main, page);

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
