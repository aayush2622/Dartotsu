import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Core/Services/Api/SharedRequests.dart';
import '../../../../Logger.dart';
import '../Auth.dart';
import '../Data/User.dart';

class TraktSocialView extends SocialScreenView {
  TraktSocialView(super.service);

  @override
  bool get hasActivity => false;

  @override
  bool get hasGlobalFeed => false;

  @override
  String? profileUrl(String name) {
    if (name.isNotEmpty) return 'https://trakt.tv/users/$name';
    final user = traktAuth.user.value;
    return user is TraktUser ? user.profileUrl : 'https://trakt.tv';
  }

  Future<Map<String, dynamic>> _stats(String id) async {
    try {
      final data = await traktAuth.client.get('/users/$id/stats', auth: true);
      return data is Map ? data.cast<String, dynamic>() : const {};
    } catch (e, st) {
      logError('TraktSocial.stats', e, st);
      return const {};
    }
  }

  Future<Map<String, dynamic>?> _profile(String id) async {
    try {
      final data = await traktAuth.client.get(
        '/users/$id?extended=full',
        auth: true,
      );
      return data is Map ? data.cast<String, dynamic>() : null;
    } catch (e, st) {
      logError('TraktSocial.profile', e, st);
      return null;
    }
  }

  int _int(Object? v) => (v as num?)?.toInt() ?? 0;

  UserBrief? _brief(Map<String, dynamic> row, {required bool following}) {
    final user = (row['user'] as Map?)?.cast<String, dynamic>();
    final slug = (user?['ids'] as Map?)?['slug'] as String?;
    if (user == null || slug == null) return null;
    final name = user['name'] as String?;
    return UserBrief(
      id: slug,
      name: name == null || name.isEmpty ? '${user['username']}' : name,
      avatar: ((user['images'] as Map?)?['avatar'] as Map?)?['full'] as String?,
      isFollowing: following,
    );
  }

  Future<Set<String>> _followedBy(String id) async {
    final rows = jsonRows(await traktAuth.client.get('/users/$id/following'));
    return {
      for (final row in rows)
        if (((row['user'] as Map?)?['ids'] as Map?)?['slug']
            case final String s)
          s,
    };
  }

  @override
  Future<UserPage> follows(
    String userId, {
    required bool followers,
    int page = 1,
  }) async {
    if (page > 1) return const UserPage([]);
    final rows = await traktAuth.client.get(
      '/users/$userId/${followers ? 'followers' : 'following'}',
      query: {'extended': 'full'},
    );
    final mine = canInteract ? await _followedBy('me') : const <String>{};
    return UserPage([
      for (final row in jsonRows(rows))
        ?_brief(
          row,
          following: mine.contains(
            ((row['user'] as Map?)?['ids'] as Map?)?['slug'],
          ),
        ),
    ]);
  }

  @override
  Future<bool?> toggleFollow(String userId) async {
    if (!canInteract) return null;
    try {
      final following = (await _followedBy('me')).contains(userId);
      if (following) {
        await traktAuth.client.delete('/users/$userId/follow');
      } else {
        await traktAuth.client.post('/users/$userId/follow', const {});
      }
      return !following;
    } catch (e, st) {
      logError('TraktSocial.follow', e, st);
      return null;
    }
  }

  @override
  Future<SocialUser?> profile({String? id, String? name}) async {
    final me = currentUserId;
    final currentUser = traktAuth.user.value as TraktUser?;
    final target =
        id ??
        (name != null && name.isNotEmpty
            ? name
            : (currentUser?.username ?? me ?? 'me'));

    final isMe = target == currentUser?.username || target == 'me';
    final (stats, user, followed) = await (
      _stats(target),
      _profile(target),
      canInteract && !isMe
          ? _followedBy('me').catchError((_) => <String>{})
          : Future.value(const <String>{}),
    ).wait;

    final movies =
        (stats['movies'] as Map?)?.cast<String, dynamic>() ?? const {};
    final shows = (stats['shows'] as Map?)?.cast<String, dynamic>() ?? const {};
    final episodes =
        (stats['episodes'] as Map?)?.cast<String, dynamic>() ?? const {};
    final network =
        (stats['network'] as Map?)?.cast<String, dynamic>() ?? const {};

    final username = user?['username'] as String? ?? name ?? target;
    final displayName = user?['name'] as String? ?? username;
    final about = user?['about'] as String?;
    final avatar = (user?['images'] as Map?)?['avatar'] is Map
        ? ((user!['images'] as Map)['avatar'] as Map)['full'] as String?
        : null;

    final moviesWatched = _int(movies['watched']);
    final showsWatched = _int(shows['watched']);
    final episodesWatched = _int(episodes['watched']);
    final totalWatched = moviesWatched + showsWatched;
    final minutesWatched = _int(stats['total_minutes']) > 0
        ? _int(stats['total_minutes'])
        : _int(movies['minutes']) + _int(episodes['minutes']);

    return SocialUser(
      id: target,
      name: displayName,
      avatar: avatar,
      about: (about != null && about.isNotEmpty) ? about : null,
      siteUrl: 'https://trakt.tv/users/$username',
      isFollowing: followed.contains(username),
      followers: _int(network['followers']),
      following: _int(network['following']),
      animeCount: totalWatched,
      episodesWatched: episodesWatched,
      minutesWatched: minutesWatched,
    );
  }

  @override
  Future<UserStats?> stats(String userId) async {
    final stats = await _stats(userId);
    if (stats.isEmpty) return null;

    final movies =
        (stats['movies'] as Map?)?.cast<String, dynamic>() ?? const {};
    final shows = (stats['shows'] as Map?)?.cast<String, dynamic>() ?? const {};
    final episodes =
        (stats['episodes'] as Map?)?.cast<String, dynamic>() ?? const {};
    final ratings =
        (stats['ratings'] as Map?)?.cast<String, dynamic>() ?? const {};
    final dist =
        (ratings['distribution'] as Map?)?.cast<String, dynamic>() ?? const {};

    final mediaEntries = [
      if (_int(movies['watched']) > 0)
        StatEntry(
          label: getString.moviesWatched,
          count: _int(movies['watched']),
        ),
      if (_int(shows['watched']) > 0)
        StatEntry(label: getString.showsWatched, count: _int(shows['watched'])),
      if (_int(episodes['watched']) > 0)
        StatEntry(
          label: getString.episodesWatched,
          count: _int(episodes['watched']),
        ),
      if (_int(movies['collected']) > 0)
        StatEntry(
          label: getString.moviesCollected,
          count: _int(movies['collected']),
        ),
      if (_int(shows['collected']) > 0)
        StatEntry(
          label: getString.showsCollected,
          count: _int(shows['collected']),
        ),
    ];

    final ratingEntries = [
      for (var i = 10; i >= 1; i--)
        if (_int(dist['$i']) > 0)
          StatEntry(label: '$i ★', count: _int(dist['$i'])),
    ];

    final categories = [
      if (mediaEntries.isNotEmpty)
        StatCategory('media', getString.moviesAndSeries, mediaEntries),
      if (ratingEntries.isNotEmpty)
        StatCategory('ratings', getString.ratings, ratingEntries),
    ];

    final totalWatched = _int(movies['watched']) + _int(shows['watched']);
    final minutesWatched = _int(stats['total_minutes']) > 0
        ? _int(stats['total_minutes'])
        : _int(movies['minutes']) + _int(episodes['minutes']);

    return UserStats(
      anime: UserStatSet(
        count: totalWatched,
        minutesWatched: minutesWatched,
        episodesWatched: _int(episodes['watched']),
        categories: categories,
      ),
      manga: const UserStatSet(),
    );
  }
}
