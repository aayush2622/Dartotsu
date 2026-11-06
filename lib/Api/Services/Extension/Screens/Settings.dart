import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../../Core/State/State.dart';
import '../../../../Model/Setting.dart';
import '../../../../Utils/Functions/RefreshController.dart';
import '../../../../Screen/Settings/Widgets/SegmentedSetting.dart';
import '../../../../Widgets/Components/AppControls.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Screen/Settings/Widgets/ListTransferSheet.dart';
import '../../../../Screen/Settings/ExtensionSourceSettingsScreen.dart';
import '../ExtensionImport.dart';
import '../Services.dart';
import '../Widgets/ServiceSheet.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';

class ExtensionSettingsView extends SettingsScreenView {
  @override
  List<Setting> build(BuildContext context) => [
    Setting.header(getString.sectionServices),
    for (final (label, type, icon) in [
      (getString.anime, ItemType.anime, Icons.movie_filter_rounded),
      (getString.manga, ItemType.manga, Icons.menu_book_rounded),
      (getString.novel, ItemType.novel, Icons.auto_stories_rounded),
    ])
      Setting.normal(
        name: getString.labelService(label),
        description: _description(type),
        icon: icon,
        isActivity: true,
        onClick: () => showExtensionServiceSheet(context, type),
      ),
    for (final service in _bridgeServices(context))
      Setting.normal(
        name: getString.nameSettings(service.name),
        description: getString.extensionBridgeOptions(service.name),
        icon: Icons.settings_rounded,
        isActivity: true,
        onClick: () => openExtensionSettings(context, service),
      ),
    Setting.header(getString.sectionLists),
    Setting.normal(
      name: getString.importLists,
      description: getString.importListsDesc,
      icon: Icons.download_rounded,
      isActivity: true,
      onClick: () => showListImportSheet(
        context,
        extensionService(),
        sourceFor: resolveImportedSource,
      ),
    ),
    Setting.normal(
      name: getString.exportLists,
      description: getString.exportListsDesc,
      icon: Icons.upload_rounded,
      isActivity: true,
      onClick: () => showListExportSheet(context, extensionService()),
    ),
    Setting.header(getString.sectionPrivacy),
    Setting.switchType(
      name: getString.hideNsfw,
      description: getString.hideNsfwSourcesDesc,
      icon: Icons.visibility_off_outlined,
      isChecked: extensionHideNsfwPref.rx.value,
      onSwitchChange: (v) {
        extensionHideNsfwPref.rx.value = v;
        tryFind<RefreshController>()?.all();
      },
    ),
    Setting.header(getString.sectionBrowse),
    segmentedSetting<String>(
      name: getString.firstTab,
      description: getString.firstTabDesc,
      icon: Icons.view_carousel_rounded,
      label: getString.firstTab,
      value: extensionFirstTypePref.rx.value,
      segments: [
        AppSegment('anime', label: getString.anime),
        AppSegment('manga', label: getString.manga),
        AppSegment('novel', label: getString.novel),
      ],
      onChanged: (v) => extensionFirstTypePref.rx.value = v,
    ),
    segmentedSetting<String>(
      name: getString.readingTab,
      description: getString.readingTabDesc,
      icon: Icons.menu_book_rounded,
      label: getString.readingTab,
      value: extensionReadTypePref.rx.value,
      segments: [
        AppSegment('manga', label: getString.manga),
        AppSegment('novel', label: getString.novel),
      ],
      onChanged: (v) => extensionReadTypePref.rx.value = v,
    ),
    segmentedSetting<String>(
      name: getString.defaultFeed,
      description: getString.defaultFeedDesc,
      icon: Icons.explore_rounded,
      label: getString.defaultFeed,
      value: extensionDefaultFeedPref.rx.value,
      segments: [
        AppSegment('popular', label: getString.popular),
        AppSegment('latest', label: getString.latest),
      ],
      onChanged: (v) => extensionDefaultFeedPref.rx.value = v,
    ),
  ];

  List<Extension> _bridgeServices(BuildContext context) {
    final seen = <String>{};
    return [
      for (final type in ItemType.values)
        if (extensionServiceFor(type) case final service?
            when service.settings(context).isNotEmpty && seen.add(service.id))
          service,
    ];
  }

  String _description(ItemType type) {
    final service = extensionServiceFor(type);
    if (service == null) return getString.noServiceSupports(type.name);
    final loaded = loadedSources(type).length;
    final installed = installedSources(type).length;
    return getString.sourcesLoading(service.name, loaded, installed);
  }
}
