import 'package:flutter/material.dart';

import '../../Widgets/Components/BaseScreen.dart';
import 'SettingsListView.dart';
import 'SettingsCategories.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'SettingsCategoryState.dart';

class SettingsCategoryScreen extends StatefulWidget {
  final SettingsCategory category;

  const SettingsCategoryScreen({super.key, required this.category});

  @override
  State<SettingsCategoryScreen> createState() => _SettingsCategoryScreenState();
}

class _SettingsCategoryScreenState extends BaseScreen<SettingsCategoryScreen>
    with ScreenStateHost<SettingsCategoryScreen, SettingsCategoryState> {
  @override
  SettingsCategoryState buildState() => SettingsCategoryState(widget.category);

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SettingsListView(
        title: state.title,
        searchable: widget.category.search ?? widget.category.build,
        menu: widget.category.build,
        hint: state.hint,
        accordion: widget.category.accordion?.call(),
      ),
    );
  }
}
