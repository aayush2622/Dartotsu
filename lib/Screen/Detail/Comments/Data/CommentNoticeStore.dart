import '../../../../Logger.dart';

import 'dart:convert';

import '../../../../Core/Preferences/PrefManager.dart';
import 'CommentModels.dart';

class CommentNoticeStore {
  CommentNoticeStore._();

  static const _key = 'commentNoticeStore';
  static const _cap = 30;

  static List<CommentNotice> load() {
    final raw = PrefManager.getCustomVal<String>(
      _key,
      location: PrefLocation.CACHE,
    );
    if (raw == null || raw.isEmpty) return [];
    try {
      return [
        for (final e in jsonDecode(raw) as List)
          if (e is Map) CommentNotice.fromJson(Map<String, dynamic>.from(e)),
      ];
    } catch (e, st) {
      logError('CommentNoticeStore', e, st);
      return [];
    }
  }

  static List<CommentNotice> merge(
    List<CommentNotice> stored,
    List<CommentNotice> incoming,
  ) {
    final byKey = {for (final n in stored) n.key: n};
    for (final n in incoming) {
      byKey[n.key] =
          byKey[n.key]?.copyWith(mediaTitle: n.mediaTitle, cover: n.cover) ?? n;
    }
    final all = byKey.values.toList()
      ..sort((a, b) {
        final byTime = b.receivedAt.compareTo(a.receivedAt);
        return byTime != 0 ? byTime : b.id.compareTo(a.id);
      });
    return all.take(_cap).toList();
  }

  static void save(List<CommentNotice> list) =>
      PrefManager.setCustomVal<String>(
        _key,
        jsonEncode([for (final n in list) n.toJson()]),
        location: PrefLocation.CACHE,
      );
}
