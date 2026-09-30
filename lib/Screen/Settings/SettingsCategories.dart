import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Api/Updater/AppUpdater.dart';
import '../../Core/NetworkManager/NetworkManager.dart';
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
import '../../Widgets/Components/AlertDialogBuilder.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/ThemedContainer.dart';
import '../Login/LoginScreen.dart';
import 'CardStyleScreen.dart';
import 'SettingsCategoryScreen.dart';

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
    title: 'Network',
    description: 'User-Agent, DNS, proxy, cookies',
    icon: Icons.wifi_tethering_rounded,
    build: networkSettings,
  ),
  SettingsCategory(
    title: 'About',
    description: 'Version, links, support',
    icon: Icons.info_outline_rounded,
    build: aboutSettings,
  ),
];

List<Setting> allSettings(BuildContext context) => [
  for (final c in settingsCategories) ...[
    Setting.header(c.title.toUpperCase()),
    ...c.build(context),
  ],
];

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
          AppSegmented<ThemeModePref>(
            expand: false,
            value: t.mode.value,
            onChanged: t.setThemeMode,
            segments: const [
              AppSegment(
                ThemeModePref.system,
                icon: Icons.brightness_auto_rounded,
              ),
              AppSegment(ThemeModePref.light, icon: Icons.light_mode_rounded),
              AppSegment(ThemeModePref.dark, icon: Icons.dark_mode_rounded),
            ],
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
      type: SettingType.normal,
      name: 'Card style',
      description: 'Title placement, size, progress and badges',
      icon: Icons.dashboard_customize_rounded,
      isActivity: true,
      onClick: () => Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (_) => const CardStyleScreen())),
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
    if (service.settingsView case final view?) ...[
      Setting(type: SettingType.header, name: '${service.name} settings'),
      ...view.build(context),
    ],
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
    type: SettingType.custom,
    name: 'Update channel',
    builder: (context) => Row(
      children: [
        Icon(
          Icons.science_rounded,
          size: 22,
          color: context.colorScheme.primary,
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Text(
            'Channel',
            style: context.textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        AppSegmented<UpdateChannel>(
          expand: false,
          value: PrefName.updateChannel.rx.value,
          onChanged: (v) => PrefName.updateChannel.value = v,
          segments: const [
            AppSegment(UpdateChannel.stable, label: 'Stable'),
            AppSegment(UpdateChannel.prerelease, label: 'Pre-release'),
            AppSegment(UpdateChannel.alpha, label: 'Alpha'),
          ],
        ),
      ],
    ),
  ),
  Setting(
    type: SettingType.normal,
    name: 'Check now',
    icon: Icons.refresh_rounded,
    trailingIcon: Icons.chevron_right_rounded,
    onClick: () => find<AppUpdater>().checkForUpdate(force: true),
  ),
];

List<Setting> networkSettings(BuildContext context) {
  final network = find<NetworkManager>();

  return [
    Setting(
      type: SettingType.normal,
      name: 'User-Agent',
      description: PrefName.customUserAgent.rx.value.isEmpty
          ? 'Default'
          : PrefName.customUserAgent.rx.value,
      icon: Icons.badge_outlined,
      isActivity: true,
      onClick: () => _promptNetworkText(
        context,
        title: 'Custom User-Agent',
        hint: network.userAgent,
        pref: PrefName.customUserAgent,
        onSaved: () => network.reinitialize(),
      ),
    ),
    Setting(
      type: SettingType.normal,
      name: 'DNS-over-HTTPS',
      description: PrefName.customDnsUrl.rx.value.isEmpty
          ? 'Default (Cloudflare)'
          : PrefName.customDnsUrl.rx.value,
      icon: Icons.dns_outlined,
      isActivity: true,
      onClick: () => _promptNetworkText(
        context,
        title: 'Custom DNS-over-HTTPS URL',
        hint: 'https://cloudflare-dns.com/dns-query',
        pref: PrefName.customDnsUrl,
      ),
    ),
    Setting(
      type: SettingType.normal,
      name: 'Proxy',
      description: PrefName.proxyUrl.rx.value.isEmpty
          ? 'None'
          : PrefName.proxyUrl.rx.value,
      icon: Icons.vpn_lock_outlined,
      isActivity: true,
      onClick: () => _promptNetworkText(
        context,
        title: 'HTTP proxy (host:port)',
        hint: 'proxy.example.com:8080',
        pref: PrefName.proxyUrl,
        onSaved: () => network.reinitialize(),
      ),
    ),
    Setting(
      type: SettingType.normal,
      name: 'Clear cookies',
      description: 'Remove every stored cookie',
      icon: Icons.cookie_outlined,
      onClick: () => network.cookieManager.clear(),
    ),
  ];
}

void _promptNetworkText(
  BuildContext context, {
  required String title,
  required String hint,
  required Pref<String> pref,
  VoidCallback? onSaved,
}) {
  final controller = TextEditingController(text: pref.value);

  AlertDialogBuilder(context)
      .setTitle(title)
      .setCustomView(
        TextField(
          controller: controller,
          decoration: InputDecoration(hintText: hint),
          autofocus: true,
        ),
      )
      .setNegativeButton('Cancel', null)
      .setPositiveButton('Save', () {
        pref.value = controller.text.trim();
        onSaved?.call();
      })
      .show();
}

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

List<Setting> categoryMenu(BuildContext context) => [
  for (final c in settingsCategories)
    Setting(
      type: SettingType.normal,
      name: c.title,
      description: c.description,
      iconWidget: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          color: context.colorScheme.primaryContainer,
          shape: BoxShape.circle,
        ),
        child: Icon(
          c.icon,
          size: 21,
          color: context.colorScheme.onPrimaryContainer,
        ),
      ),
      isActivity: true,
      onClick: () => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => SettingsCategoryScreen(category: c)),
      ),
    ),
];

final settingsAppVersion = ''.obs;
