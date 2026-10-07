import 'package:flutter/widgets.dart';

enum SettingType { header, normal, switchType, slider, inputBox, custom }

/// A single row of a settings screen, rendered by `SettingsGroup`.
///
/// - [SettingType.header]: a plain section label (not a card, not searchable
///   on its own — shown only while a following row in its group matches)
/// - [SettingType.normal]: tappable row (`onClick`, optional `trailingIcon` /
///   `isActivity` chevron)
/// - [SettingType.switchType]: a labelled toggle (`isChecked`, `onSwitchChange`)
/// - [SettingType.slider] / [SettingType.inputBox]: numeric (`minValue`,
///   `maxValue`, `initialValue`, `onSliderChange` / `onInputChange`)
/// - [SettingType.custom]: [builder] provides the whole control
class Setting {
  final SettingType type;
  final String name;
  final String? description;

  final IconData? icon;
  final Widget? iconWidget;
  final IconData? trailingIcon;
  final Widget? trailing;

  final bool isVisible;
  final bool isActivity;
  final bool isChecked;

  final VoidCallback? onClick;
  final VoidCallback? onLongClick;
  final ValueChanged<bool>? onSwitchChange;

  /// Extra widget rendered under the row (for [normal] / [switchType]).
  final WidgetBuilder? attach;

  /// The full control, for [SettingType.custom].
  final WidgetBuilder? builder;

  /// D-pad left/right while the row is focused, for [SettingType.custom]
  /// rows whose control can't host its own focus (e.g. a segmented value
  /// picker) - return true once handled to keep focus on the row.
  final bool Function(TraversalDirection)? onDirection;

  final int? minValue;
  final int? maxValue;
  final int? initialValue;
  final ValueChanged<int>? onSliderChange;
  final ValueChanged<int>? onInputChange;

  const Setting({
    required this.type,
    required this.name,
    this.description,
    this.icon,
    this.iconWidget,
    this.isVisible = true,
    this.isActivity = false,
    this.isChecked = false,
    this.trailingIcon,
    this.trailing,
    this.onClick,
    this.onLongClick,
    this.onSwitchChange,
    this.attach,
    this.builder,
    this.onDirection,
    this.minValue,
    this.maxValue,
    this.initialValue,
    this.onSliderChange,
    this.onInputChange,
  });

  const Setting.header(this.name)
    : type = SettingType.header,
      description = null,
      icon = null,
      iconWidget = null,
      trailingIcon = null,
      trailing = null,
      isVisible = true,
      isActivity = false,
      isChecked = false,
      onClick = null,
      onLongClick = null,
      onSwitchChange = null,
      attach = null,
      builder = null,
      onDirection = null,
      minValue = null,
      maxValue = null,
      initialValue = null,
      onSliderChange = null,
      onInputChange = null;

  const Setting.normal({
    required this.name,
    this.description,
    this.icon,
    this.iconWidget,
    this.trailingIcon,
    this.trailing,
    this.isVisible = true,
    this.isActivity = false,
    this.onClick,
    this.onLongClick,
    this.attach,
  }) : type = SettingType.normal,
       isChecked = false,
       onSwitchChange = null,
       builder = null,
       onDirection = null,
       minValue = null,
       maxValue = null,
       initialValue = null,
       onSliderChange = null,
       onInputChange = null;

  const Setting.switchType({
    required this.name,
    this.description,
    this.icon,
    this.iconWidget,
    this.isVisible = true,
    required this.isChecked,
    required this.onSwitchChange,
    this.attach,
  }) : type = SettingType.switchType,
       trailingIcon = null,
       trailing = null,
       isActivity = false,
       onClick = null,
       onLongClick = null,
       builder = null,
       onDirection = null,
       minValue = null,
       maxValue = null,
       initialValue = null,
       onSliderChange = null,
       onInputChange = null;

  const Setting.slider({
    required this.name,
    this.description,
    this.icon,
    this.isVisible = true,
    required this.minValue,
    required this.maxValue,
    required this.initialValue,
    required this.onSliderChange,
  }) : type = SettingType.slider,
       iconWidget = null,
       trailingIcon = null,
       trailing = null,
       isActivity = false,
       isChecked = false,
       onClick = null,
       onLongClick = null,
       onSwitchChange = null,
       attach = null,
       builder = null,
       onDirection = null,
       onInputChange = null;

  const Setting.inputBox({
    required this.name,
    this.description,
    this.icon,
    this.isVisible = true,
    this.minValue,
    this.maxValue,
    required this.initialValue,
    required this.onInputChange,
  }) : type = SettingType.inputBox,
       iconWidget = null,
       trailingIcon = null,
       trailing = null,
       isActivity = false,
       isChecked = false,
       onClick = null,
       onLongClick = null,
       onSwitchChange = null,
       attach = null,
       builder = null,
       onDirection = null,
       onSliderChange = null;

  const Setting.custom({
    required this.name,
    required this.builder,
    this.description,
    this.isVisible = true,
    this.onDirection,
  }) : type = SettingType.custom,
       icon = null,
       iconWidget = null,
       trailingIcon = null,
       trailing = null,
       isActivity = false,
       isChecked = false,
       onClick = null,
       onLongClick = null,
       onSwitchChange = null,
       attach = null,
       minValue = null,
       maxValue = null,
       initialValue = null,
       onSliderChange = null,
       onInputChange = null;

  bool matches(String query) {
    if (query.isEmpty) return true;
    final q = query.toLowerCase();
    return name.toLowerCase().contains(q) ||
        (description?.toLowerCase().contains(q) ?? false);
  }
}
