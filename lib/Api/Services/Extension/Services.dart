import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Functions/SnackBar.dart';

const extensionServiceId = 'extension';

ItemType itemTypeOf(MediaType type) => switch (type) {
  MediaType.manga => ItemType.manga,
  MediaType.novel => ItemType.novel,
  _ => ItemType.anime,
};

ItemType itemTypeFor({required bool anime}) =>
    anime ? ItemType.anime : ItemType.manga;

Pref<List<String>> mutedSourcesPref(String serviceId, ItemType type) => Pref(
  'extensionMutedSources/$serviceId/${type.name}',
  const [],
  PrefLocation.OTHER,
);

const extensionHideNsfwPref = Pref(
  'extensionHideNsfw',
  false,
  PrefLocation.OTHER,
);

bool _allowed(Source source) =>
    !source.isPlaceholder &&
    !(extensionHideNsfwPref.value && (source.isNsfw ?? false));

const extensionDefaultFeedPref = Pref(
  'extensionDefaultFeed',
  'popular',
  PrefLocation.OTHER,
);

const extensionReadTypePref = Pref(
  'extensionReadType',
  'manga',
  PrefLocation.OTHER,
);

const extensionFirstTypePref = Pref(
  'extensionFirstType',
  'anime',
  PrefLocation.OTHER,
);

MediaType extensionFirstType() => switch (extensionFirstTypePref.rx.value) {
  'manga' => MediaType.manga,
  'novel' => MediaType.novel,
  _ => MediaType.anime,
};

List<MediaType> extensionTabTypes() =>
    {extensionFirstType(), extensionReadType()}.toList();

MediaType extensionReadType() => extensionReadTypePref.rx.value == 'novel'
    ? MediaType.novel
    : MediaType.manga;

List<Extension> extensionServicesFor(ItemType type) =>
    tryFind<ExtensionManager>()?.managers
        .where((e) => e.supports(type))
        .toList() ??
    const [];

Extension? extensionServiceFor(ItemType type) {
  final manager = tryFind<ExtensionManager>();
  if (manager == null) return null;
  final current = manager.current[type];
  if (current != null && current.supports(type)) return current;
  return extensionServicesFor(type).firstOrNull;
}

Future<void> setExtensionService(ItemType type, String id) async {
  final error = await tryFind<ExtensionManager>()?.switchManager(type, id);
  if (error == null) return;
  final name =
      extensionServicesFor(type).firstWhereOrNull((e) => e.id == id)?.name ??
      id;
  snackString(getString.extensionServiceFailed(name, error));
}

List<Source> installedSources(ItemType type) =>
    extensionServiceFor(type)?.state(type).installed.value ?? const [];

Source? installedSourceById(String id) {
  for (final type in ItemType.values) {
    for (final s in installedSources(type)) {
      if (s.id == id && !s.isPlaceholder) return s;
    }
  }
  return null;
}

List<Source> watchSources(ItemType type) {
  final extension = extensionServiceFor(type);
  if (extension == null) return const [];
  final state = extension.state(type);
  final languages = state.selectedLanguages;
  final saved = PrefName.extensionOrder(extension.name, type.name).value;
  final order = {for (final (i, id) in saved.indexed) id: i};
  final list = [
    for (final s in state.installed.value)
      if ((languages.isEmpty || languages.contains(s.lang)) && _allowed(s)) s,
  ];
  if (order.isNotEmpty) {
    mergeSort<Source>(
      list,
      compare: (a, b) =>
          (order[a.id] ?? 1 << 30).compareTo(order[b.id] ?? 1 << 30),
    );
  }
  return list;
}

final _langSuffix = RegExp(
  r'\s*[\(\[]\s*[a-z]{2,3}(?:[-_][a-z0-9]+)?\s*[\)\]]$',
);

String _sourceGroup(Source source) {
  final name = (source.name ?? '')
      .trim()
      .toLowerCase()
      .replaceFirst(_langSuffix, '')
      .trim();
  return name.isEmpty ? 'id:${source.id}' : name;
}

List<Source> _onePerName(List<Source> sources) {
  final groups = <String, List<Source>>{};
  for (final s in sources) {
    groups.putIfAbsent(_sourceGroup(s), () => []).add(s);
  }
  final keep = <Source>{
    for (final group in groups.values)
      group.firstWhereOrNull((s) => s.lang == 'en') ?? group.first,
  };
  return [
    for (final s in sources)
      if (keep.contains(s)) s,
  ];
}

const initialSourceLimit = 5;

Pref<bool> sourcesConfiguredPref(String serviceId, ItemType type) => Pref(
  'extensionSourcesConfigured/$serviceId/${type.name}',
  false,
  PrefLocation.OTHER,
);

bool _isConfigured(String serviceId, ItemType type) =>
    sourcesConfiguredPref(serviceId, type).rx.value ||
    mutedSourcesPref(serviceId, type).rx.value.isNotEmpty;

List<Source> loadedSources(ItemType type) {
  final service = extensionServiceFor(type);
  if (service == null) return const [];
  final muted = mutedSourcesPref(service.id, type).rx.value.toSet();
  final sources = _onePerName(
    service
        .state(type)
        .installed
        .value
        .where((s) => !muted.contains(s.id) && _allowed(s))
        .toList(),
  );
  return _isConfigured(service.id, type)
      ? sources
      : sources.take(initialSourceLimit).toList();
}

bool isSourceLoaded(ItemType type, Source source) =>
    loadedSources(type).any((s) => s.id == source.id);

void setSourceLoaded(ItemType type, Source source, bool loaded) {
  final service = extensionServiceFor(type);
  final id = source.id;
  if (service == null || id == null) return;
  final pref = mutedSourcesPref(service.id, type);
  final muted = pref.rx.value.toSet();
  if (!_isConfigured(service.id, type)) {
    final active = loadedSources(type).map((s) => s.id).toSet();
    muted.addAll([
      for (final s in service.state(type).installed.value)
        if (s.id != null && !active.contains(s.id)) s.id!,
    ]);
    sourcesConfiguredPref(service.id, type).rx.value = true;
  }
  final siblings = [
    for (final s in service.state(type).installed.value)
      if (s.id != null && s.id != id && _sourceGroup(s) == _sourceGroup(source))
        s.id!,
  ];
  muted.addAll(siblings);
  if (loaded) {
    muted.remove(id);
  } else {
    muted.add(id);
  }
  pref.rx.value = muted.toList();
}

LocalListStore extensionStore(ItemType type) {
  final service = extensionServiceFor(type);
  return LocalListStore(
    service == null ? extensionServiceId : '$extensionServiceId/${service.id}',
  );
}

Future<void> ensureSourcesReady(ItemType type) async {
  final service = extensionServiceFor(type);
  if (service == null) return;
  await service.initializeInstalled(type);
  final loading = service.state(type).loadingInstalled;
  if (loading.value) {
    final done = Completer<void>();
    final sub = loading.listen((v) {
      if (!v) done.complete();
    });
    await done.future;
    await sub.cancel();
  }
}

Source liveSource(Source source) {
  final id = source.id;
  if (id == null) return source;
  final type = source.itemType ?? ItemType.anime;
  return installedSources(type).firstWhereOrNull((s) => s.id == id) ?? source;
}

bool isSourceInstalled(Source source) {
  final type = source.itemType ?? ItemType.anime;
  final id = source.id;
  return id != null && installedSources(type).any((s) => s.id == id);
}
