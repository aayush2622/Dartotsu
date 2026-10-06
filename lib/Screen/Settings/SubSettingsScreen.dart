import 'package:flutter/material.dart';

import '../../Model/Setting.dart';
import '../../Widgets/Components/BaseScreen.dart';
import 'SettingsListView.dart';

class SubSettingsScreen extends StatefulWidget {
  final String title;
  final List<Setting> Function(BuildContext) settings;

  const SubSettingsScreen({
    super.key,
    required this.title,
    required this.settings,
  });

  @override
  State<SubSettingsScreen> createState() => _SubSettingsScreenState();
}

class _SubSettingsScreenState extends BaseScreen<SubSettingsScreen> {
  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SettingsListView(title: widget.title, searchable: widget.settings),
    );
  }
}
