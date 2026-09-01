import '../../Logger.dart';
import '../Preferences/PrefManager.dart';
import 'Model/Media.dart';

typedef SectionsLoader = Future<Map<String, List<Media>>> Function();

/// Disk-backed last-known result for a `Map<String, List<Media>>` screen
/// (home / anime / manga). Read is synchronous so a screen can paint cached
/// content on the first frame, then revalidate over the network.
class SectionCache {
  final String id;
  final SectionsLoader loader;

  /// Only the first [_cap] media per section are persisted — enough to fill
  /// the visible rail; the fresh fetch restores the rest.
  static const _cap = 30;

  const SectionCache(this.id, this.loader);

  String get _key => 'sections/$id';

  Map<String, List<Media>>? read() {
    final raw = loadCustomData<Map<String, dynamic>>(_key);
    if (raw == null || raw.isEmpty) return null;
    try {
      final out = <String, List<Media>>{};
      raw.forEach((section, list) {
        out[section] = [
          for (final e in list as List)
            Media.fromJson(Map<String, dynamic>.from(e as Map)),
        ];
      });
      return out;
    } catch (e) {
      logger('SectionCache($id) read failed: $e');
      return null;
    }
  }

  void write(Map<String, List<Media>> data) {
    try {
      final json = <String, dynamic>{};
      data.forEach((section, list) {
        json[section] = [for (final m in list.take(_cap)) m.toJson()];
      });
      saveCustomData<Map<String, dynamic>>(_key, json);
    } catch (e) {
      logger('SectionCache($id) write failed: $e');
    }
  }

  /// Fetch fresh, persist on success.
  Future<Map<String, List<Media>>> fetch() async {
    final data = await loader();
    write(data);
    return data;
  }
}
