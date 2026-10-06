import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/MediaService.dart';

class StorySeen {
  StorySeen._();

  static String _key(MediaService service) => 'storiesSeen/${service.id}';

  static Set<String> read(MediaService service) => {
    for (final id
        in PrefManager.getCustomVal<List<dynamic>>(_key(service)) ??
            const <dynamic>[])
      id.toString(),
  };

  static void mark(MediaService service, String id) {
    final seen = read(service);
    if (!seen.add(id)) return;
    final ordered = seen.toList()
      ..sort((a, b) => (int.tryParse(a) ?? 0).compareTo(int.tryParse(b) ?? 0));
    final kept = ordered.length > 300
        ? ordered.sublist(ordered.length - 300)
        : ordered;
    PrefManager.setCustomVal<List<String>>(_key(service), kept);
  }
}
