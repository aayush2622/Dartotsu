import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../Auth.dart';
import '../Data/User.dart';

class ComickSocialView extends SocialScreenView {
  ComickSocialView(super.service);

  @override
  bool get hasActivity => false;

  @override
  bool get hasGlobalFeed => false;

  @override
  bool get hasFollows => false;

  @override
  String? profileUrl(String name) => 'https://comick.dev/';

  Future<(List<Media>, List<Media>)> _libraries() async {
    final queries = comickAuth.queries;
    return (await queries.library(anime: true), await queries.library());
  }

  double _mean(List<Media> items) {
    final scores = [
      for (final m in items)
        if ((m.userScore ?? 0) > 0) m.userScore! / 10,
    ];
    return scores.isEmpty ? 0 : scores.reduce((a, b) => a + b) / scores.length;
  }

  int _progress(List<Media> items) =>
      items.fold(0, (sum, m) => sum + (m.userProgress ?? 0));

  @override
  Future<SocialUser?> profile({String? id, String? name}) async {
    final user = comickAuth.user.value;
    if (user is! ComickUser || (id != null && id != '${user.id}')) return null;
    final (anime, manga) = await _libraries();
    return SocialUser(
      id: '${user.id}',
      name: user.name,
      avatar: user.avatar,
      siteUrl: user.profileUrl,
      animeCount: anime.length,
      mangaCount: manga.length,
      episodesWatched: _progress(anime),
      chaptersRead: _progress(manga),
      animeMeanScore: _mean(anime),
      mangaMeanScore: _mean(manga),
    );
  }

  UserStatSet _set(List<Media> items, {required bool anime}) {
    final statuses = {
      'CURRENT': anime ? getString.watching : getString.reading,
      'PLANNING': getString.planning,
      'COMPLETED': getString.completed,
      'PAUSED': getString.paused,
      'DROPPED': getString.dropped,
    };
    final scores = <int, int>{};
    final formats = <String, int>{};
    for (final m in items) {
      final score = ((m.userScore ?? 0) / 10).round();
      if (score > 0) scores[score] = (scores[score] ?? 0) + 1;
      final format = m.format;
      if (format != null) formats[format] = (formats[format] ?? 0) + 1;
    }
    final categories = [
      StatCategory('statuses', getString.status, [
        for (final e in statuses.entries)
          if (items.where((m) => m.userStatus == e.key).length case final n
              when n > 0)
            StatEntry(label: e.value, count: n),
      ]),
      StatCategory('scores', getString.score, [
        for (var s = 10; s >= 1; s--)
          if (scores[s] case final n?) StatEntry(label: '$s ★', count: n),
      ]),
      StatCategory('formats', getString.format, [
        for (final e in formats.entries)
          StatEntry(label: e.key, count: e.value),
      ]),
    ];
    return UserStatSet(
      count: items.length,
      meanScore: _mean(items),
      episodesWatched: anime ? _progress(items) : 0,
      chaptersRead: anime ? 0 : _progress(items),
      categories: [
        for (final c in categories)
          if (c.entries.isNotEmpty) c,
      ],
    );
  }

  @override
  Future<UserStats?> stats(String userId) async {
    final (anime, manga) = await _libraries();
    return UserStats(
      anime: _set(anime, anime: true),
      manga: _set(manga, anime: false),
    );
  }
}
