import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icons_plus/icons_plus.dart';

import '../../Adaptor/Settings/SettingsAdaptor.dart';
import '../../DataClass/Setting.dart';
import '../../Function.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        scrollBehavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
          },
        ),
        physics: const BouncingScrollPhysics(),
        slivers: [
          const SliverToBoxAdapter(
            child: SettingsHeader(),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  SettingsAdaptor(
                    settings: _buildSettings(),
                  ),
                  const SizedBox(height: 24),
                  const InfoSection(),
                  const SizedBox(height: 42),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Setting> _buildSettings() {
    return [
      Setting(
        type: SettingType.normal,
        name: 'Account',
        description: 'Anilist, MAL and Discord.\nWhat more could you need?',
        icon: Icons.person,
        onClick: () {},
        isActivity: true,
      ),
      Setting(
        type: SettingType.normal,
        name: 'Theme',
        description: 'Change the vibe of your app',
        icon: Icons.palette_outlined,
        onClick: () {},
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
}

class SettingsHeader extends StatelessWidget {
  const SettingsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          Positioned(
            top: 42,
            left: 24,
            child: Card(
              elevation: 0,
              color: theme.surface,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_new, color: theme.onSurface),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ),
          ),
          Positioned(
            top: 112,
            left: 32,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(
                  'assets/images/icon.png',
                  width: 96,
                  height: 96,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class InfoSection extends StatelessWidget {
  const InfoSection({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: SvgPicture.asset(
            'assets/svg/bmc-button.svg',
            width: 170,
            height: 48,
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
                  openLinkInBrowser('https://discord.gg/4HPZ5nAWw'),
            ),
            const SizedBox(width: 16),
            IconButton(
              color: Colors.grey.shade800,
              iconSize: 32,
              icon: const Icon(Bootstrap.github),
              onPressed: () =>
                  openLinkInBrowser('https://github.com/aayush2622/dantotsu-pc'),
            ),
            const SizedBox(width: 16),
            IconButton(
              color: Colors.grey.shade800,
              iconSize: 38,
              icon: const Icon(Icons.telegram_sharp),
              onPressed: () =>
                  openLinkInBrowser('https://t.me/+gzBCQExtLQo1YTNh'),
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
