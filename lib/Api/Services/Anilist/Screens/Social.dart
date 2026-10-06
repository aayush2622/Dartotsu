import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../Auth.dart';

class AnilistSocialView extends SocialScreenView {
  AnilistSocialView(super.service);

  @override
  bool get hasStories => true;

  @override
  String? profileUrl(String name) => 'https://anilist.co/user/$name';

  static final _link = RegExp(
    r'anilist\.co/(anime|manga|user|character|staff|studio|activity)/([^/?#\s]+)',
  );

  @override
  AppLink? parseLink(String url) {
    final m = _link.firstMatch(url);
    if (m == null) return null;
    final kind = AppLinkKind.values.firstWhere((k) => k.name == m.group(1));
    return AppLink(kind, m.group(2)!);
  }

  @override
  Future<SocialUser?> profile({String? id, String? name}) =>
      anilistAuth.queries.socialProfile(id: id, name: name);

  @override
  Future<SocialFavourites> favourites(String userId) =>
      anilistAuth.queries.socialFavourites(userId);

  @override
  Future<UserPage> follows(
    String userId, {
    required bool followers,
    int page = 1,
  }) => anilistAuth.queries.follows(userId, followers: followers, page: page);

  @override
  Future<List<Media>> favouriteMedia(
    String userId, {
    required bool anime,
    int page = 1,
  }) => anilistAuth.queries.favouriteMedia(userId, anime: anime, page: page);

  @override
  Future<bool?> toggleFollow(String userId) =>
      anilistAuth.mutations.toggleFollow(userId);

  @override
  Future<ActivityPage> activities(
    ActivityScope scope, {
    String? userId,
    String? activityId,
    int page = 1,
  }) => anilistAuth.queries.activities(
    scope,
    userId: userId,
    activityId: activityId,
    page: page,
  );

  @override
  Future<ReplyPage> replies(String activityId, {int page = 1}) =>
      anilistAuth.queries.activityReplies(activityId, page: page);

  @override
  Future<bool> toggleLike(String id, {bool reply = false}) =>
      anilistAuth.mutations.toggleLike(id, reply: reply);

  @override
  Future<bool> toggleSubscription(String activityId, bool subscribe) =>
      anilistAuth.mutations.toggleSubscription(activityId, subscribe);

  @override
  Future<bool> postActivity(String text, {String? edit}) =>
      anilistAuth.mutations.postActivity(text, edit: edit);

  @override
  Future<bool> postMessage(
    String userId,
    String text, {
    String? edit,
    bool isPrivate = false,
  }) => anilistAuth.mutations.postMessage(
    userId,
    text,
    edit: edit,
    isPrivate: isPrivate,
  );

  @override
  Future<bool> postReply(String activityId, String text, {String? edit}) =>
      anilistAuth.mutations.postReply(activityId, text, edit: edit);

  @override
  Future<bool> deleteActivity(String id) =>
      anilistAuth.mutations.deleteActivity(id);

  @override
  Future<bool> deleteReply(String id) => anilistAuth.mutations.deleteReply(id);

  @override
  Future<UserStats?> stats(String userId) =>
      anilistAuth.queries.userStats(userId);

  @override
  Future<List<ActivityDay>> activityHistory(String userId) =>
      anilistAuth.queries.activityHistory(userId);

  @override
  Future<List<StoryGroup>> stories() => anilistAuth.queries.storyGroups();

  @override
  Future<Map<String, Media>> mediaByIds(List<String> ids) =>
      anilistAuth.queries.mediaByIds(ids);
}
