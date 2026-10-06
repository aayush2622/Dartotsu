import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/Setting.dart';
import '../../../../Screen/Settings/Widgets/SegmentedSetting.dart';
import '../../../../Widgets/Components/AppControls.dart';
import '../ExtensionServices.dart';
import '../Widgets/ExtensionServiceSheet.dart';

class ExtensionSettingsView implements SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) => [
    const Setting.header('Services'),
    for (final (label, type, icon) in const [
      ('Anime', ItemType.anime, Icons.movie_filter_rounded),
      ('Manga', ItemType.manga, Icons.menu_book_rounded),
      ('Novel', ItemType.novel, Icons.auto_stories_rounded),
    ])
      Setting.normal(
        name: '$label service',
        description: _description(type),
        icon: icon,
        isActivity: true,
        onClick: () => showExtensionServiceSheet(context, type),
      ),
    const Setting.header('Browse'),
    segmentedSetting<String>(
      name: 'Reading tab',
      description: 'Which extensions the third tab shows',
      icon: Icons.menu_book_rounded,
      label: 'Reading tab',
      value: extensionReadTypePref.rx.value,
      segments: const [
        AppSegment('manga', label: 'Manga'),
        AppSegment('novel', label: 'Novel'),
      ],
      onChanged: (v) => extensionReadTypePref.rx.value = v,
    ),
    segmentedSetting<String>(
      name: 'Default feed',
      description: 'Which list a source opens with',
      icon: Icons.explore_rounded,
      label: 'Default feed',
      value: extensionDefaultFeedPref.rx.value,
      segments: const [
        AppSegment('popular', label: 'Popular'),
        AppSegment('latest', label: 'Latest'),
      ],
      onChanged: (v) => extensionDefaultFeedPref.rx.value = v,
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
