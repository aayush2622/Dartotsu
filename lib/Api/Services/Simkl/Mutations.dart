import '../../../Core/Preferences/Incognito.dart';
import '../../../Core/Services/Api/Mutations.dart';
import '../../../Core/Services/Api/Progress.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Utils/Functions/RefreshController.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Queries.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';

List<(int, int)> parseSimklTvEpisodes(Object? body) {
  if (body is! List) return const [];
  final out = <(int, int)>[
    for (final e in body)
      if (e is Map &&
          e['type'] == 'episode' &&
          e['season'] is num &&
          e['episode'] is num &&
          (e['season'] as num) > 0)
        ((e['season'] as num).toInt(), (e['episode'] as num).toInt()),
  ];
  out.sort(
    (a, b) => a.$1 != b.$1 ? a.$1.compareTo(b.$1) : a.$2.compareTo(b.$2),
  );
  return out;
}

Map<String, Object> simklShowEpisodes(int id, List<(int, int)> episodes) {
  final seasons = <int, List<int>>{};
  for (final (season, episode) in episodes) {
    (seasons[season] ??= []).add(episode);
  }
  return {
    'ids': {'simkl': id},
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

class SimklMutations extends Mutations {
  final SimklClient client;
  final SimklQueries queries;

  SimklMutations(this.client, this.queries);

  Map<String, Object> _entry(
    SimklKind kind,
    int id, [
    Map<String, Object>? extra,
  ]) => {
    'ids': {'simkl': id},
    ...?extra,
  };

  Map<String, Object> _body(
    SimklKind kind,
    int id, [
    Map<String, Object>? extra,
  ]) => {
    kind.syncKey: [_entry(kind, id, extra)],
  };

  Future<void> _episodes(
    SimklKind kind,
    int id,
    int from,
    int to, {
    required bool add,
  }) async {
    if (kind != SimklKind.anime || to < from) return;
    await client.post(add ? '/sync/history' : '/sync/history/remove', {
      'anime': [
        _entry(kind, id, {
          'episodes': [
            for (var n = from; n <= to; n++) {'number': n},
          ],
        }),
      ],
    });
  }

  Future<List<(int, int)>> _tvEpisodes(int id) async => parseSimklTvEpisodes(
    await client.get(
      '/tv/episodes/$id',
      query: {'extended': 'full'},
      auth: false,
    ),
  );

  @override
  Future<void> editList(Media media, {List<String>? customList}) async {
    if (incognitoBlocksEdits) {
      snackString(getString.incognitoEditsBlocked);
      return;
    }
    final ref = parseSimklMediaId(media.id);
    if (ref == null) return;
    final (kind, id) = ref;
    try {
      final before = (await queries.library())[media.id];
      final old = before?.userProgress ?? 0;
      final progress = media.userProgress ?? 0;
      final status = simklStatusOut(media.userStatus, kind);
      final score = ((media.userScore ?? 0) / 10).round().clamp(0, 10);
      final oldScore = ((before?.userScore ?? 0) / 10).round();
      final rate = score > 0 && score != oldScore;

      var logged = false;
      if (kind == SimklKind.tv && progress != old) {
        final all = await _tvEpisodes(id);
        final from = (progress < old ? progress : old).clamp(0, all.length);
        final to = (progress < old ? old : progress).clamp(0, all.length);
        if (to > from) {
          await client.post(
            progress < old ? '/sync/history/remove' : '/sync/history',
            {
              'shows': [simklShowEpisodes(id, all.sublist(from, to))],
            },
          );
        }
      }
      if (kind == SimklKind.anime && progress < old) {
        await _episodes(kind, id, progress + 1, old, add: false);
      }
      if (kind == SimklKind.anime && progress > old) {
        logged = true;
        await client.post('/sync/history', {
          kind.syncKey: [
            _entry(kind, id, {
              'episodes': [
                for (var n = old + 1; n <= progress; n++) {'number': n},
              ],
              'status': ?status,
              if (rate) 'rating': score,
            }),
          ],
        });
      }
      if (!logged) {
        if (status != null &&
            status != simklStatusOut(before?.userStatus, kind)) {
          await client.post(
            '/sync/add-to-list',
            _body(kind, id, {'to': status}),
          );
        }
        if (rate) {
          await client.post(
            '/sync/ratings',
            _body(kind, id, {'rating': score}),
          );
        }
      }
      if (score == 0 && oldScore > 0) {
        await client.post('/sync/ratings/remove', _body(kind, id));
      }
      _done();
    } on SimklException catch (e) {
      snackString(getString.serviceError(getString.simkl, e.message));
    }
  }

  @override
  Future<void> deleteFromList(Media media) async {
    final ref = parseSimklMediaId(media.id);
    if (ref == null) return;
    try {
      await client.post('/sync/history/remove', _body(ref.$1, ref.$2));
      clearListEntry(media);
      _done();
    } on SimklException catch (e) {
      snackString(getString.serviceError(getString.simkl, e.message));
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
