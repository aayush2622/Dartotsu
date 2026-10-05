import 'dart:async';

import 'package:collection/collection.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/Services/Model/Media.dart';
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

List<Source> loadedSources(ItemType type) {
  final service = extensionServiceFor(type);
  if (service == null) return const [];
  final muted = mutedSourcesPref(service.id, type).rx.value.toSet();
  return service
      .state(type)
      .installed
      .value
      .where((s) => !muted.contains(s.id))
      .toList();
}

bool isSourceLoaded(ItemType type, Source source) {
  final service = extensionServiceFor(type);
  if (service == null) return false;
  return !mutedSourcesPref(service.id, type).rx.value.contains(source.id);
}

void setSourceLoaded(ItemType type, Source source, bool loaded) {
  final service = extensionServiceFor(type);
  final id = source.id;
  if (service == null || id == null) return;
  final pref = mutedSourcesPref(service.id, type);
  final muted = pref.rx.value.toList();
  if (loaded) {
    muted.remove(id);
  } else if (!muted.contains(id)) {
    muted.add(id);
  }
  pref.rx.value = muted;
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

SectionMap filterUninstalled(SectionMap sections) {
  final out = <String, List<Media>>{};
  for (final entry in sections.entries) {
    final kept = entry.value
        .where((m) => m.sourceData == null || isSourceInstalled(m.sourceData!))
        .toList();
    if (kept.isNotEmpty) out[entry.key] = kept;
  }
  return out;
}
