import 'dart:io';
import 'dart:typed_data';

import 'ExternalList.dart';
import 'Proto.dart';

class TachiyomiCodec {
  TachiyomiCodec._();

  static ExternalLists parse(List<int> gzipped) {
    final root = ProtoMessage.parse(GZipCodec().decode(gzipped));
    final aniyomi =
        root.has(3) || root.has(4) || root.has(501) || root.has(502);

    final mangaCats = _categories(root.messages(2));
    final animeCats = _categories([
      ...root.messages(502),
      ...root.messages(4),
    ], fallback: mangaCats);

    final items = <ExternalItem>[
      for (final m in root.messages(1)) _manga(m, mangaCats),
      if (aniyomi) ...[
        for (final a in [...root.messages(501), ...root.messages(3)])
          _anime(a, animeCats),
      ],
    ];
    return ExternalLists(
      format: aniyomi ? ExternalFormat.aniyomi : ExternalFormat.mihon,
      items: items,
      categories: {
        ...mangaCats.values,
        if (aniyomi) ...animeCats.values,
      }.toList(),
      sourceNames: _sourceNames([
        ...root.messages(101),
        if (aniyomi) ...root.messages(102),
      ]),
    );
  }

  static Map<int, String> _sourceNames(List<ProtoMessage> messages) => {
    for (final m in messages)
      if (m.int64(2) != 0 && m.string(1).trim().isNotEmpty)
        m.int64(2): m.string(1).trim(),
  };

  static Map<int, String> _categories(
    List<ProtoMessage> messages, {
    Map<int, String> fallback = const {},
  }) {
    if (messages.isEmpty) return fallback;
    final out = <int, String>{};
    for (var i = 0; i < messages.length; i++) {
      final m = messages[i];
      final name = m.string(1).trim().isEmpty
          ? 'Category ${i + 1}'
          : m.string(1).trim();
      out[m.int64(2)] = name;
      final id = m.int64(3);
      if (id != 0) out.putIfAbsent(id, () => name);
    }
    return out;
  }

  static List<String> _names(ProtoMessage m, Map<int, String> categories) => [
    for (final order in m.ints(17))
      if (categories[order] != null) categories[order]!,
  ];

  static ExternalItem _manga(ProtoMessage m, Map<int, String> categories) {
    var read = 0;
    var lastNumber = 0.0;
    var lastUpdated = m.int64(106);
    final chapters = m.messages(16);
    for (final c in chapters) {
      if (c.boolean(4)) {
        read++;
        lastNumber = lastNumber < c.float(9) ? c.float(9) : lastNumber;
        final at = c.int64(11);
        if (at > lastUpdated) lastUpdated = at;
      }
    }
    for (final h in m.messages(104)) {
      final at = h.int64(2);
      if (at > lastUpdated) lastUpdated = at;
    }
    return ExternalItem(
      title: m.string(3).trim().isEmpty ? 'Unknown manga' : m.string(3).trim(),
      url: m.string(2),
      source: m.int64(1),
      anime: false,
      cover: m.string(9).isEmpty ? null : m.string(9),
      description: m.string(6).isEmpty ? null : m.string(6),
      author: m.string(5).isEmpty ? null : m.string(5),
      genres: m.strings(7),
      status: m.int64(8),
      total: chapters.length,
      read: read,
      lastNumber: lastNumber,
      categories: _names(m, categories),
      dateAdded: m.int64(13),
      lastUpdated: lastUpdated,
    );
  }

  static ExternalItem _anime(ProtoMessage m, Map<int, String> categories) {
    var seen = 0;
    var lastNumber = 0.0;
    var lastUpdated = m.int64(106);
    final episodes = m.messages(16);
    for (final e in episodes) {
      if (e.boolean(4)) {
        seen++;
        lastNumber = lastNumber < e.float(9) ? e.float(9) : lastNumber;
        final at = e.int64(11);
        if (at > lastUpdated) lastUpdated = at;
      }
    }
    for (final h in m.messages(104)) {
      final at = h.int64(2);
      if (at > lastUpdated) lastUpdated = at;
    }
    return ExternalItem(
      title: m.string(3).trim().isEmpty ? 'Unknown anime' : m.string(3).trim(),
      url: m.string(2),
      source: m.int64(1),
      anime: true,
      cover: m.string(9).isEmpty ? null : m.string(9),
      description: m.string(6).isEmpty ? null : m.string(6),
      author: m.string(5).isEmpty ? null : m.string(5),
      genres: m.strings(7),
      status: m.int64(8),
      total: episodes.length,
      read: seen,
      lastNumber: lastNumber,
      categories: _names(m, categories),
      dateAdded: m.int64(13),
      lastUpdated: lastUpdated,
    );
  }

  static Uint8List write(
    List<ExternalItem> items, {
    required bool aniyomi,
    DateTime? now,
  }) {
    final stamp = (now ?? DateTime.now()).millisecondsSinceEpoch;
    final root = ProtoWriter();

    List<String> namesOf(bool anime) => {
      for (final i in items)
        if (i.anime == anime) ...i.categories,
    }.toList();

    void writeCategories(int field, List<String> names) {
      for (var i = 0; i < names.length; i++) {
        final c = ProtoWriter()
          ..string(1, names[i])
          ..int64(2, i)
          ..int64(3, i + 1);
        root.message(field, c);
      }
    }

    for (final item in items.where((i) => !i.anime)) {
      root.message(1, _writeItem(item, namesOf(false), stamp));
    }
    writeCategories(2, namesOf(false));
    if (aniyomi) {
      for (final item in items.where((i) => i.anime)) {
        root.message(501, _writeItem(item, namesOf(true), stamp));
      }
      writeCategories(502, namesOf(true));
      root.boolean(500, false);
    }
    return Uint8List.fromList(GZipCodec().encode(root.toBytes()));
  }

  static ProtoWriter _writeItem(
    ExternalItem item,
    List<String> allCategories,
    int stamp,
  ) {
    final m = ProtoWriter()
      ..int64(1, item.source)
      ..string(2, item.url.isEmpty ? item.title : item.url)
      ..string(3, item.title);
    if (item.author != null) m.string(5, item.author!);
    if (item.description != null) m.string(6, item.description!);
    for (final g in item.genres) {
      m.string(7, g);
    }
    m.int64(8, item.status);
    if (item.cover != null) m.string(9, item.cover!);
    m.int64(13, item.dateAdded == 0 ? stamp : item.dateAdded);

    final total = item.total > item.read ? item.total : item.read;
    for (var n = 1; n <= total; n++) {
      final isRead = n <= item.read;
      final unit = ProtoWriter()
        ..string(
          1,
          '${item.url.isEmpty ? item.title : item.url}/${item.anime ? 'ep' : 'ch'}-$n',
        )
        ..string(2, '${item.anime ? 'Episode' : 'Chapter'} $n');
      if (item.anime) {
        unit.boolean(4, isRead);
      } else {
        unit.boolean(4, isRead);
      }
      unit
        ..float(9, n.toDouble())
        ..int64(10, total - n)
        ..int64(
          11,
          isRead ? (item.lastUpdated == 0 ? stamp : item.lastUpdated) : 0,
        );
      m.message(16, unit);
    }
    for (final name in item.categories) {
      final index = allCategories.indexOf(name);
      if (index >= 0) m.int64(17, index);
    }
    m
      ..boolean(100, true)
      ..int64(106, item.lastUpdated == 0 ? stamp : item.lastUpdated);
    return m;
  }
}
