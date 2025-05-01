import 'package:dartotsu/Screens/Settings/BaseSettingsScreen.dart';
import 'package:dartotsu/Screens/Settings/SettingsAccountScreen.dart';
import 'package:dartotsu/Screens/Settings/SettingsThemeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Functions/Function.dart';
import '../../Theme/LanguageSwitcher.dart';
import 'SettingsAboutScreen.dart';
import 'SettingsAnimeScreen.dart';
import 'SettingsCommonScreen.dart';
import 'SettingsExtensionsScreen.dart';
import 'SettingsMangaScreen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<StatefulWidget> createState() => SettingsScreenState();
}

class SettingsScreenState extends BaseSettingsScreen {
  @override
  String title() => getString.settings;

  @override
  Widget icon() => ClipOval(
        child: Image.asset(
          'assets/images/logo.png',
          width: 64,
          height: 64,
          fit: BoxFit.cover,
        ),
      );

  @override
  List<Widget> get settingsList {
    return [
      SettingsAdaptor(settings: _buildSettings(context)),
      const SizedBox(height: 24),
      _buildInfoSection(context),
      const SizedBox(height: 42),
    ];
  }

  List<Setting> _buildSettings(BuildContext context) {
    return [
      Setting(
        type: SettingType.normal,
        name: getString.account,
        description: getString.accountDescription,
        icon: Icons.person,
        onClick: () => navigateToPage(context, const SettingsAccountScreen()),
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: getString.theme,
        description: getString.themeDescription,
        icon: Icons.palette_outlined,
        onClick: () => navigateToPage(context, const SettingsThemeScreen()),
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: getString.common,
        description: getString.commonDescription,
        icon: Icons.lightbulb_outline,
        onClick: () => navigateToPage(context, const SettingsCommonScreen()),
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: getString.anime,
        description: getString.animeDescription,
        icon: Icons.movie_filter_rounded,
        onClick: () => navigateToPage(context, const SettingsAnimeScreen()),
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: getString.manga,
        description: getString.mangaDescription,
        icon: Icons.import_contacts,
        onClick: () => navigateToPage(context, const SettingsMangaScreen()),
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: getString.extension(2),
        description: getString.extensionsDescription,
        icon: Icons.extension,
        onClick: () =>
            navigateToPage(context, const SettingsExtensionsScreen()),
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: getString.notifications,
        description: getString.notificationsDescription,
        icon: Icons.notifications_none,
        onClick: () => snackString('Notifications'),
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: getString.about,
        description: getString.aboutDescription,
        icon: Icons.info,
        onClick: () => navigateToPage(context, const SettingsAboutScreen()),
        isActivity: true,
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
    loadVersion();
  }

  String appVersion = '';

  Future<void> loadVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      appVersion = '${packageInfo.version}+${packageInfo.buildNumber}';
    });
  }

  Widget _buildInfoSection(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Column(
      children: [
        Text(
          getString.supportMaintainer,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: theme.onSurface,
          ),
        ),
        const SizedBox(height: 16),
        Center(
          child: IconButton(
            color: Colors.grey.shade800,
            iconSize: 38,
            icon: SvgPicture.asset(
              'assets/svg/bmc-button.svg',
              width: 170,
              height: 48,
            ),
            onPressed: () =>
                openLinkInBrowser('https://www.buymeacoffee.com/aayush262'),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          getString.donationGoal,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              color: Colors.grey.shade800,
              iconSize: 38,
              icon: const Icon(Icons.discord),
              onPressed: () =>
                  openLinkInBrowser('https://discord.gg/eyQdCpdubF'),
            ),
            const SizedBox(width: 16),
            IconButton(
              color: Colors.grey.shade800,
              iconSize: 32,
              icon: const Icon(Bootstrap.github),
              onPressed: () =>
                  openLinkInBrowser('https://github.com/aayush2622/dartotsu'),
            ),
            const SizedBox(width: 16),
            IconButton(
              color: Colors.grey.shade800,
              iconSize: 38,
              icon: const Icon(Icons.telegram_sharp),
              onPressed: () => openLinkInBrowser('https://t.me/Dartotsu'),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Text(
          'Version $appVersion',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
