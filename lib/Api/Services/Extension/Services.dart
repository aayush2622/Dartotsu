import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Functions/GetXFunctions.dart';

const extensionServiceId = 'extension';

ItemType itemTypeOf(MediaType type) => switch (type) {
  MediaType.manga => ItemType.manga,
  MediaType.novel => ItemType.novel,
  _ => ItemType.anime,
};

ItemType itemTypeFor({required bool anime}) =>
    anime ? ItemType.anime : ItemType.manga;

Pref<String> extensionServicePref(ItemType type) =>
    Pref('extensionService/${type.name}', '', PrefLocation.OTHER);

Pref<List<String>> mutedSourcesPref(String serviceId, ItemType type) => Pref(
  'extensionMutedSources/$serviceId/${type.name}',
  const [],
  PrefLocation.OTHER,
);

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

MediaType extensionReadType() => extensionReadTypePref.rx.value == 'novel'
    ? MediaType.novel
    : MediaType.manga;

List<Extension> extensionServicesFor(ItemType type) =>
    tryFind<ExtensionManager>()?.managers
        .where((e) => e.supports(type))
        .toList() ??
    const [];

Extension? extensionServiceFor(ItemType type) {
  final saved = extensionServicePref(type).rx.value;
  final services = extensionServicesFor(type);
  if (services.isEmpty) return null;
  return services.firstWhereOrNull((e) => e.id == saved) ?? services.first;
}

void setExtensionService(ItemType type, String id) {
  extensionServicePref(type).rx.value = id;
  unawaited(extensionServiceFor(type)?.initializeInstalled(type));
}

List<Source> installedSources(ItemType type) =>
    extensionServiceFor(type)?.state(type).installed.value ?? const [];

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
        .where((s) => !muted.contains(s.id))
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
  await extensionServiceFor(type)?.initializeInstalled(type);
}

bool isSourceInstalled(Source source) {
  final type = source.itemType ?? ItemType.anime;
  final id = source.id;
  return id != null && installedSources(type).any((s) => s.id == id);
}
