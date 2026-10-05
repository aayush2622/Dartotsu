import 'package:flutter/foundation.dart';

import '../../Logger.dart';
import '../Preferences/PrefManager.dart';
import 'Model/Media.dart';

/// Disk-backed last-known result for a `Map<String, List<Media>>` screen
/// (home / anime / manga). Decoding and encoding run on a worker isolate so
/// painting cached content and persisting fresh content never janks a frame.
class SectionCache {
  final String id;

  /// Only the first [_cap] media per section are persisted — enough to fill
  /// the visible rail; the fresh fetch restores the rest.
  static const _cap = 30;

  const SectionCache(this.id);

  String get _key => 'sections/$id';

  Future<Map<String, List<Media>>?> read() async {
    final raw = loadCustomData<Map<String, dynamic>>(_key);
    if (raw == null || raw.isEmpty) return null;
    try {
      return await compute(_decode, raw);
    } catch (e) {
      logger('SectionCache($id) read failed: $e');
      return null;
    }
  }

  Future<void> write(Map<String, List<Media>> data) async {
    try {
      final capped = {
        for (final e in data.entries) e.key: e.value.take(_cap).toList(),
      };
      final json = await compute(_encode, capped);
      saveCustomData<Map<String, dynamic>>(_key, json);
    } catch (e) {
      logger('SectionCache($id) write failed: $e');
    }
  }
}

Map<String, List<Media>> _decode(Map<String, dynamic> raw) => {
  for (final e in raw.entries)
    e.key: [
      for (final item in e.value as List)
        Media.fromJson(Map<String, dynamic>.from(item as Map)),
    ],
};

Map<String, dynamic> _encode(Map<String, List<Media>> data) => {
  for (final e in data.entries) e.key: [for (final m in e.value) m.toJson()],
};
