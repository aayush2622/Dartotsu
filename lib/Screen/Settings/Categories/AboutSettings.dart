import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Function.dart';

final settingsAppVersion = ''.obs;

List<Setting> aboutSettings() => [
  Setting.header(getString.sectionAppInfo),
  Setting(
    type: SettingType.normal,
    name: getString.version,
    description: settingsAppVersion.value,
    icon: Icons.info_outline_rounded,
  ),
  Setting.header(getString.sectionCommunity),
  Setting(
    type: SettingType.normal,
    name: getString.gitHub,
    description: getString.gitHubDesc,
    icon: Icons.code_rounded,
    trailingIcon: Icons.open_in_new_rounded,
    onClick: () => openLinkInBrowser('https://github.com/aayush2622/Dartotsu'),
  ),
  Setting(
    type: SettingType.normal,
    name: getString.discord,
    description: getString.discordDesc,
    icon: Icons.forum_rounded,
    trailingIcon: Icons.open_in_new_rounded,
    onClick: () => openLinkInBrowser('https://discord.gg/eyQdCpdubF'),
  ),
  Setting(
    type: SettingType.normal,
    name: getString.donate,
    description: getString.donateDesc,
    icon: Icons.favorite_rounded,
    trailingIcon: Icons.open_in_new_rounded,
    onClick: () => openLinkInBrowser('https://www.buymeacoffee.com/aayush262'),
  ),
];
