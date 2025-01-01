import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';

import 'BaseSettingsScreen.dart';

class SettingsAboutScreen extends StatefulWidget {
  const SettingsAboutScreen({super.key});

  @override
  State<StatefulWidget> createState() => SettingsAboutScreenState();
}

class SettingsAboutScreenState extends BaseSettingsScreen {
  @override
  String title() => getString.about;

  @override
  Widget icon() => Padding(
    padding: const EdgeInsets.only(right: 16),
    child: Icon(
      size: 52,
      Icons.info,
      color: Theme.of(context).colorScheme.onSurface,
    ),
  );

  @override
  List<Widget> get settingsList {
    return [];
  }

}