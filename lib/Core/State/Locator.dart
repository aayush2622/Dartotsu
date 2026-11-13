import 'AppController.dart';
import 'GetBridge.dart';
import 'StateLog.dart';

class _Entry {
  Object? instance;
  Object Function()? builder;
  final bool permanent;
  final bool fenix;
  bool building = false;

  _Entry({
    this.instance,
    this.builder,
    this.permanent = false,
    this.fenix = false,
  });
}

final _entries = <Object, _Entry>{};

void _init(Object made) {
  if (made is AppController) made.onInit();
  StateLog.log('Instance "${made.runtimeType}" has been initialized');
}

Object _key<T>(String? tag) => tag == null ? T : (T, tag);

const _slowBuild = Duration(milliseconds: 25);

final _building = <Object>[];

Object _create(_Entry entry, Object key) {
  if (entry.building) {
    throw StateError(
      'Circular dependency while building "$key": '
      '${[..._building, key].join(' -> ')}',
    );
  }
  entry.building = true;
  _building.add(key);
  final timer = StateLog.enabled ? (Stopwatch()..start()) : null;
  final Object made;
  try {
    made = entry.builder!();
  } finally {
    entry.building = false;
    _building.removeLast();
  }
  if (!entry.fenix) entry.builder = null;
  entry.instance = made;
  StateLog.log('Instance "${made.runtimeType}" has been created');
  _init(made);
  if (timer != null && timer.elapsed >= _slowBuild) {
    StateLog.log(
      'Instance "${made.runtimeType}" took ${timer.elapsedMilliseconds} ms '
      'to build, dependencies included',
    );
  }
  return made;
}

/// Returns the registered instance, building it first if it was registered
/// lazily. Types the extension bridge registers itself are found too.
T find<T>({String? tag}) {
  final key = _key<T>(tag);
  final entry = _entries[key];
  if (entry != null) {
    return (entry.instance ?? _create(entry, key)) as T;
  }
  final foreign = foreignFind<T>(tag: tag);
  if (foreign != null) return foreign;
  throw StateError('"$T"${tag == null ? '' : ' ($tag)'} is not registered');
}

/// Like [find] but null when nothing is registered. A lazy registration is
/// still built; use [findBuilt] to leave it alone.
T? tryFind<T>({String? tag}) {
  final key = _key<T>(tag);
  final entry = _entries[key];
  if (entry != null) return (entry.instance ?? _create(entry, key)) as T;
  return foreignFind<T>(tag: tag);
}

/// The instance only if it already exists; a lazy registration is not built.
/// For "tell it if it is there" calls (reload after a restore, a refresh
/// signal), where constructing the controller just to poke it would be wrong.
T? findBuilt<T>({String? tag}) {
  final entry = _entries[_key<T>(tag)];
  if (entry != null) return entry.instance as T?;
  return foreignFind<T>(tag: tag);
}

bool isBuilt<T>({String? tag}) => findBuilt<T>(tag: tag) != null;

/// Registers [dependency] and initialises it. A second `put` of the same type
/// keeps the first instance.
T put<T>(T dependency, {String? tag, bool permanent = false}) {
  final key = _key<T>(tag);
  final existing = _entries[key];
  if (existing != null) {
    return (existing.instance ?? _create(existing, key)) as T;
  }
  _entries[key] = _Entry(instance: dependency, permanent: permanent);
  StateLog.log('Instance "${dependency.runtimeType}" has been created');
  _init(dependency as Object);
  return dependency;
}

/// Registers a builder that runs on first [find] — genuinely lazy. With
/// [fenix] the instance is rebuilt after it is deleted.
void lazyPut<T>(T Function() builder, {String? tag, bool fenix = false}) {
  final key = _key<T>(tag);
  if (_entries.containsKey(key)) return;
  _entries[key] = _Entry(builder: () => builder() as Object, fenix: fenix);
  StateLog.trace(() => 'Lazy instance "$T" registered');
}

T getOrPut<T>(T dependency, {String? tag, bool permanent = false}) =>
    isRegistered<T>(tag: tag)
    ? find<T>(tag: tag)
    : put<T>(dependency, tag: tag, permanent: permanent);

T getOrLazyPut<T>(T Function() builder, {String? tag, bool fenix = false}) {
  lazyPut<T>(builder, tag: tag, fenix: fenix);
  return find<T>(tag: tag);
}

/// Closes and unregisters. Permanent entries stay.
void delete<T>({String? tag}) {
  final key = _key<T>(tag);
  final entry = _entries[key];
  if (entry == null || entry.permanent) return;
  final instance = entry.instance;
  if (instance is AppController) {
    StateLog.log('"${instance.runtimeType}" onClose() called');
    instance.onClose();
  }
  entry.instance = null;
  if (!entry.fenix) _entries.remove(key);
  StateLog.log('"${instance.runtimeType}" deleted from memory');
}

bool isRegistered<T>({String? tag}) =>
    _entries.containsKey(_key<T>(tag)) || foreignFind<T>(tag: tag) != null;
