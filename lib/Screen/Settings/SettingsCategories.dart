import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Api/Updater/AppUpdater.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/ServiceSwitcher.dart';
import '../../Core/ThemeManager/CustomColorPicker.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Core/ThemeManager/ThemeMode.dart';
import '../../Model/Setting.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Widgets/Components/ThemedContainer.dart';
import '../Login/LoginScreen.dart';
import 'SettingsCategoryScreen.dart';

/// One settings sub-screen: a title/icon for the top-level menu and a builder
/// for its `List<Setting>`.
class SettingsCategory {
  final String title;
  final String description;
  final IconData icon;
  final List<Setting> Function(BuildContext) build;

  const SettingsCategory({
    required this.title,
    required this.description,
    required this.icon,
    required this.build,
  });
}

const List<SettingsCategory> settingsCategories = [
  SettingsCategory(
    title: 'Appearance',
    description: 'Theme, colours, glass mode',
    icon: Icons.palette_outlined,
    build: appearanceSettings,
  ),
  SettingsCategory(
    title: 'General',
    description: 'Language and behaviour',
    icon: Icons.tune_rounded,
    build: generalSettings,
  ),
  SettingsCategory(
    title: 'Account',
    description: 'Tracking service and sign-in',
    icon: Icons.person_outline_rounded,
    build: accountSettings,
  ),
  SettingsCategory(
    title: 'Updates',
    description: 'Release channel and checks',
    icon: Icons.system_update_alt_rounded,
    build: updateSettings,
  ),
  SettingsCategory(
    title: 'About',
    description: 'Version, links, support',
    icon: Icons.info_outline_rounded,
    build: aboutSettings,
  ),
];

/// Every category flattened with its title as a header — for the global search.
List<Setting> allSettings(BuildContext context) => [
  for (final c in settingsCategories) ...[
    Setting.header(c.title.toUpperCase()),
    ...c.build(context),
  ],
];

// -- category builders --------------------------------------------------------

List<Setting> appearanceSettings(BuildContext context) {
  final t = find<ThemeController>();
  return [
    Setting(
      type: SettingType.custom,
      name: 'Theme palette colour scheme',
      builder: (_) => themeDropdown(),
    ),
    Setting(
      type: SettingType.custom,
      name: 'Theme mode light dark system',
      builder: (context) => Row(
        children: [
          Icon(
            Icons.brightness_6_rounded,
            size: 22,
            color: context.colorScheme.primary,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              'Mode',
              style: context.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SegmentedButton<ThemeModePref>(
            showSelectedIcon: false,
            segments: const [
              ButtonSegment(
                value: ThemeModePref.system,
                icon: Icon(Icons.brightness_auto_rounded),
              ),
              ButtonSegment(
                value: ThemeModePref.light,
                icon: Icon(Icons.light_mode_rounded),
              ),
              ButtonSegment(
                value: ThemeModePref.dark,
                icon: Icon(Icons.dark_mode_rounded),
              ),
            ],
            selected: {t.mode.value},
            onSelectionChanged: (s) => t.setThemeMode(s.first),
          ),
        ],
      ),
    ),
    Setting(
      type: SettingType.switchType,
      name: 'AMOLED black',
      description: 'Pure black surfaces on dark mode',
      icon: Icons.brightness_3_rounded,
      isChecked: t.isOled.value,
      onSwitchChange: t.setOled,
    ),
    Setting(
      type: SettingType.switchType,
      name: 'Glass mode',
      description: 'Frosted surfaces over your library art',
      icon: Icons.blur_on_rounded,
      isChecked: t.useGlassMode.value,
      onSwitchChange: t.setGlassEffect,
    ),
    Setting(
      type: SettingType.switchType,
      name: 'Material You',
      description: 'Dynamic colour from the system',
      icon: Icons.color_lens_outlined,
      isChecked: t.useMaterialYou.value,
      onSwitchChange: t.setMaterialYou,
    ),
    Setting(
      type: SettingType.normal,
      name: 'Custom accent colour',
      description: t.useMaterialYou.value
          ? 'Turn off Material You to use a custom colour'
          : 'Pick your own primary colour',
      icon: Icons.colorize_rounded,
      isVisible: !t.useMaterialYou.value,
      trailing: CircleAvatar(
        radius: 12,
        backgroundColor: Color(t.customColor.value),
      ),
      onClick: () async {
        final picked = await showColorPickerDialog(
          context,
          Color(t.customColor.value),
          showTransparent: false,
        );
        if (picked != null) {
          t
            ..setUseCustomColor(true)
            ..setCustomColor(picked);
        }
      },
    ),
  ];
}

List<Setting> generalSettings(BuildContext context) => [
  Setting(
    type: SettingType.custom,
    name: 'Language locale translation',
    builder: (_) => languageSwitcher(context),
  ),
];

List<Setting> accountSettings(BuildContext context) {
  final service = find<MediaServiceController>().currentService.value;
  final auth = service.auth;
  final user = auth?.user.value;
  return [
    Setting(
      type: SettingType.normal,
      name: 'Tracking service',
      description: service.name,
      icon: Icons.sync_alt_rounded,
      isActivity: true,
      onClick: () => serviceSwitcher(context),
    ),
    Setting(
      type: SettingType.normal,
      name: auth?.isLoggedIn == true ? 'Sign out' : 'Sign in',
      description: user?.name ?? 'Not signed in',
      icon: auth?.isLoggedIn == true
          ? Icons.logout_rounded
          : Icons.login_rounded,
      isVisible: auth != null,
      onClick: () {
        if (auth == null) return;
        if (auth.isLoggedIn) {
          auth.logout();
        } else {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (_) => const LoginScreen()));
        }
      },
    ),
  ];
}

List<Setting> updateSettings(BuildContext context) => [
  Setting(
    type: SettingType.switchType,
    name: 'Check for updates',
    description: 'Notify on a new GitHub release',
    icon: Icons.system_update_rounded,
    isChecked: PrefName.checkForUpdates.rx.value,
    onSwitchChange: (v) => PrefName.checkForUpdates.value = v,
  ),
  Setting(
    type: SettingType.switchType,
    name: 'Alpha channel',
    description: 'Include pre-release builds',
    icon: Icons.science_rounded,
    isChecked: PrefName.alphaUpdates.rx.value,
    onSwitchChange: (v) => PrefName.alphaUpdates.value = v,
  ),
  Setting(
    type: SettingType.normal,
    name: 'Check now',
    icon: Icons.refresh_rounded,
    trailingIcon: Icons.chevron_right_rounded,
    onClick: () => find<AppUpdater>().checkForUpdate(force: true),
  ),
];

List<Setting> aboutSettings(BuildContext context) => [
  Setting(
    type: SettingType.normal,
    name: 'Version',
    description: settingsAppVersion.value,
    icon: Icons.info_outline_rounded,
  ),
  Setting(
    type: SettingType.normal,
    name: 'GitHub',
    description: 'Source, issues and releases',
    icon: Icons.code_rounded,
    trailingIcon: Icons.open_in_new_rounded,
    onClick: () => openLinkInBrowser('https://github.com/aayush2622/Dartotsu'),
  ),
  Setting(
    type: SettingType.normal,
    name: 'Discord',
    description: 'Community and support',
    icon: Icons.forum_rounded,
    trailingIcon: Icons.open_in_new_rounded,
    onClick: () => openLinkInBrowser('https://discord.gg/eyQdCpdubF'),
  ),
  Setting(
    type: SettingType.normal,
    name: 'Buy me a coffee support donate maintainer',
    description: 'Support development',
    icon: Icons.favorite_rounded,
    trailingIcon: Icons.open_in_new_rounded,
    onClick: () => openLinkInBrowser('https://www.buymeacoffee.com/aayush262'),
  ),
];

/// Top-level menu: one row per category, opening its sub-screen.
List<Setting> categoryMenu(BuildContext context) => [
  for (final c in settingsCategories)
    Setting(
      type: SettingType.normal,
      name: c.title,
      description: c.description,
      icon: c.icon,
      isActivity: true,
      onClick: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => SettingsCategoryScreen(category: c)),
      ),
    ),
];

/// Filled once by `SettingsScreen`; read reactively by [aboutSettings].
final settingsAppVersion = ''.obs;
