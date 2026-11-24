import '../../../Logger.dart';
import 'Client.dart';

typedef LibraryGet = Future<Map<String, dynamic>> Function(
  String path, {
  Map<String, String>? query,
  Map<String, List<String>>? multi,
});

const _changesPath = '/v2/my/library/changes';
const _seriesBatch = 50;
const _fullEvery = Duration(days: 7);
const _kept = {
  'id',
  'state',
  'merged_with',
  'canonical_url',
  'title',
  'native_title',
  'romanized_title',
  'titles',
  'authors',
  'artists',
  'published',
  'status',
  'is_licensed',
  'has_anime',
  'content_rating',
  'type',
  'original_language',
  'rating',
  'final_volume',
  'total_chapters',
  'genres',
};

Map<String, dynamic> _slim(Map<String, dynamic> series) {
  final out = {
    for (final e in series.entries)
      if (_kept.contains(e.key)) e.key: e.value,
  };
  final cover = series['cover'];
  if (cover is Map) {
    out['cover'] = {
      for (final key in const ['x350', 'x250', 'raw'])
        if (cover[key] != null) key: cover[key],
    };
  }
  final source = series['source'];
  if (source is Map) {
    out['source'] = {
      for (final key in const ['anilist', 'my_anime_list'])
        if (source[key] is Map) key: {'id': (source[key] as Map)['id']},
    };
  }
  final current =
      (((series['popularity'] as Map?)?['global']) as Map?)?['current'];
  if (current != null) {
    out['popularity'] = {
      'global': {'current': current},
    };
  }
  return out;
}

int? _id(Object? v) => v is num ? v.toInt() : int.tryParse('$v');

class MangaBakaLibraryStore {
  final LibraryGet get;
  final Map<String, dynamic>? Function() read;
  final void Function(Map<String, dynamic> value) write;
  final void Function() erase;

  MangaBakaLibraryStore({
    required this.get,
    required this.read,
    required this.write,
    required this.erase,
  });

  final _entries = <int, Map<String, dynamic>>{};
  final _series = <int, Map<String, dynamic>>{};
  String? _cursor;
  DateTime? _fullAt;
  final _absent = <int>{};
  bool _restored = false;

  void forget() {
    _entries.clear();
    _series.clear();
    _cursor = null;
    _fullAt = null;
    _absent.clear();
    _restored = true;
    erase();
  }

  void _restore() {
    if (_restored) return;
    _restored = true;
    final raw = read();
    if (raw == null) return;
    try {
      _cursor = raw['cursor'] as String?;
      _fullAt = DateTime.fromMillisecondsSinceEpoch(
        (raw['fullAt'] as num?)?.toInt() ?? 0,
      );
      for (final e in (raw['entries'] as Map? ?? const {}).entries) {
        final id = _id(e.key);
        if (id != null) {
          _entries[id] = Map<String, dynamic>.from(e.value as Map);
        }
      }
      for (final e in (raw['series'] as Map? ?? const {}).entries) {
        final id = _id(e.key);
        if (id != null) _series[id] = Map<String, dynamic>.from(e.value as Map);
      }
    } catch (e, st) {
      logError('MangaBakaLibraryStore', e, st);
      _entries.clear();
      _series.clear();
      _cursor = null;
    }
  }

  void _save() {
    write({
      'cursor': _cursor,
      'fullAt': (_fullAt ?? DateTime.now()).millisecondsSinceEpoch,
      'entries': {for (final e in _entries.entries) '${e.key}': e.value},
      'series': {for (final e in _series.entries) '${e.key}': e.value},
    });
  }

  bool get _due =>
      _cursor == null ||
      _fullAt == null ||
      DateTime.now().difference(_fullAt!) > _fullEvery;

  void _reset() {
    _entries.clear();
    _series.clear();
    _cursor = null;
    _fullAt = DateTime.now();
  }

  Future<List<Map<String, dynamic>>> rows() async {
    _restore();
    if (_due) _reset();
    try {
      await _pull();
    } on MangaBakaException catch (e) {
      final cursorProblem = const {400, 409, 410, 422}.contains(e.status);
      if (!cursorProblem || _cursor == null) rethrow;
      logError('MangaBakaLibraryStore', e, StackTrace.current);
      _reset();
      await _pull();
    }
    await _fillSeries();
    _save();
    return [
      for (final e in _entries.values)
        if (_series[_id(e['series_id'])] case final series?)
          {...e, 'Series': series},
    ];
  }

  Future<void> _pull() async {
    var cursor = _cursor;
    for (var page = 0; page < 400; page++) {
      final body = await get(
        _changesPath,
        query: {'limit': '250', 'cursor': ?cursor},
      );
      for (final change in (body['data'] as List?) ?? const []) {
        if (change is Map) _apply(change.cast<String, dynamic>());
      }
      final pagination = body['pagination'];
      final next = pagination is Map ? pagination['cursor'] as String? : null;
      if (next != null) cursor = next;
      if (pagination is! Map || pagination['more'] != true) break;
    }
    _cursor = cursor;
  }

  void _apply(Map<String, dynamic> change) {
    if (change['type'] != 'entry') return;
    final current = change['current'];
    final previous = change['previous'];
    final entry = current is Map
        ? current.cast<String, dynamic>()
        : previous is Map
        ? previous.cast<String, dynamic>()
        : null;
    final id = _id(entry?['id']);
    if (entry == null || id == null) return;
    if (change['action'] == 'upsert' && current is Map) {
      _entries[id] = Map<String, dynamic>.from(entry);
    } else {
      _entries.remove(id);
    }
  }

  Future<void> _fillSeries() async {
    final wanted = {for (final e in _entries.values) ?_id(e['series_id'])};
    _series.removeWhere((id, _) => !wanted.contains(id));
    final missing = [
      for (final id in wanted)
        if (!_series.containsKey(id) && !_absent.contains(id)) id,
    ];
    for (var i = 0; i < missing.length; i += _seriesBatch) {
      final chunk = missing.skip(i).take(_seriesBatch).toList();
      final body = await get(
        '/series/batch',
        multi: {
          'id': [for (final id in chunk) '$id'],
        },
      );
      for (final s in (body['data'] as List?) ?? const []) {
        if (s is! Map) continue;
        final series = s.cast<String, dynamic>();
        final id = _id(series['id']);
        if (id != null) _series[id] = _slim(series);
      }
      _absent.addAll(chunk.where((id) => !_series.containsKey(id)));
    }
  }
}
