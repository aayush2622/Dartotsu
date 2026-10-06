import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Functions/GetXFunctions.dart';
import '../../Extension/Widgets/ExtensionManagerSheet.dart';
import '../ExtensionSourceSettingsScreen.dart';

List<Setting> extensionSettings(BuildContext context) {
  final manager = find<ExtensionManager>();
  return [
    Setting.header(getString.sectionManagers),
    for (final type in ItemType.values) ...[
      Setting.normal(
        name: '${type.name.capitalizeFirst} extensions',
        description: manager[type].name,
        icon: switch (type) {
          ItemType.anime => Icons.movie_filter_rounded,
          ItemType.manga => Icons.import_contacts_rounded,
          ItemType.novel => Icons.book_rounded,
        },
        isActivity: true,
        onClick: () => showExtensionManagerSheet(context, type),
      ),
      if (manager[type].settings(context).isNotEmpty)
        Setting.normal(
          name: '${manager[type].name} settings',
          description: '${type.name.capitalizeFirst} extensions',
          icon: Icons.settings_rounded,
          isActivity: true,
          onClick: () => openExtensionSettings(context, manager[type]),
        ),
    ],
    Setting.header(getString.sectionOptions),
    Setting.switchType(
      name: getString.loadExtensionsIcon,
      description: getString.loadExtensionsIconDesc,
      icon: Icons.image_outlined,
      isChecked: PrefName.loadExtensionIcon.rx.value,
      onSwitchChange: (v) => PrefName.loadExtensionIcon.rx.value = v,
    ),
  ];
}
