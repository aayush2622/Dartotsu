import '../../../../Api/Services/Anilist/AnilistService.dart';
import '../../../../Core/Services/Api/IdMapper.dart';
import '../../Watch/Data/Media/MediaRecord.dart';
import '../../../../Core/Services/MediaServiceController.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../Settings/Sync/Data/SyncModels.dart';

class CommentsTarget {
  CommentsTarget._();

  static final _pending = <String, Future<int?>>{};

  static String _key(MediaService service, Media media) =>
      'commentsTarget/${service.id}/${media.id}';

  static int? cached(MediaService service, Media media) {
    if (service.id == anilistServiceId) return int.tryParse(media.id);
    return MediaRecords.of(service, media).commentsId;
  }

  static Future<int?> resolve(MediaService service, Media media) {
    final known = cached(service, media);
    if (known != null) return Future.value(known);
    return _pending[_key(service, media)] ??= _lookup(service, media)
        .whenComplete(() {
          _pending.remove(_key(service, media));
        });
  }

  static Future<int?> _lookup(MediaService service, Media media) async {
    if (service.syncAdapter == null) return null;
    int? id;
    for (var attempt = 0; attempt < 2 && id == null; attempt++) {
      try {
        id = await IdMapper.resolveKey(
          service,
          media,
          SyncKey.anilist,
        ).timeout(const Duration(seconds: 20));
      } catch (_) {}
    }
    if (id != null) {
      MediaRecords.of(service, media).commentsId = id;
      MediaRecords.save(service, media);
    }
    return id;
  }
}
