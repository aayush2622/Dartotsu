import 'package:collection/collection.dart';
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../../Core/Backup/ExternalLists/ExternalList.dart';
import '../../../Core/Services/MediaServiceController.dart';
import 'Services.dart';
import '../../../Core/State/State.dart';

MediaService extensionService() => find<MediaServiceController>().services
    .firstWhere((s) => s.id == extensionServiceId);

Source? resolveImportedSource(ExternalItem item, ExternalLists lists) {
  if (item.source == 0) return null;
  final type = itemTypeFor(anime: item.anime);
  final id = '${item.source}';
  return installedSources(type).firstWhereOrNull((s) => s.id == id) ??
      Source(
        id: id,
        name: lists.sourceNames[item.source] ?? 'Source $id',
        itemType: type,
      );
}
