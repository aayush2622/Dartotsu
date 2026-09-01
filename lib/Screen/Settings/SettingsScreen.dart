import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:package_info_plus/package_info_plus.dart';

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
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/ThemedContainer.dart';
import '../../Widgets/Settings/SettingsAdaptor.dart';
import '../Login/LoginScreen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) => const _SettingsBody();
}

class _SettingsBody extends StatefulWidget {
  const _SettingsBody();

  @override
  State<_SettingsBody> createState() => _SettingsBodyState();
}

class _SettingsBodyState extends BaseScreen<_SettingsBody> {
  final _query = ''.obs;
  final _version = ''.obs;

  ThemeController get _theme => find();
  MediaServiceController get _services => find();

  @override
  void initState() {
    super.initState();
    PackageInfo.fromPlatform().then(
      (i) => _version.value = 'v${i.version}+${i.buildNumber}',
    );
  }

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 40),
        children: [
          ThemedContainer(
            borderRadius: BorderRadius.circular(28),
            padding: EdgeInsets.zero,
            child: TextField(
              onChanged: (v) => _query.value = v.trim(),
              textInputAction: TextInputAction.search,
              decoration: const InputDecoration(
                hintText: 'Search settings',
                prefixIcon: Icon(Icons.search_rounded),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 16),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Obx(() {
            final filtered = _filter(_all(context), _query.value);
            if (filtered.isEmpty) {
              return Padding(
                padding: const EdgeInsets.only(top: 64),
                child: Center(
                  child: Text(
                    'No settings match "${_query.value}"',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: context.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ),
              );
            }
            return SettingsAdaptor(settings: filtered);
          }),
        ],
      ),
    );
  }

  /// Drop settings that don't match; drop a header whose whole group is gone.
  List<Setting> _filter(List<Setting> all, String query) {
    if (query.isEmpty) return all;
    final out = <Setting>[];
    for (var i = 0; i < all.length; i++) {
      final s = all[i];
      if (s.type == SettingType.header) {
        final group = <Setting>[];
        for (var j = i + 1; j < all.length; j++) {
          if (all[j].type == SettingType.header) break;
          if (all[j].matches(query)) group.add(all[j]);
        }
        if (group.isNotEmpty) out.add(s);
      } else if (s.matches(query)) {
        out.add(s);
      }
    }
    return out;
  }

  List<Setting> _all(BuildContext context) {
    final t = _theme;
    final service = _services.currentService.value;
    final auth = service.auth;
    final user = auth?.user.value;

    return [
      const Setting.header('APPEARANCE'),
      Setting(
        type: SettingType.custom,
        name: 'Theme palette colour scheme accent',
        builder: (_) => themeDropdown(),
      ),
      Setting(
        type: SettingType.custom,
        name: 'Theme mode light dark system appearance',
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
        icon: Icons.palette_rounded,
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

      const Setting.header('GENERAL'),
      Setting(
        type: SettingType.custom,
        name: 'Language locale translation',
        builder: (_) => languageSwitcher(context),
      ),

      const Setting.header('ACCOUNT'),
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
        name: 'Account',
        description: user?.name ?? 'Not signed in',
        icon: Icons.person_rounded,
        isVisible: auth != null,
        trailingIcon: auth?.isLoggedIn == true
            ? Icons.logout_rounded
            : Icons.login_rounded,
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

      const Setting.header('UPDATES'),
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

      const Setting.header('ABOUT'),
      Setting(
        type: SettingType.normal,
        name: 'Version',
        description: _version.value,
        icon: Icons.info_outline_rounded,
      ),
      Setting(
        type: SettingType.normal,
        name: 'GitHub',
        description: 'Source, issues and releases',
        icon: Icons.code_rounded,
        trailingIcon: Icons.open_in_new_rounded,
        onClick: () =>
            openLinkInBrowser('https://github.com/aayush2622/Dartotsu'),
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
        name: 'Buy me a coffee support the maintainer donate',
        description: 'Support development',
        icon: Icons.favorite_rounded,
        trailingIcon: Icons.open_in_new_rounded,
        onClick: () =>
            openLinkInBrowser('https://www.buymeacoffee.com/aayush262'),
      ),
    ];
  }
}
