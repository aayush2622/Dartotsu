import 'package:flutter/cupertino.dart';

enum SettingType { normal, switchType }

class Setting {
  final SettingType type;
  final String name;
  final String description;
  final IconData icon;
  final bool isVisible;
  final bool isActivity; // for type normal only
  final bool isChecked; // for type switchType only
  final Function()? onClick; // for type normal only
  final Function()? onLongClick;
  final Function(bool)? onSwitchChange; // for type switchType only
  final Widget Function(BuildContext)? attach; // for type normal only, to attach more widget after the description
  final Widget Function(BuildContext)? attachToSwitch; // for type switchType only, to attach more widget after the description

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
