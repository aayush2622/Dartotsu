import '../../../Core/Preferences/Incognito.dart';
import '../../../Core/Services/Api/Mutations.dart';
import '../../../Core/Services/Api/Progress.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Functions/RefreshController.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Queries.dart';

List<(int, int)> parseTraktShowEpisodes(Object? body) {
  if (body is! List) return const [];
  final out = <(int, int)>[];
  for (final s in body) {
    if (s is! Map) continue;
    final seasonNum = (s['number'] as num?)?.toInt() ?? 0;
    if (seasonNum <= 0) continue;
    final eps = s['episodes'];
    if (eps is List) {
      for (final e in eps) {
        if (e is Map) {
          final epNum = (e['number'] as num?)?.toInt();
          if (epNum != null && epNum > 0) {
            out.add((seasonNum, epNum));
          }
        }
      }
    }
  }
  out.sort(
    (a, b) => a.$1 != b.$1 ? a.$1.compareTo(b.$1) : a.$2.compareTo(b.$2),
  );
  return out;
}

Map<String, Object> traktShowEpisodes(int id, List<(int, int)> episodes) {
  final seasons = <int, List<int>>{};
  for (final (season, episode) in episodes) {
    (seasons[season] ??= []).add(episode);
  }
  return {
    'ids': {'trakt': id},
    'seasons': [
      for (final e in seasons.entries)
        {
          'number': e.key,
          'episodes': [
            for (final n in e.value) {'number': n},
          ],
        },
    ],
  };
}

class TraktMutations extends Mutations {
  final TraktClient client;
  final TraktQueries queries;

  TraktMutations(this.client, this.queries);

  Map<String, Object> _entry(int id, [Map<String, Object>? extra]) => {
    'ids': {'trakt': id},
    ...?extra,
  };

  Map<String, Object> _body(
    TraktKind kind,
    int id, [
    Map<String, Object>? extra,
  ]) => {
    kind.syncKey: [_entry(id, extra)],
  };

  Future<List<(int, int)>> _showEpisodes(int id) async =>
      parseTraktShowEpisodes(
        await client.get(
          '/shows/$id/seasons',
          query: {'extended': 'episodes'},
          auth: false,
        ),
      );

  @override
  Future<void> editList(Media media, {List<String>? customList}) async {
    if (incognitoBlocksEdits) {
      snackString(getString.incognitoEditsBlocked);
      return;
    }
    final ref = parseTraktMediaId(media.id);
    if (ref == null) return;
    final (kind, id) = ref;

    try {
      final before = (await queries.library())[media.id];
      final old = before?.userProgress ?? 0;
      final progress = media.userProgress ?? 0;
      final status = media.userStatus;
      final score = ((media.userScore ?? 0) / 10).round().clamp(0, 10);
      final oldScore = ((before?.userScore ?? 0) / 10).round();
      final rate = score > 0 && score != oldScore;

      if (status == 'PLANNING') {
        await client.post('/sync/watchlist', _body(kind, id));
        if (before?.userStatus == 'COMPLETED' || old > 0) {
          await client.post('/sync/history/remove', _body(kind, id));
        }
      } else if (status == 'COMPLETED') {
        await client.post('/sync/history', _body(kind, id));
        await client.post('/sync/watchlist/remove', _body(kind, id));
      } else {
        // Watching / progress
        await client.post('/sync/watchlist/remove', _body(kind, id));
        if (kind == TraktKind.shows && progress != old) {
          final all = await _showEpisodes(id);
          final from = (progress < old ? progress : old).clamp(0, all.length);
          final to = (progress < old ? old : progress).clamp(0, all.length);
          if (to > from) {
            final eps = all.sublist(from, to);
            final endpoint = progress < old
                ? '/sync/history/remove'
                : '/sync/history';
            await client.post(endpoint, {
              'shows': [traktShowEpisodes(id, eps)],
            });
          }
        } else if (kind == TraktKind.movies && progress > 0) {
          await client.post('/sync/history', _body(kind, id));
        }
      }

      if (rate) {
        await client.post('/sync/ratings', _body(kind, id, {'rating': score}));
      } else if (score == 0 && oldScore > 0) {
        await client.post('/sync/ratings/remove', _body(kind, id));
      }

      _done();
    } on TraktException catch (e) {
      snackString(getString.serviceError(getString.trakt, e.message));
    }
  }

  @override
  Future<void> deleteFromList(Media media) async {
    final ref = parseTraktMediaId(media.id);
    if (ref == null) return;
    final (kind, id) = ref;
    try {
      await client.post('/sync/history/remove', _body(kind, id));
      await client.post('/sync/watchlist/remove', _body(kind, id));
      await client.post('/sync/ratings/remove', _body(kind, id));
      clearListEntry(media);
      _done();
    } on TraktException catch (e) {
      snackString(getString.serviceError(getString.trakt, e.message));
    }
  }

  @override
  Future<void> setProgress(Media media, int progress) async {
    if (skipForIncognito(getString.incognitoProgressNotSaved)) return;
    if (!applyProgress(media, progress)) return;
    await editList(media);
    snackString(getString.progressSet(progress));
  }

  void _done() {
    queries.invalidateLibrary();
    findBuilt<RefreshController>()?.all();
  }
}
