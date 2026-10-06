import 'dart:convert';
import 'dart:math' as math;

import 'package:archive/archive.dart';

import 'ExternalList.dart';

class KotatsuCodec {
  KotatsuCodec._();

  static bool matches(Archive archive) =>
      archive.any((f) => f.name == 'favourites') ||
      (archive.any((f) => f.name == 'categories') &&
          archive.any((f) => f.name == 'history'));

  static List<dynamic> _section(Archive archive, String name) {
    for (final file in archive.files) {
      if (file.name != name) continue;
      try {
        final decoded = jsonDecode(utf8.decode(file.content as List<int>));
        return decoded is List ? decoded : const [];
      } catch (_) {
        return const [];
      }
    }
    return const [];
  }

  static int? _int(Object? v) =>
      v is num ? v.toInt() : (v is String ? int.tryParse(v) : null);

  static ExternalLists parse(Archive archive) {
    final categories = <int, String>{};
    for (final c in _section(archive, 'categories')) {
      if (c is! Map) continue;
      final id = _int(c['category_id'] ?? c['id']);
      if (id != null) categories[id] = (c['title'] as String?) ?? 'Category';
    }

    final byId = <int, Map<String, dynamic>>{};
    final items = <int, ExternalItem>{};
    final names = <int, List<String>>{};
    final lastRead = <int, int>{};
    final readCount = <int, int>{};
    final percent = <int, double>{};

    void remember(Map manga) {
      final id = _int(manga['id']);
      if (id != null) byId[id] = Map<String, dynamic>.from(manga);
    }

    for (final f in _section(archive, 'favourites')) {
      if (f is! Map || f['manga'] is! Map) continue;
      final manga = Map<String, dynamic>.from(f['manga'] as Map);
      remember(manga);
      final id = _int(f['manga_id'] ?? manga['id']);
      if (id == null) continue;
      final cat = categories[_int(f['category_id'])];
      if (cat != null) names.putIfAbsent(id, () => []).add(cat);
    }
    for (final h in _section(archive, 'history')) {
      if (h is! Map) continue;
      final id = _int(h['manga_id']);
      if (id == null) continue;
      if (h['manga'] is Map) remember(h['manga'] as Map);
      lastRead[id] = _int(h['updated_at']) ?? 0;
      percent[id] = (h['percent'] as num?)?.toDouble() ?? 0;
      readCount[id] = math.max(1, _int(h['chapters_read']) ?? 0);
    }

    for (final entry in byId.entries) {
      final m = entry.value;
      final tags = <String>[
        for (final t in (m['tags'] as List? ?? const []))
          if (t is Map && t['title'] != null) t['title'].toString(),
      ];
      final chapters = (m['chapters'] as List?)?.length ?? 0;
      items[entry.key] = ExternalItem(
        title: ((m['title'] as String?) ?? 'Unknown manga').trim(),
        url: (m['url'] as String?) ?? '',
        anime: false,
        cover: (m['large_cover_url'] ?? m['cover_url']) as String?,
        author: m['author'] as String?,
        genres: tags,
        status: _status(m['state'] as String?),
        total: chapters,
        read: _read(readCount[entry.key], percent[entry.key], chapters),
        categories: names[entry.key] ?? const [],
        lastUpdated: lastRead[entry.key] ?? 0,
      );
    }
    return ExternalLists(
      format: ExternalFormat.kotatsu,
      items: items.values.toList(),
      categories: categories.values.toList(),
    );
  }

  static int _read(int? count, double? percent, int total) {
    if (count == null) return 0;
    if (count > 1 || total == 0 || percent == null || percent <= 0) {
      return count;
    }
    return math.max(1, (percent.clamp(0.0, 1.0) * total).round());
  }

  static int _status(String? state) => switch (state?.toUpperCase()) {
    'ONGOING' => 1,
    'FINISHED' => 2,
    'ABANDONED' => 5,
    'PAUSED' => 6,
    _ => 0,
  };

  static String _state(int status) => switch (status) {
    1 => 'ONGOING',
    2 || 3 || 4 => 'FINISHED',
    5 => 'ABANDONED',
    6 => 'PAUSED',
    _ => 'UPCOMING',
  };

  static List<int> write(List<ExternalItem> items, {DateTime? now}) {
    final stamp = (now ?? DateTime.now()).millisecondsSinceEpoch;
    final manga = [
      for (final i in items)
        if (!i.anime) i,
    ];
    final names = {for (final i in manga) ...i.categories}.toList();
    final categories = [
      for (var i = 0; i < names.length; i++)
        {
          'category_id': i + 1,
          'created_at': stamp,
          'sort_key': i,
          'title': names[i],
          'order': 'NEWEST',
          'track': true,
          'show_in_lib': true,
          'deleted_at': 0,
        },
    ];
    final favourites = <Map<String, dynamic>>[];
    final history = <Map<String, dynamic>>[];
    for (var index = 0; index < manga.length; index++) {
      final item = manga[index];
      final id = (item.url.hashCode & 0x7fffffff) + index;
      final json = {
        'id': id,
        'title': item.title,
        'alt_title': null,
        'url': item.url.isEmpty ? item.title : item.url,
        'public_url': item.url,
        'rating': -1,
        'content_rating': 'SAFE',
        'nsfw': false,
        'cover_url': item.cover ?? '',
        'large_cover_url': item.cover,
        'state': _state(item.status),
        'author': item.author,
        'source': 'DARTOTSU',
        'tags': [
          for (final g in item.genres)
            {
              'id': g.hashCode & 0x7fffffff,
              'title': g,
              'key': g,
              'source': 'DARTOTSU',
            },
        ],
      };
      final cats = item.categories.isEmpty
          ? [null]
          : [for (final c in item.categories) c];
      for (final cat in cats) {
        favourites.add({
          'manga_id': id,
          'category_id': cat == null ? 0 : names.indexOf(cat) + 1,
          'sort_key': index,
          'pinned': false,
          'created_at': item.dateAdded == 0 ? stamp : item.dateAdded,
          'deleted_at': 0,
          'manga': json,
        });
      }
      if (item.read > 0) {
        history.add({
          'manga_id': id,
          'created_at': item.dateAdded == 0 ? stamp : item.dateAdded,
          'updated_at': item.lastUpdated == 0 ? stamp : item.lastUpdated,
          'chapter_id': 0,
          'page': 0,
          'scroll': 0.0,
          'percent': item.total > 0 ? item.read / item.total : 0.0,
          'chapters_read': item.read,
          'deleted_at': 0,
          'manga': json,
        });
      }
    }
    final archive = Archive()
      ..addFile(
        ArchiveFile.bytes(
          'index',
          utf8.encode(
            jsonEncode([
              {'app_version': 700, 'created_at': stamp},
            ]),
          ),
        ),
      )
      ..addFile(
        ArchiveFile.bytes('categories', utf8.encode(jsonEncode(categories))),
      )
      ..addFile(
        ArchiveFile.bytes('favourites', utf8.encode(jsonEncode(favourites))),
      )
      ..addFile(ArchiveFile.bytes('history', utf8.encode(jsonEncode(history))));
    return ZipEncoder().encode(archive);
  }
}
