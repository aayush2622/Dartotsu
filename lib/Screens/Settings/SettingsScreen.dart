import 'package:dantotsu/Screens/Settings/BaseSettingsScreen.dart';
import 'package:dantotsu/Screens/Settings/SettingsAccountScreen.dart';
import 'package:dantotsu/Screens/Settings/SettingsThemeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Functions/Function.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<StatefulWidget> createState() => SettingsScreenState();
}

class SettingsScreenState extends BaseSettingsScreen {
  @override
  String title() => 'Settings';

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
        name: 'Account',
        description: 'Anilist, MAL and Discord.\nWhat more could you need?',
        icon: Icons.person,
        onClick: () => navigateToPage(context, const SettingsAccountScreen()),
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: 'Theme',
        description: 'Change the vibe of your app',
        icon: Icons.palette_outlined,
        onClick: () => navigateToPage(context, const SettingsThemeScreen()),
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: 'Common',
        description: 'Change the vibe of your app',
        icon: Icons.lightbulb_outline,
        onClick: () {},
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: 'Anime',
        description: 'Change the vibe of your app',
        icon: Icons.movie_filter_rounded,
        onClick: () {},
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: 'Manga',
        description: 'Change the vibe of your app',
        icon: Icons.import_contacts,
        onClick: () {},
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: 'Extensions',
        description: 'Change the vibe of your app',
        icon: Icons.extension,
        onClick: () {},
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: 'Add-ons',
        description: 'Change the vibe of your app',
        icon: Icons.restaurant,
        onClick: () {},
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: 'Notifications',
        description: 'Change the vibe of your app',
        icon: Icons.notifications_none,
        onClick: () {},
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: 'About',
        description: 'Change the vibe of your app',
        icon: Icons.info,
        onClick: () {},
        isActivity: true,
      ),
    ];
  }

  Widget _buildInfoSection(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Column(
      children: [
        Text(
          'Want to support Dantotsu\'s Maintainer?\nConsider Donating',
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
        const Text(
          'No donation goal atm',
          textAlign: TextAlign.center,
          style: TextStyle(
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
              onPressed: () =>
                  openLinkInBrowser('https://t.me/Dartotsu'),
            ),
          ],
        ),
        const SizedBox(height: 12),
        const Text(
          'Version Current',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
