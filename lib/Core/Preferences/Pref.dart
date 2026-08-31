import 'package:get/get.dart';

import 'PrefManager.dart';

/// Storage bucket for a preference. Used as a namespace prefix on the stored key
/// and as a grouping key for backup import/export.
enum PrefLocation { THEME, COMMON, PLAYER, READER, PROTECTED, OTHER }

typedef PrefEncode<T> = Object? Function(T value);
typedef PrefDecode<T> = T Function(Object? raw);

/// A single typed, persisted setting.
///
/// One declaration per setting (see [PrefName]). Read/write synchronously via
/// [value], or bind a shared auto-persisting [Rx] via [rx] — every caller of
/// `somePref.rx` gets the *same* `Rx`, and assigning to it writes through to
/// storage automatically.
class Pref<T> {
  final String key;
  final T defaultValue;
  final PrefLocation location;

  /// Non-null for values that aren't natively storable (enums, objects).
  /// [encode] turns [T] into a primitive/`Map`; [decode] reverses it.
  final PrefEncode<T>? encode;
  final PrefDecode<T>? decode;

  const Pref(this.key, this.defaultValue, this.location)
      : encode = null,
        decode = null;

  const Pref.coded(
    this.key,
    this.defaultValue,
    this.location, {
    required this.encode,
    required this.decode,
  });

  /// Fully-qualified key as stored in Isar, e.g. `THEME/isOled`.
  String get storageKey => '${location.name}/$key';

  T get value => PrefManager.getVal(this);

  set value(T v) => PrefManager.setVal(this, v);

  /// Shared reactive view. Assigning `pref.rx.value = x` persists automatically.
  Rx<T> get rx => PrefManager.rxOf(this);

  void remove() => PrefManager.removeVal(this);
}

/// An enum preference persisted by its `.name`.
Pref<E> enumPref<E extends Enum>(
  String key,
  E defaultValue,
  List<E> values,
  PrefLocation location,
) {
  return Pref<E>.coded(
    key,
    defaultValue,
    location,
    encode: (e) => e.name,
    decode: (raw) => values.firstWhere(
      (e) => e.name == raw,
      orElse: () => defaultValue,
    ),
  );
}

/// A JSON-object preference persisted as a serialized map.
Pref<T> jsonPref<T>(
  String key,
  T defaultValue,
  PrefLocation location, {
  required Map<String, dynamic> Function(T) toJson,
  required T Function(Map<String, dynamic>) fromJson,
}) {
  return Pref<T>.coded(
    key,
    defaultValue,
    location,
    encode: (v) => toJson(v),
    decode: (raw) => raw is Map
        ? fromJson(Map<String, dynamic>.from(raw))
        : defaultValue,
  );
}
