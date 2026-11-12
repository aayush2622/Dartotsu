import '../../../Core/Services/Api/IdMapper.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import '../../../Screen/Settings/Sync/Data/SyncModels.dart';
import 'Client.dart';
import 'Data/Parser.dart';
import 'Mutations.dart';
import 'Queries.dart';

class AnimePlanetSync extends SyncAdapter {
  final AnimePlanetQueries queries;
  final AnimePlanetMutations mutations;

  AnimePlanetSync(this.queries, this.mutations);

  final _slugs = <int, String>{};

  @override
  String get key => SyncKey.animeplanet;

  @override
  bool supports({required bool anime}) => true;

  @override
  bool get syncsDates => false;

  @override
  Set<String> get statusesWithoutProgress => const {'PLANNING'};

  @override
  int get requestsPerBatch => 4;

  @override
  List<SyncLimit> get limits => const [SyncLimit(60, Duration(minutes: 1))];

  int? _keyOf(String id) {
    final ref = splitAnimePlanetId(id);
    if (ref == null) return null;
    final n = int.tryParse(ref.$2);
    if (n != null && n >= 0x800000000000) return n;
    return syncSlugKey(ref.$2);
  }

  @override
  Future<List<SyncItem>> library({required bool anime}) async {
    try {
      queries.invalidateLibrary();
      final media = await queries.library(anime: anime);
      final out = <SyncItem>[];
      for (final m in media) {
        final ref = splitAnimePlanetId(m.id);
        if (ref == null || m.userStatus == 'WONT') continue;
        final k = syncSlugKey(ref.$2);
        _slugs[k] = ref.$2;
        out.add(
          SyncItem.fromMedia(m, {
            SyncKey.animeplanet: k,
          }).copy(id: '${ref.$1}/$k'),
        );
      }
      return out;
    } on AnimePlanetException catch (e) {
      throw syncError(e, status: e.status);
    }
  }

  @override
  String? targetId(int native, {required bool anime}) =>
      '${anime ? 'anime' : 'manga'}/$native';

  @override
  int? nativeId(String id) => _keyOf(id);

  Future<String?> _slug(int key, bool anime) async =>
      _slugs[key] ?? await IdMapper.animePlanetSlug(key, anime: anime);

  @override
  Future<int> write(List<SyncOp> batch, {required bool anime}) async {
    var used = 0;
    try {
      for (final op in batch) {
        final key = _keyOf(op.targetId);
        final slug = key == null ? null : await _slug(key, anime);
        if (slug == null) {
          throw AnimePlanetException('No Anime-Planet page for ${op.targetId}');
        }
        final kept = await mutations.saveEntry(
          op.want.toMedia(
            anime: anime,
            idOverride: '${anime ? 'anime' : 'manga'}/$slug',
          ),
          exists: op.existsHint,
        );
        used += requestsPerBatch;
        if (kept != null) throw SyncPartial(kept);
      }
    } on AnimePlanetException catch (e) {
      throw syncError(e, status: e.status);
    }
    return used;
  }

  @override
  Map<String, int> idsOf(Media media) {
    final base = super.idsOf(media);
    final key = _keyOf(media.id);
    return {...base, SyncKey.animeplanet: ?key};
  }
}
