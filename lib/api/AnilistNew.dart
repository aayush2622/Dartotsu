import 'package:get/get.dart';
import 'Anilist/AnilistMutations.dart';
import 'Anilist/AnilistQueries.dart';

class AnilistController extends GetxController {
  final AnilistQueries query = AnilistQueries();
  final AnilistMutations mutation = AnilistMutations();

  String? token;
  String? username;
  int? userid;
  String? avatar;
  String? bg;
  int? episodesWatched;
  int? chapterRead;
  int unreadNotificationCount = 0;
  List<String>? genres;
  Map<bool, List<String>>? tags;
  int rateLimitReset = 0;
  bool initialized = false;
  bool adult = false;
  String? titleLanguage;
  String? staffNameLanguage;
  bool airingNotifications = false;
  bool restrictMessagesToFollowing = false;
  String? scoreFormat;
  String? rowOrder;
  int? activityMergeTime;
  String? timezone;
  List<String>? animeCustomLists;
  List<String>? mangaCustomLists;

}

// Creating a singleton-like instance
final AnilistController Anilist = Get.put(AnilistController());