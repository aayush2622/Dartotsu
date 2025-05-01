import 'package:flutter/cupertino.dart';

enum SettingType { normal, switchType, slider, inputBox }

class Setting {
  /// [SettingType.normal]: for setting that can be clicked
  ///
  /// [SettingType.switchType]: for setting that can be switched on/off
  final SettingType type;

  /// Title of the setting
  final String name;

  /// Description of the setting
  final String? description;

  /// Icon of the setting
  final IconData? icon;

  /// [trailingIcon]: Icon at the end of the setting only for [SettingType.normal]
  final IconData? trailingIcon;

  /// [isVisible]: to determine whether the setting is visible or not
  final bool isVisible;

  /// [isActivity]: to determine whether the setting has arrow icon at the end only for [SettingType.normal]
  final bool isActivity;

  /// [isChecked]: to determine whether the switch is on or off only for [SettingType.switchType]
  final bool isChecked;

  /// [onClick]: function to be executed when the setting is clicked only for [SettingType.normal]
  final Function()? onClick;

  /// [onLongClick]: function to be executed when the setting is long clicked only for [SettingType.normal]
  final Function()? onLongClick;

  /// [onSwitchChange]: function to be executed when the switch is changed only for [SettingType.switchType]
  final Function(bool)? onSwitchChange;

  /// [attach]: additional widget to be attached to the setting
  final Widget Function(BuildContext)? attach;

  /// [minValue]: Min value only for [SettingType.slider] and [SettingType.inputBox]
  final int? minValue;

  /// [maxValue]: Max value only for [SettingType.slider] and [SettingType.inputBox]
  final int? maxValue;

  /// [initialValue]: Initial value only for [SettingType.slider] and [SettingType.inputBox]
  final int? initialValue;

  /// [onSliderChange]: function to be executed when the slider value changes only for [SettingType.slider]
  final Function(int)? onSliderChange;

  /// [onInputChange]: function to be executed when the input value changes only for [SettingType.inputBox]
  final Function(int)? onInputChange;

  Setting({
    required this.type,
    required this.name,
    this.description,
    this.icon,
    this.isVisible = true,
    this.isActivity = false,
    this.isChecked = false,
    this.trailingIcon,
    this.onClick,
    this.onLongClick,
    this.onSwitchChange,
    this.attach,
    this.minValue,
    this.maxValue,
    this.initialValue,
    this.onSliderChange,
    this.onInputChange,
  });
}
