import '../Preferences/PrefManager.dart';

Pref<Map<String, bool>> layoutPref(
  String key,
  Map<String, bool> defaults, {
  Map<String, List<String>> splits = const {},
}) => Pref<Map<String, bool>>.coded(
  key,
  defaults,
  PrefLocation.OTHER,
  encode: (v) => Map<String, dynamic>.from(v),
  decode: (raw) {
    if (raw is! Map) return defaults;
    final stored = {
      for (final e in raw.entries) e.key.toString(): e.value == true,
    };
    for (final s in splits.entries) {
      final old = stored[s.key];
      if (old == null) continue;
      for (final name in s.value) {
        stored.putIfAbsent(name, () => old);
      }
    }
    return {
      ...stored,
      for (final e in defaults.entries)
        if (!stored.containsKey(e.key)) e.key: e.value,
    };
  },
);

List<T> applyLayout<T>(
  List<T> all,
  String Function(T) titleOf,
  Map<String, bool> layout,
) {
  final byTitle = {for (final item in all) titleOf(item): item};
  return [
    for (final e in layout.entries)
      if (e.value && byTitle.containsKey(e.key)) byTitle[e.key]!,
    for (final item in all)
      if (!layout.containsKey(titleOf(item))) item,
  ];
}
