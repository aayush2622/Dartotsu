import '../../../Core/Services/Model/Media.dart';
import '../../../Screen/Detail/Watch/Data/EpisodeMeta.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import '../../../Screen/Settings/Sync/Data/SyncModels.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Mutations.dart';
import 'Queries.dart';

const _movieBase = 1 << 40;

int traktSyncKey(TraktKind kind, int id) =>
    kind == TraktKind.movies ? id + _movieBase : id;

(TraktKind, int) traktFromSyncKey(int key) => key >= _movieBase
    ? (TraktKind.movies, key - _movieBase)
    : (TraktKind.shows, key);

class TraktSync extends SyncAdapter {
  final TraktQueries queries;
  final TraktMutations mutations;
  final TraktClient client;

  TraktSync(this.queries, this.mutations, this.client);

  @override
  String get key => SyncKey.trakt;

  @override
  bool supports({required bool anime}) => anime;

  @override
  bool get syncsDates => false;

  @override
  bool get syncsRepeat => false;

  @override
  Map<String, String> get statusFold => const {
    'PAUSED': 'CURRENT',
    'DROPPED': 'CURRENT',
  };

  @override
  int get requestsPerBatch => 3;

  @override
  List<SyncLimit> get limits => const [SyncLimit(40, Duration(minutes: 1))];

  Map<String, int> _ids(Media media) {
    final ref = parseTraktMediaId(media.id);
    final extras = traktExtras[media];
    return {
      if (ref != null) SyncKey.trakt: traktSyncKey(ref.$1, ref.$2),
      SyncKey.imdb: ?imdbNumber(extras?.imdbId),
      if (ref?.$1 == TraktKind.shows) SyncKey.tvdb: ?extras?.tvdbId,
    };
  }

  @override
  Future<List<SyncItem>> library({required bool anime}) async {
    if (!anime) return const [];
    try {
      queries.invalidateLibrary();
      final all = await queries.library();
      return [
        for (final m in all.values)
          if (m.genres.contains('Anime'))
            if (_ids(m) case final ids when ids.containsKey(SyncKey.trakt))
              SyncItem.fromMedia(
                m,
                ids,
              ).copy(id: 'shows/${ids[SyncKey.trakt]}'),
      ];
    } on TraktException catch (e) {
      throw syncError(e, status: e.status);
    }
  }

  @override
  String? targetId(int native, {required bool anime}) => 'shows/$native';

  @override
  int? nativeId(String id) => int.tryParse(id.split('/').last);

  @override
  Future<int> write(List<SyncOp> batch, {required bool anime}) async {
    try {
      for (final op in batch) {
        final native = nativeId(op.targetId);
        if (native == null) continue;
        final (kind, id) = traktFromSyncKey(native);
        await mutations.saveEntry(
          op.want.toMedia(anime: anime, idOverride: traktMediaId(kind, id)),
        );
      }
    } on TraktException catch (e) {
      throw syncError(e, status: e.status);
    }
    return batch.length * requestsPerBatch;
  }

  @override
  Map<String, int> idsOf(Media media) => {
    ...super.idsOf(media),
    ..._ids(media),
  };

  @override
  bool get canResolve => true;

  @override
  List<String> get resolveKeys => const [SyncKey.imdb];

  @override
  Future<(Map<int, int>, int)> resolveBy(
    String from,
    List<int> ids, {
    required bool anime,
  }) async {
    if (from != SyncKey.imdb) return (const <int, int>{}, 0);
    final out = <int, int>{};
    try {
      for (final id in ids) {
        final rows = await client.get(
          '/search/imdb/${imdbLabel(id)}',
          query: {'type': 'movie,show'},
          auth: false,
        );
        for (final row in rows is List ? rows : const []) {
          if (row is! Map) continue;
          final kind = TraktKind.fromName(row['type'] as String?);
          final trakt = kind == null
              ? null
              : ((row[kind.itemKey] as Map?)?['ids'] as Map?)?['trakt'];
          if (kind != null && trakt is num) {
            out[id] = traktSyncKey(kind, trakt.toInt());
            break;
          }
        }
      }
    } on TraktException catch (e) {
      throw syncError(e, status: e.status);
    }
    return (out, ids.length);
  }

  @override
  void contributeIds(Media media, MetaIds ids) {
    final extras = traktExtras[media];
    if (extras == null) return;
    ids
      ..tvdb ??= extras.tvdbId
      ..tmdb ??= extras.tmdbId
      ..imdb ??= extras.imdbId
      ..trakt ??= extras.traktId;
  }

  @override
  Future<void> finish() async => queries.invalidateLibrary();
}
