import '../../../../../Logger.dart';
import '../../../../../Utils/Lru.dart';
import '../../../../../Core/Preferences/PrefManager.dart';
import '../../../../../Core/Services/MediaService.dart';
import '../../../../../Core/Services/Model/Media.dart';
import '../WatchPrefs.dart';

class SourceMatchRecord {
  final String? title;
  final String url;
  final String? cover;

  const SourceMatchRecord({this.title, required this.url, this.cover});

  Map<String, Object?> toJson() => {'title': title, 'url': url, 'cover': cover};

  static SourceMatchRecord? fromJson(Object? json) {
    if (json is! Map) return null;
    final url = json['url'];
    if (url is! String) return null;
    return SourceMatchRecord(
      title: json['title'] as String?,
      url: url,
      cover: json['cover'] as String?,
    );
  }
}

class NovelLocator {
  final int block;
  final double within;
  final String snippet;

  const NovelLocator(this.block, this.within, this.snippet);

  Map<String, Object?> toJson() => {'b': block, 'w': within, 's': snippet};

  static NovelLocator? fromJson(Object? json) {
    if (json is! Map) return null;
    final block = (json['b'] as num?)?.toInt();
    if (block == null || block < 0) return null;
    return NovelLocator(
      block,
      ((json['w'] as num?)?.toDouble() ?? 0).clamp(0.0, 1.0),
      '${json['s'] ?? ''}',
    );
  }
}

class Playback {
  int position;
  int duration;
  int at;
  NovelLocator? locator;

  Playback({this.position = 0, this.duration = 0, int? at, this.locator})
    : at = at ?? DateTime.now().millisecondsSinceEpoch;

  double get fraction => duration <= 0 ? 0 : position / duration;

  bool get finished => fraction >= 0.9;

  Map<String, Object?> toJson() => {
    'position': position,
    'duration': duration,
    'at': at,
    if (locator != null) 'loc': locator!.toJson(),
  };

  static Playback? fromJson(Object? json) {
    if (json is! Map) return null;
    return Playback(
      position: (json['position'] as num?)?.toInt() ?? 0,
      duration: (json['duration'] as num?)?.toInt() ?? 0,
      at: (json['at'] as num?)?.toInt(),
      locator: NovelLocator.fromJson(json['loc']),
    );
  }
}

class StreamPrefs {
  bool auto;
  Map<String, String> last;

  StreamPrefs({this.auto = false, Map<String, String>? last})
    : last = last ?? {};

  Map<String, Object?> toJson() => {'auto': auto, 'last': last};

  static StreamPrefs fromJson(Object? json) {
    if (json is! Map) return StreamPrefs();
    return StreamPrefs(
      auto: json['auto'] == true,
      last: {for (final e in _entries(json['last'])) '${e.key}': '${e.value}'},
    );
  }
}

Iterable<MapEntry<dynamic, dynamic>> _entries(Object? value) =>
    value is Map ? value.entries : const [];

class Bookmark {
  final String unit;
  final int position;
  final int total;
  final String label;
  final int at;
  final NovelLocator? locator;

  const Bookmark({
    required this.unit,
    required this.position,
    required this.total,
    required this.label,
    required this.at,
    this.locator,
  });

  Map<String, Object?> toJson() => {
    'unit': unit,
    'position': position,
    'total': total,
    'label': label,
    'at': at,
    if (locator != null) 'loc': locator!.toJson(),
  };

  static Bookmark? fromJson(Object? json) {
    if (json is! Map) return null;
    final unit = json['unit'];
    if (unit is! String) return null;
    return Bookmark(
      unit: unit,
      position: (json['position'] as num?)?.toInt() ?? 0,
      total: (json['total'] as num?)?.toInt() ?? 0,
      label: '${json['label'] ?? ''}',
      at: (json['at'] as num?)?.toInt() ?? 0,
      locator: NovelLocator.fromJson(json['loc']),
    );
  }
}

const highlightColors = [
  0xFFFFD54F,
  0xFF81C784,
  0xFF64B5F6,
  0xFFF48FB1,
  0xFFFFB74D,
];

class NovelHighlight {
  final String id;
  final String unit;
  final int block;
  final int start;
  final int end;
  final String text;
  int color;
  String note;
  final int at;

  NovelHighlight({
    required this.id,
    required this.unit,
    required this.block,
    required this.start,
    required this.end,
    required this.text,
    this.color = 0,
    this.note = '',
    required this.at,
  });

  Map<String, Object?> toJson() => {
    'id': id,
    'unit': unit,
    'block': block,
    'start': start,
    'end': end,
    'text': text,
    'color': color,
    'note': note,
    'at': at,
  };

  static NovelHighlight? fromJson(Object? json) {
    if (json is! Map) return null;
    final unit = json['unit'];
    final id = json['id'];
    final block = (json['block'] as num?)?.toInt();
    final start = (json['start'] as num?)?.toInt();
    final end = (json['end'] as num?)?.toInt();
    if (unit is! String || id is! String) return null;
    if (block == null || start == null || end == null || end <= start) {
      return null;
    }
    return NovelHighlight(
      id: id,
      unit: unit,
      block: block,
      start: start,
      end: end,
      text: '${json['text'] ?? ''}',
      color: ((json['color'] as num?)?.toInt() ?? 0).clamp(
        0,
        highlightColors.length - 1,
      ),
      note: '${json['note'] ?? ''}',
      at: (json['at'] as num?)?.toInt() ?? 0,
    );
  }
}

class MediaRecord {
  MediaWatchSettings watch;
  final Map<String, SourceMatchRecord> matches;
  final Map<String, Playback> playback;
  StreamPrefs streams;
  Map<String, Object?> ids;
  Map<String, Object?> player;
  Map<String, Object?> reader;
  int? commentsId;
  int? mangaUpdatesId;
  int tab;
  int? latestUnit;
  bool saveProgress;
  String? trackChoice;
  Map<String, bool> skips;
  List<Bookmark> bookmarks;
  List<NovelHighlight> highlights;

  MediaRecord({
    MediaWatchSettings? watch,
    Map<String, SourceMatchRecord>? matches,
    Map<String, Playback>? playback,
    StreamPrefs? streams,
    Map<String, Object?>? ids,
    Map<String, Object?>? player,
    Map<String, Object?>? reader,
    this.commentsId,
    this.mangaUpdatesId,
    this.tab = 0,
    this.latestUnit,
    this.saveProgress = true,
    this.trackChoice,
    Map<String, bool>? skips,
    List<Bookmark>? bookmarks,
    List<NovelHighlight>? highlights,
  }) : skips = skips ?? {},
       bookmarks = bookmarks ?? [],
       highlights = highlights ?? [],
       watch = watch ?? MediaWatchSettings(),
       matches = matches ?? {},
       playback = playback ?? {},
       streams = streams ?? StreamPrefs(),
       ids = ids ?? {},
       player = player ?? {},
       reader = reader ?? {};

  Map<String, Object?> toJson() => {
    'watch': watch.toJson(),
    'matches': {for (final e in matches.entries) e.key: e.value.toJson()},
    'playback': {for (final e in playback.entries) e.key: e.value.toJson()},
    'streams': streams.toJson(),
    'ids': ids,
    'player': player,
    'reader': reader,
    'commentsId': commentsId,
    'mangaUpdatesId': mangaUpdatesId,
    'tab': tab,
    if (latestUnit != null) 'latestUnit': latestUnit,
    'saveProgress': saveProgress,
    'trackChoice': trackChoice,
    'skips': skips,
    'bookmarks': [for (final b in bookmarks) b.toJson()],
    if (highlights.isNotEmpty)
      'highlights': [for (final h in highlights) h.toJson()],
  };

  factory MediaRecord.fromJson(Map<dynamic, dynamic> json) {
    final matches = <String, SourceMatchRecord>{};
    for (final e in _entries(json['matches'])) {
      final match = SourceMatchRecord.fromJson(e.value);
      if (match != null) matches['${e.key}'] = match;
    }
    final playback = <String, Playback>{};
    for (final e in _entries(json['playback'])) {
      final item = Playback.fromJson(e.value);
      if (item != null) playback['${e.key}'] = item;
    }
    return MediaRecord(
      watch: json['watch'] is Map
          ? MediaWatchSettings.fromJson(json['watch'] as Map)
          : null,
      matches: matches,
      playback: playback,
      streams: StreamPrefs.fromJson(json['streams']),
      ids: json['ids'] is Map
          ? Map<String, Object?>.from(json['ids'] as Map)
          : null,
      player: json['player'] is Map
          ? Map<String, Object?>.from(json['player'] as Map)
          : null,
      reader: json['reader'] is Map
          ? Map<String, Object?>.from(json['reader'] as Map)
          : null,
      commentsId: (json['commentsId'] as num?)?.toInt(),
      mangaUpdatesId: (json['mangaUpdatesId'] as num?)?.toInt(),
      tab: (json['tab'] as num?)?.toInt() ?? 0,
      latestUnit: (json['latestUnit'] as num?)?.toInt(),
      saveProgress: json['saveProgress'] != false,
      trackChoice: json['trackChoice'] as String?,
      skips: {
        for (final e in _entries(json['skips']))
          if (e.value is bool) '${e.key}': e.value as bool,
      },
      bookmarks: [
        for (final e
            in json['bookmarks'] is List ? json['bookmarks'] as List : const [])
          ?Bookmark.fromJson(e),
      ],
      highlights: [
        for (final e
            in json['highlights'] is List
                ? json['highlights'] as List
                : const [])
          ?NovelHighlight.fromJson(e),
      ],
    );
  }
}

class MediaRecords {
  MediaRecords._();

  static final _memo = Lru<String, MediaRecord>(64);

  static void reload() => _memo.clear();

  static String key(MediaService service, Media media) =>
      'media/${service.id}/${media.id}';

  static MediaRecord of(MediaService service, Media media) {
    final k = key(service, media);
    final hit = _memo[k];
    if (hit != null) return hit;
    final raw = PrefManager.getCustomVal<Map>(k);
    var record = MediaRecord();
    if (raw != null) {
      try {
        record = MediaRecord.fromJson(raw);
      } catch (e, st) {
        logError('MediaRecord', e, st);
      }
    }
    return _memo[k] = record;
  }

  static void save(MediaService service, Media media) {
    final record = of(service, media);
    PrefManager.setCustomVal<Map>(key(service, media), record.toJson());
  }

  static void reset(MediaService service, Media media) {
    final k = key(service, media);
    _memo.remove(k);
    PrefManager.removeCustomVal(k);
  }
}
