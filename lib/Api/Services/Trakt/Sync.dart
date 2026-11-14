import '../../../Core/Services/Model/Media.dart';
import '../../../Screen/Detail/Watch/Data/EpisodeMeta.dart';
import '../../../Screen/Settings/Sync/Data/SyncAdapter.dart';
import '../../../Screen/Settings/Sync/Data/SyncModels.dart';
import 'Data/Mapper.dart';

class TraktSync extends SyncAdapter {
  @override
  String get key => SyncKey.trakt;

  @override
  bool supports({required bool anime}) => false;

  @override
  List<SyncLimit> get limits => const [];

  @override
  Future<List<SyncItem>> library({required bool anime}) async => const [];

  @override
  String? targetId(int native, {required bool anime}) => null;

  @override
  int? nativeId(String id) => parseTraktMediaId(id)?.$2;

  @override
  Future<int> write(List<SyncOp> batch, {required bool anime}) async => 0;

  @override
  Map<String, int> idsOf(Media media) => {
    ...super.idsOf(media),
    SyncKey.trakt: ?traktExtras[media]?.traktId,
  };

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
}
