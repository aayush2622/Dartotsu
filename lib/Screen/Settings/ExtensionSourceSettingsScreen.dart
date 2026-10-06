import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../Model/Setting.dart';
import '../../Widgets/Components/BaseScreen.dart';
import 'SettingsListView.dart';

class ExtensionSourceSettingsScreen extends StatefulWidget {
  final Extension extension;

  const ExtensionSourceSettingsScreen({super.key, required this.extension});

  @override
  State<ExtensionSourceSettingsScreen> createState() =>
      _ExtensionSourceSettingsScreenState();
}

class _ExtensionSourceSettingsScreenState
    extends BaseScreen<ExtensionSourceSettingsScreen> {
  List<Setting> _settings(BuildContext context) => [
    for (final s in widget.extension.settings(context))
      Setting(
        type: SettingType.values.firstWhere((t) => t.name == s.type.name),
        name: s.name,
        description: s.description,
        icon: s.icon,
        iconWidget: s.iconWidget,
        isVisible: s.isVisible,
        isActivity: s.isActivity,
        isChecked: s.isChecked,
        trailingIcon: s.trailingIcon,
        onClick: s.onClick == null ? null : () => s.onClick!(),
        onLongClick: s.onLongClick == null ? null : () => s.onLongClick!(),
        onSwitchChange: s.onSwitchChange == null
            ? null
            : (v) => s.onSwitchChange!(v),
        attach: s.attach,
        minValue: s.minValue,
        maxValue: s.maxValue,
        initialValue: s.initialValue,
        onSliderChange: s.onSliderChange,
        onInputChange: s.onInputChange,
      ),
  ];

  @override
  Widget buildContent(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SettingsListView(
        title: widget.extension.name,
        searchable: _settings,
      ),
    );
  }
}
