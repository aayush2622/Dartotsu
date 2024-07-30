import 'package:flutter/cupertino.dart';

enum SettingType { normal, switchType }

class Setting {
  final SettingType type;
  final String name;
  final String description;
  final IconData icon;
  final bool isVisible;
  final bool isActivity;
  final bool isChecked;
  final Function()? onClick;
  final Function()? onLongClick;
  final Function(bool)? onSwitchChange;
  final Widget Function(BuildContext)? attach;
  final Widget Function(BuildContext)? attachToSwitch;

  Setting({
    required this.type,
    required this.name,
    required this.description,
    required this.icon,
    this.isVisible = true,
    this.isActivity = false,
    this.isChecked = false,
    this.onClick,
    this.onLongClick,
    this.onSwitchChange,
    this.attach,
    this.attachToSwitch,
  });
}
