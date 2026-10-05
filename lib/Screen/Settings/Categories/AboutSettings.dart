import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../Developer/DeveloperPage.dart';
import '../Forks/ForksPage.dart';

final settingsAppVersion = ''.obs;

List<Setting> aboutSettings(BuildContext context) => [
  Setting.header(getString.sectionAppInfo),
  Setting.normal(
    name: getString.version,
    description: settingsAppVersion.value,
    icon: Icons.info_outline_rounded,
  ),
  Setting.normal(
    name: getString.contributors,
    description: getString.contributorsDesc,
    icon: Icons.groups_rounded,
    isActivity: true,
    onClick: () => navigateToPage(context, const DeveloperPage()),
  ),
  Setting.normal(
    name: getString.forks,
    description: getString.forksDesc,
    icon: Icons.call_split_rounded,
    isActivity: true,
    onClick: () => navigateToPage(context, const ForksPage()),
  ),
  Setting.header(getString.sectionCommunity),
  Setting.normal(
    name: getString.gitHub,
    description: getString.gitHubDesc,
    icon: Icons.code_rounded,
    trailingIcon: Icons.open_in_new_rounded,
    onClick: () => openLinkInBrowser('https://github.com/aayush2622/Dartotsu'),
  ),
  Setting.normal(
    name: getString.discord,
    description: getString.discordDesc,
    icon: Icons.forum_rounded,
    trailingIcon: Icons.open_in_new_rounded,
    onClick: () => openLinkInBrowser('https://discord.gg/eyQdCpdubF'),
  ),
  Setting.normal(
    name: getString.donate,
    description: getString.donateDesc,
    icon: Icons.favorite_rounded,
    trailingIcon: Icons.open_in_new_rounded,
    onClick: () => openLinkInBrowser('https://www.buymeacoffee.com/aayush262'),
  ),
];
