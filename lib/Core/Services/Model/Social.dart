import 'Author.dart';
import 'Character.dart';
import 'Media.dart';
import 'Studio.dart';

enum AppLinkKind { anime, manga, user, character, staff, studio, activity }

class AppLink {
  final AppLinkKind kind;
  final String value;

  const AppLink(this.kind, this.value);
}

class UserBrief {
  final String id;
  final String name;
  final String? avatar;
  final String? banner;
  bool isFollowing;
  bool isFollower;

  UserBrief({
    required this.id,
    required this.name,
    this.avatar,
    this.banner,
    this.isFollowing = false,
    this.isFollower = false,
  });
}

class SocialUser {
  final String id;
  final String name;
  final String? avatar;
  final String? banner;
  final String? about;
  final String? siteUrl;
  bool isFollowing;
  bool isFollower;
  final bool isBlocked;
  final int followers;
  final int following;
  final int animeCount;
  final int mangaCount;
  final int episodesWatched;
  final int minutesWatched;
  final double animeMeanScore;
  final int chaptersRead;
  final int volumesRead;
  final double mangaMeanScore;

  SocialUser({
    required this.id,
    required this.name,
    this.avatar,
    this.banner,
    this.about,
    this.siteUrl,
    this.isFollowing = false,
    this.isFollower = false,
    this.isBlocked = false,
    this.followers = 0,
    this.following = 0,
    this.animeCount = 0,
    this.mangaCount = 0,
    this.episodesWatched = 0,
    this.minutesWatched = 0,
    this.animeMeanScore = 0,
    this.chaptersRead = 0,
    this.volumesRead = 0,
    this.mangaMeanScore = 0,
  });

  double get daysWatched => minutesWatched / (24 * 60);
}

class ActivityDay {
  final DateTime date;
  final int amount;
  final int level;

  const ActivityDay(this.date, this.amount, this.level);
}

class UserPage {
  final List<UserBrief> items;
  final bool hasNext;

  const UserPage(this.items, {this.hasNext = false});
}

class ReplyPage {
  final List<ActivityReply> items;
  final bool hasNext;

  const ReplyPage(this.items, {this.hasNext = false});
}

class SocialFavourites {
  final bool animeHasMore;
  final bool mangaHasMore;
  final List<Media> anime;
  final List<Media> manga;
  final List<Character> characters;
  final List<Author> staff;
  final List<Studio> studios;

  const SocialFavourites({
    this.animeHasMore = false,
    this.mangaHasMore = false,
    this.anime = const [],
    this.manga = const [],
    this.characters = const [],
    this.staff = const [],
    this.studios = const [],
  });

  bool get isEmpty =>
      anime.isEmpty &&
      manga.isEmpty &&
      characters.isEmpty &&
      staff.isEmpty &&
      studios.isEmpty;
}

enum ActivityKind { text, list, message }

enum ActivityScope { following, global, user, single }

enum ActivityFilter { all, animeProgress, mangaProgress, messages }

class ActivityReply {
  final String id;
  final UserBrief user;
  final String activityId;
  String text;
  final String? html;
  int likeCount;
  bool isLiked;
  final int createdAt;
  final List<UserBrief> likes;

  ActivityReply({
    required this.id,
    required this.user,
    required this.activityId,
    required this.text,
    this.html,
    this.likeCount = 0,
    this.isLiked = false,
    this.createdAt = 0,
    this.likes = const [],
  });
}

class Activity {
  final String id;
  final ActivityKind kind;
  final UserBrief? user;
  final UserBrief? recipient;
  final String? mediaType;
  String? text;
  final String? html;
  final String? status;
  final String? progress;
  final Media? media;
  int replyCount;
  int likeCount;
  bool isLiked;
  final bool isPrivate;
  final bool isLocked;
  bool isSubscribed;
  final int createdAt;
  final String? siteUrl;
  final List<UserBrief> likes;

  Activity({
    required this.id,
    required this.kind,
    this.user,
    this.recipient,
    this.mediaType,
    this.text,
    this.html,
    this.status,
    this.progress,
    this.media,
    this.replyCount = 0,
    this.likeCount = 0,
    this.isLiked = false,
    this.isPrivate = false,
    this.isLocked = false,
    this.isSubscribed = false,
    this.createdAt = 0,
    this.siteUrl,
    this.likes = const [],
  });

  bool get isMessage => kind == ActivityKind.message;
}

class ActivityPage {
  final List<Activity> items;
  final bool hasNext;

  const ActivityPage(this.items, {this.hasNext = false});
}

class StoryGroup {
  final UserBrief user;
  final List<Activity> activities;

  const StoryGroup(this.user, this.activities);
}

class StatEntry {
  final String label;
  final String? id;
  final int count;
  final double meanScore;
  final int minutesWatched;
  final int chaptersRead;

  const StatEntry({
    required this.label,
    this.id,
    this.count = 0,
    this.meanScore = 0,
    this.minutesWatched = 0,
    this.chaptersRead = 0,
  });
}

class StatCategory {
  final String key;
  final String title;
  final List<StatEntry> entries;

  const StatCategory(this.key, this.title, this.entries);
}

class UserStatSet {
  final int count;
  final double meanScore;
  final double standardDeviation;
  final int minutesWatched;
  final int episodesWatched;
  final int chaptersRead;
  final int volumesRead;
  final List<StatCategory> categories;

  const UserStatSet({
    this.count = 0,
    this.meanScore = 0,
    this.standardDeviation = 0,
    this.minutesWatched = 0,
    this.episodesWatched = 0,
    this.chaptersRead = 0,
    this.volumesRead = 0,
    this.categories = const [],
  });
}

class UserStats {
  final UserStatSet anime;
  final UserStatSet manga;

  const UserStats({required this.anime, required this.manga});
}
