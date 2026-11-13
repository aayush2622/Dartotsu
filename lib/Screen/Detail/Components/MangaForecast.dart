import 'dart:async';

import '../../../Core/Services/Api/MangaUpdates.dart';
import '../../../Core/Services/Api/MuForecast.dart';
import '../../../Core/Services/MediaServiceController.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Logger.dart';
import '../Watch/Data/Media/MediaRecord.dart';

class MangaForecasts {
  MangaForecasts._();

  static final _lives = <String, Live<MuForecast?>>{};

  static Live<MuForecast?>? of(Media media, MediaService service) {
    if (media.manga == null || media.status != 'RELEASING') return null;
    final key = '${service.id}/${media.id}';
    final existing = _lives[key];
    if (existing != null) return existing;
    final live = Live<MuForecast?>(null);
    _lives[key] = live;
    unawaited(_load(media, service, live));
    return live;
  }

  static Future<void> _load(
    Media media,
    MediaService service,
    Live<MuForecast?> live,
  ) async {
    final record = MediaRecords.of(service, media);
    try {
      final info = await MangaUpdates.lookup(
        [media.nameRomaji, media.name, ...media.synonyms.take(2)],
        year: media.startDate?.year,
        knownId: record.mangaUpdatesId,
        onMatched: (id) {
          record.mangaUpdatesId = id;
          MediaRecords.save(service, media);
        },
      );
      if (info == null) return;
      live.value = predictNextChapter(
        info.releases,
        completed: info.series.completed,
      );
    } catch (e, st) {
      logger(
        'Next chapter forecast failed: $e\n$st',
        logLevel: LogLevel.warning,
        tag: 'MANGAUPDATES',
      );
    }
  }
}
