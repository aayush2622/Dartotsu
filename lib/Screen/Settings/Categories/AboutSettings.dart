import 'dart:io';

import 'package:flutter/material.dart';

import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Logger.dart';
import '../../../Utils/Function.dart';
import '../../../Utils/Functions/CopyToClip.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../Developer/DeveloperPage.dart';
import 'UpdateSettings.dart';
import '../Widgets/DonateSheet.dart';
import '../Forks/ForksPage.dart';
import '../../../Core/State/State.dart';

final settingsAppVersion = ''.live;

List<Setting> aboutSettings(BuildContext context) => [
  ...updateSettings(context),
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
  Setting.normal(
    name: getString.logFile,
    description: getString.logFileDesc,
    icon: Icons.description_outlined,
    onClick: _shareLog,
  ),
  Setting.normal(
    name: getString.logDelete,
    description: getString.logDeleteDesc,
    icon: Icons.delete_sweep_outlined,
    onClick: _deleteLogs,
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
    name: getString.supportDeveloper,
    description: getString.donateDesc,
    icon: Icons.favorite_rounded,
    onClick: () => showDonateSheet(context),
  ),
];

Future<void> _deleteLogs() async {
  final freed = await Logger.clearFiles();
  snackString(getString.logDeleted(formatBytes(freed)));
}

void _shareLog() {
  final path = Logger.filePath;
  if (path.isEmpty) return;
  if (Platform.isLinux) {
    copyToClipboard(path, message: getString.logFileCopied);
    return;
  }
  shareFile(path, getString.logFile);
}
