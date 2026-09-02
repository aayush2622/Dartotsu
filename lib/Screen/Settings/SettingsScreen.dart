import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Settings/SettingsListView.dart';
import 'SettingsCategories.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends BaseScreen<SettingsScreen> {
  @override
  void initState() {
    super.initState();
    if (settingsAppVersion.value.isEmpty) {
      PackageInfo.fromPlatform().then(
        (i) => settingsAppVersion.value = 'v${i.version}+${i.buildNumber}',
      );
    }
  }

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Settings'),
      ),
      body: const SettingsListView(menu: categoryMenu, searchable: allSettings),
    );
  }
}
