import 'package:flutter/material.dart';

import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Model/Setting.dart';
import 'Categories/AboutSettings.dart';
import 'Categories/AccountSettings.dart';
import 'Categories/DownloadSettings.dart';
import 'Categories/ExtensionSettings.dart';
import 'Categories/AppearanceSettings.dart';
import 'Categories/GeneralSettings.dart';
import 'Categories/NetworkSettings.dart';
import 'Categories/NotificationSettings.dart';
import 'Categories/WatchSettings.dart';
import 'Widgets/SettingsGroup.dart';

export 'Categories/AboutSettings.dart' show settingsAppVersion;

class SettingsCategory {
  final String group;
  final String title;
  final String description;
  final IconData icon;
  final List<Setting> Function(BuildContext) build;
  final List<Setting> Function(BuildContext)? search;
  final Map<String, SectionStyle> Function()? accordion;

  const SettingsCategory({
    required this.group,
    required this.title,
    required this.description,
    required this.icon,
    required this.build,
    this.search,
    this.accordion,
  });
}

List<SettingsCategory> get settingsCategories => [
  SettingsCategory(
    group: getString.settingsGroupAccount,
    title: getString.account,
    description: getString.settingsAccountDesc,
    icon: Icons.person_outline_rounded,
    build: accountSettings,
  ),
  SettingsCategory(
    group: getString.settingsGroupAccount,
    title: getString.settingsNotifications,
    description: getString.settingsNotificationsDesc,
    icon: Icons.notifications_none_rounded,
    build: notificationSettings,
    accordion: () => notificationSectionIcons,
  ),
  SettingsCategory(
    group: getString.settingsGroupContent,
    title: getString.settingsWatch,
    description: getString.settingsWatchDesc,
    icon: Icons.movie_filter_rounded,
    build: watchSettings,
    search: watchRows,
  ),
  SettingsCategory(
    group: getString.settingsGroupContent,
    title: getString.settingsDownloads,
    description: getString.settingsDownloadsDesc,
    icon: Icons.download_rounded,
    build: downloadSettings,
  ),
  SettingsCategory(
    group: getString.settingsGroupContent,
    title: getString.extension(2),
    description: getString.settingsExtensionsDesc,
    icon: Icons.extension_rounded,
    build: extensionSettings,
  ),
  SettingsCategory(
    group: getString.settingsGroupApp,
    title: getString.settingsAppearance,
    description: getString.settingsAppearanceDesc,
    icon: Icons.palette_outlined,
    build: appearanceSettings,
    search: appearanceRows,
  ),
  SettingsCategory(
    group: getString.settingsGroupApp,
    title: getString.settingsGeneral,
    description: getString.settingsGeneralDesc,
    icon: Icons.tune_rounded,
    build: generalSettings,
  ),
  SettingsCategory(
    group: getString.settingsGroupApp,
    title: getString.settingsNetwork,
    description: getString.settingsNetworkDesc,
    icon: Icons.language_rounded,
    build: networkSettings,
  ),
  SettingsCategory(
    group: getString.settingsGroupApp,
    title: getString.settingsAboutUpdates,
    description: getString.settingsAboutUpdatesDesc,
    icon: Icons.info_outline_rounded,
    build: aboutSettings,
  ),
];

List<Setting> allSettings(BuildContext context) => [
  for (final c in settingsCategories) ...[
    Setting.header(c.title.toUpperCase()),
    ...(c.search ?? c.build)(context),
  ],
];
