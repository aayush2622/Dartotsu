import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';

import '../../Model/Setting.dart';
import '../../Utils/Extensions/ContextExtensions.dart';

class _Label extends StatelessWidget {
  final Setting setting;
  final Widget? trailing;

  const _Label({required this.setting, this.trailing});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Row(
      children: [
        if (setting.iconWidget != null || setting.icon != null) ...[
          setting.iconWidget ??
              Icon(setting.icon, color: scheme.primary, size: 22),
          const SizedBox(width: 20),
        ],
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                setting.name,
                style: context.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              if (setting.description != null) ...[
                const SizedBox(height: 4),
                Text(
                  setting.description!,
                  style: context.textTheme.bodySmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ],
              if (setting.attach != null) ...[
                const SizedBox(height: 8),
                setting.attach!(context),
              ],
            ],
          ),
        ),
        if (trailing != null) ...[const SizedBox(width: 12), trailing!],
      ],
    );
  }
}

class SettingItem extends StatelessWidget {
  final Setting setting;

  const SettingItem({super.key, required this.setting});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    Widget? trailing = setting.trailing;
    if (trailing == null && setting.trailingIcon != null) {
      trailing = Icon(setting.trailingIcon, color: scheme.primary, size: 20);
    } else if (trailing == null && setting.isActivity) {
      trailing = Icon(
        Icons.arrow_forward_ios_rounded,
        color: scheme.onSurfaceVariant,
        size: 16,
      );
    }

    return DpadFocusable(
      onSelect: setting.onClick,
      onLongSelect: setting.onLongClick,
      effects: const [DpadBorderEffect(borderRadius: BorderRadius.zero)],
      child: InkWell(
        onTap: setting.onClick,
        onLongPress: setting.onLongClick,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: _Label(setting: setting, trailing: trailing),
        ),
      ),
    );
  }
}

class SettingSwitchItem extends StatelessWidget {
  final Setting setting;

  const SettingSwitchItem({super.key, required this.setting});

  void _toggle() => setting.onSwitchChange?.call(!setting.isChecked);

  @override
  Widget build(BuildContext context) {
    return DpadFocusable(
      onSelect: _toggle,
      onLongSelect: setting.onLongClick,
      effects: const [DpadBorderEffect(borderRadius: BorderRadius.zero)],
      child: InkWell(
        onTap: _toggle,
        onLongPress: setting.onLongClick,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: _Label(
            setting: setting,
            trailing: Switch(
              value: setting.isChecked,
              onChanged: setting.onSwitchChange,
            ),
          ),
        ),
      ),
    );
  }
}

class SettingSliderItem extends StatefulWidget {
  final Setting setting;

  const SettingSliderItem({super.key, required this.setting});

  @override
  State<SettingSliderItem> createState() => _SettingSliderItemState();
}

class _SettingSliderItemState extends State<SettingSliderItem> {
  late double _value = (widget.setting.initialValue ?? 0).toDouble();

  @override
  Widget build(BuildContext context) {
    final s = widget.setting;
    final min = (s.minValue ?? 0).toDouble();
    final max = (s.maxValue ?? 100).toDouble();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Label(
            setting: s,
            trailing: Text(
              '${_value.round()}',
              style: context.textTheme.labelLarge,
            ),
          ),
          Slider(
            min: min,
            max: max,
            divisions: (max - min).round().clamp(1, 1000),
            value: _value.clamp(min, max),
            onChanged: (v) => setState(() => _value = v),
            onChangeEnd: (v) => s.onSliderChange?.call(v.round()),
          ),
        ],
      ),
    );
  }
}

class SettingInputBoxItem extends StatefulWidget {
  final Setting setting;

  const SettingInputBoxItem({super.key, required this.setting});

  @override
  State<SettingInputBoxItem> createState() => _SettingInputBoxItemState();
}

class _SettingInputBoxItemState extends State<SettingInputBoxItem> {
  late int _value = widget.setting.initialValue ?? 0;

  void _step(int delta) {
    final s = widget.setting;
    final next = (_value + delta).clamp(s.minValue ?? 0, s.maxValue ?? 1 << 30);
    if (next == _value) return;
    setState(() => _value = next);
    s.onInputChange?.call(_value);
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: _Label(
        setting: widget.setting,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.remove_rounded, color: scheme.primary),
              onPressed: () => _step(-1),
            ),
            Text('$_value', style: context.textTheme.titleMedium),
            IconButton(
              icon: Icon(Icons.add_rounded, color: scheme.primary),
              onPressed: () => _step(1),
            ),
          ],
        ),
      ),
    );
  }
}

/// [builder] provides the whole control; [Setting.name] is only for search.
class SettingCustomItem extends StatelessWidget {
  final Setting setting;

  const SettingCustomItem({super.key, required this.setting});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: setting.builder?.call(context) ?? const SizedBox.shrink(),
    );
  }
}
