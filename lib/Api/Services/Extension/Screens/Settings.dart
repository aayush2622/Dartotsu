import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/Setting.dart';
import '../ExtensionServices.dart';
import '../Widgets/ExtensionServiceSheet.dart';

class ExtensionSettingsView implements SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) => [
    for (final (label, type, icon) in const [
      ('Anime', ItemType.anime, Icons.movie_filter_rounded),
      ('Manga', ItemType.manga, Icons.menu_book_rounded),
    ])
      Setting.normal(
        name: '$label service',
        description: _description(type),
        icon: icon,
        isActivity: true,
        onClick: () => showExtensionServiceSheet(context, type),
      ),
  ];

  String _description(ItemType type) {
    final service = extensionServiceFor(type);
    if (service == null) return 'No service supports ${type.name}';
    final loaded = loadedSources(type).length;
    final installed = installedSources(type).length;
    return '${service.name} · $loaded of $installed sources loading';
  }
}
