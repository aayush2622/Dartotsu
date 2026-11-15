import 'dart:convert';

import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as html;

import '../../NetworkManager/NetworkManager.dart';
import '../../State/State.dart';
import 'SharedRequests.dart';

const chiakiHost = 'https://chiaki.site';

const _types = {
  1: 'TV',
  2: 'OVA',
  3: 'Movie',
  4: 'Special',
  6: 'Music',
  7: 'CM',
  8: 'PV',
};

class ChiakiEntry {
  final int malId;
  final int? anilistId;
  final int type;
  final int episodes;
  final int durationSeconds;
  final String title;
  final String? altTitle;
  final List<String> facts;
  final String? cover;
  final Map<int, String> related;

  const ChiakiEntry({
    required this.malId,
    required this.type,
    required this.title,
    this.anilistId,
    this.episodes = 0,
    this.durationSeconds = 0,
    this.altTitle,
    this.facts = const [],
    this.cover,
    this.related = const {},
  });

  String get typeLabel => _types[type] ?? '';
}

class ChiakiOrder {
  final String title;
  final String url;
  final List<ChiakiEntry> entries;

  const ChiakiOrder({
    required this.title,
    required this.url,
    required this.entries,
  });
}

String chiakiOrderUrl(int malId) => '$chiakiHost/?/tools/watch_order/id/$malId';

ChiakiOrder? parseChiakiOrder(String body, {required int malId}) {
  final doc = html.parse(body);
  final rows = doc.querySelectorAll('#wo_list tr[data-id]');
  if (rows.isEmpty) return null;
  final heading = doc.querySelector('h2')?.text.trim() ?? '';
  return ChiakiOrder(
    title: heading,
    url: chiakiOrderUrl(malId),
    entries: [for (final row in rows) ?_entry(row)],
  );
}

ChiakiEntry? _entry(dom.Element row) {
  final malId = int.tryParse(row.attributes['data-id'] ?? '');
  final title = row.querySelector('.wo_title')?.text.trim() ?? '';
  if (malId == null || title.isEmpty) return null;
  return ChiakiEntry(
    malId: malId,
    anilistId: int.tryParse(row.attributes['data-anilist-id'] ?? ''),
    type: int.tryParse(row.attributes['data-type'] ?? '') ?? 0,
    episodes: int.tryParse(row.attributes['data-eps'] ?? '') ?? 0,
    durationSeconds: int.tryParse(row.attributes['data-duration'] ?? '') ?? 0,
    title: title,
    altTitle: _text(row.querySelector('span.uk-text-small')),
    facts: _facts(row.querySelector('.wo_meta')),
    cover: _cover(row.querySelector('.wo_avatar_big')),
    related: _related(row.attributes['data-related']),
  );
}

String? _text(dom.Element? element) {
  final text = element?.text.trim();
  return text == null || text.isEmpty ? null : text;
}

List<String> _facts(dom.Element? meta) {
  if (meta == null) return const [];
  final buffer = StringBuffer();
  for (final node in meta.nodes) {
    if (node is dom.Text) {
      buffer.write(node.text);
    } else if (node is dom.Element && node.classes.contains('wo_rating')) {
      buffer.write('|${node.text}|');
    }
  }
  return [
    for (final part in buffer.toString().split('|'))
      if (part.trim().isNotEmpty) part.trim().replaceAll(RegExp(r'\s+'), ' '),
  ];
}

String? _cover(dom.Element? avatar) {
  final style = avatar?.attributes['style'] ?? '';
  final path = RegExp(r"url\('([^']+)'\)").firstMatch(style)?.group(1);
  if (path == null) return null;
  return path.startsWith('http') ? path : '$chiakiHost/$path';
}

Map<int, String> _related(String? raw) {
  if (raw == null || raw.isEmpty) return const {};
  try {
    final data = jsonDecode(raw);
    if (data is! Map) return const {};
    return {
      for (final e in data.entries) ?int.tryParse('${e.key}'): '${e.value}',
    };
  } catch (_) {
    return const {};
  }
}

class Chiaki {
  Chiaki._();

  static final _cache = ResponseCache(40);

  static Future<ChiakiOrder?> watchOrder(int malId) async {
    final body = await _cache.fetch('order/$malId', () async {
      final res = await find<NetworkManager>().get(
        chiakiOrderUrl(malId),
        headers: const {'User-Agent': 'Dartotsu'},
        decodeJson: false,
      );
      if (!res.isOk) {
        throw StateError('chiaki.site HTTP ${res.statusCode}');
      }
      return '${res.data}';
    }, ttl: const Duration(hours: 6)) as String;
    return parseChiakiOrder(body, malId: malId);
  }
}
