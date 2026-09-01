import 'package:flutter/widgets.dart';

enum SettingType { header, normal, switchType, slider, inputBox, custom }

/// A single row of a settings screen, rendered by `SettingsAdaptor`.
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
