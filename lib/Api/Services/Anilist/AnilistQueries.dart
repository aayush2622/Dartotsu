import 'dart:math';

import 'package:collection/collection.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Api/Queries.dart';
import '../../../Core/Services/Model/Author.dart';
import '../../../Core/Services/Model/Character.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Model/Studio.dart';
import '../../../Core/Services/Model/User.dart';
import '../../../Core/Services/ServiceNotification.dart';
import '../../../Model/SearchResults.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'AnilistClient.dart';
import 'AnilistMedia.dart';
import 'AnilistNotification.dart';

part 'AnilistQueries/GetAnimeMangaListData.dart';
part 'AnilistQueries/GetBannerImages.dart';
part 'AnilistQueries/GetCalendarData.dart';
part 'AnilistQueries/GetGenresAndTags.dart';
part 'AnilistQueries/GetHomePageData.dart';
part 'AnilistQueries/GetMediaData.dart';
part 'AnilistQueries/GetMediaDetails.dart';
part 'AnilistQueries/GetNotifications.dart';
part 'AnilistQueries/GetUserData.dart';
part 'AnilistQueries/GetUserMediaList.dart';
part 'AnilistQueries/Search.dart';

class AnilistQueries extends Queries {
  final ExecuteAnilistQuery executeQuery;
  final int? Function() userId;
  final Future<bool> Function() refreshUser;

  AnilistQueries(
    this.executeQuery, {
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
  Future<Map<String, List<Media>>> initHomePage() => _initHomePage();

  @override
  Future<Map<String, List<Media>>> getAnimeList() => _getAnimeList();

  @override
  Future<Map<String, List<Media>>> getMangaList() => _getMangaList();

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

/// Shared parse for a `Page { media { ... } }` node.
List<Media> _pageMedia(Map<String, dynamic>? page) =>
    ((page?['media'] as List?) ?? const [])
        .cast<Map<String, dynamic>>()
        .map((e) => mapAnilistMedia(e))
        .toList();

/// Shared parse for a `MediaListCollection { lists { entries { media } } }` node.
List<Media> _collectionMedia(Map<String, dynamic>? collection) {
  final out = <Media>[];
  for (final list
      in ((collection?['lists'] as List?) ?? const [])
          .cast<Map<String, dynamic>>()) {
    for (final entry
        in ((list['entries'] as List?) ?? const [])
            .cast<Map<String, dynamic>>()) {
      if (entry['media'] != null) out.add(mapAnilistListEntry(entry));
    }
  }
  return out;
}

Map<String, List<Media>> _nonEmpty(Map<String, List<Media>> map) {
  map.removeWhere((_, v) => v.isEmpty);
  return map;
}
