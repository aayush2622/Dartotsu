import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;
import 'package:package_info_plus/package_info_plus.dart';

import '../../Api/Services/Anilist/AnilistAuth.dart';
import '../../Api/Updater/AppUpdater.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/ServiceSwitcher.dart';
import '../../Core/ThemeManager/CustomColorPicker.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Core/ThemeManager/ThemeMode.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/ThemedContainer.dart';
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
  final _version = ''.obs;

  @override
  void initState() {
    super.initState();
    PackageInfo.fromPlatform().then(
      (i) => _version.value = 'v${i.version}+${i.buildNumber}',
    );
  }

  @override
  Widget buildContent(BuildContext context) {
    final theme = find<ThemeController>();

    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
        children: [
          _section('Appearance', [
            themeDropdown(),
            const SizedBox(height: 4),
            Obx(
              () => SegmentedButton<ThemeModePref>(
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
                selected: {theme.mode.value},
                onSelectionChanged: (s) => theme.setThemeMode(s.first),
              ),
            ),
            Obx(
              () => SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('AMOLED black'),
                value: theme.isOled.value,
                onChanged: theme.setOled,
              ),
            ),
            Obx(
              () => SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Glass mode'),
                subtitle: const Text('Frosted surfaces over your library art'),
                value: theme.useGlassMode.value,
                onChanged: theme.setGlassEffect,
              ),
            ),
            Obx(
              () => SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Material You'),
                value: theme.useMaterialYou.value,
                onChanged: theme.setMaterialYou,
              ),
            ),
            Obx(
              () => ListTile(
                contentPadding: EdgeInsets.zero,
                enabled: !theme.useMaterialYou.value,
                title: const Text('Custom accent colour'),
                trailing: CircleAvatar(
                  radius: 12,
                  backgroundColor: Color(theme.customColor.value),
                ),
                onTap: () async {
                  final picked = await showColorPickerDialog(
                    context,
                    Color(theme.customColor.value),
                    showTransparent: false,
                  );
                  if (picked != null) {
                    theme
                      ..setUseCustomColor(true)
                      ..setCustomColor(picked);
                  }
                },
              ),
            ),
          ]),
          _section('General', [languageSwitcher(context)]),
          _section('Account', [_accountTile(context)]),
          _section('Updates', [
            Obx(
              () => SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Check for updates'),
                value: PrefName.checkForUpdates.rx.value,
                onChanged: (v) => PrefName.checkForUpdates.value = v,
              ),
            ),
            Obx(
              () => SwitchListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Alpha channel'),
                value: PrefName.alphaUpdates.rx.value,
                onChanged: (v) => PrefName.alphaUpdates.value = v,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Check now'),
              trailing: const Icon(Icons.refresh_rounded),
              onTap: () => find<AppUpdater>().checkForUpdate(force: true),
            ),
          ]),
          _section('About', [
            Obx(
              () => ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Version'),
                subtitle: Text(_version.value),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('GitHub'),
              trailing: const Icon(Icons.open_in_new_rounded),
              onTap: () =>
                  openLinkInBrowser('https://github.com/aayush2622/Dartotsu'),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Discord'),
              trailing: const Icon(Icons.open_in_new_rounded),
              onTap: () => openLinkInBrowser('https://discord.gg/eyQdCpdubF'),
            ),
          ]),
        ],
      ),
    );
  }

  Widget _accountTile(BuildContext context) {
    final controller = find<MediaServiceController>();
    final auth = find<AnilistAuth>();

    return Obx(() {
      final service = controller.currentService.value;
      final user = auth.user.value;
      final handler = service is LoginHandler ? service as LoginHandler : null;

      return Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(service.name),
            subtitle: Text(user?.name ?? 'Not signed in'),
            trailing: TextButton(
              onPressed: () => serviceSwitcher(context),
              child: const Text('Switch'),
            ),
          ),
          if (handler != null)
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                handler.isLoggedIn
                    ? Icons.logout_rounded
                    : Icons.login_rounded,
              ),
              title: Text(handler.isLoggedIn ? 'Log out' : 'Log in'),
              onTap: () {
                if (handler.isLoggedIn) {
                  handler.logout();
                } else {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                  );
                }
              },
            ),
        ],
      );
    });
  }

  Widget _section(String title, List<Widget> children) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 8, 4, 8),
              child: Text(
                title,
                style: context.textTheme.titleSmall?.copyWith(
                  color: context.colorScheme.primary,
                ),
              ),
            ),
            ThemedContainer(
              borderRadius: BorderRadius.circular(20),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(children: children),
            ),
          ],
        ),
      );
}
