import '../../../Utils/Nav/DpadNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../Model/Setting.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';

// ─── shared label row ─────────────────────────────────────────────────────────

class _Label extends StatelessWidget {
  final Setting setting;
  final Widget? trailing;
  final Color? iconContainerColor;
  final Color? iconOnColor;

  const _Label({
    required this.setting,
    this.trailing,
    this.iconContainerColor,
    this.iconOnColor,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    Widget? leading;
    if (setting.iconWidget != null) {
      leading = setting.iconWidget;
    } else if (setting.icon != null) {
      if (iconContainerColor != null) {
        leading = Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: iconContainerColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            setting.icon,
            size: 20,
            color: iconOnColor ?? scheme.onPrimaryContainer,
          ),
        );
      } else {
        leading = Icon(setting.icon, color: scheme.onSurfaceVariant, size: 22);
      }
    }

    return Row(
      children: [
        if (leading != null) ...[leading, const SizedBox(width: 16)],
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
                const SizedBox(height: 3),
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

// ─── normal row ──────────────────────────────────────────────────────────────

class SettingItem extends StatelessWidget {
  final Setting setting;
  final Color? iconContainerColor;
  final Color? iconOnColor;

  const SettingItem({
    super.key,
    required this.setting,
    this.iconContainerColor,
    this.iconOnColor,
  });

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

    void onTap() {
      HapticFeedback.selectionClick();
      setting.onClick?.call();
    }

    return DpadFocusable(
      onSelect: setting.onClick == null ? null : onTap,
      onLongSelect: setting.onLongClick,
      builder: (_, state, child) => AnimatedScale(
        scale: kDpadFocused(state) ? 1.02 : 1.0,
        duration: Durations.short3,
        curve: Curves.easeOutBack,
        child: child,
      ),
      child: InkWell(
        onTap: setting.onClick == null ? null : onTap,
        onLongPress: setting.onLongClick,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          child: _Label(
            setting: setting,
            trailing: trailing,
            iconContainerColor: iconContainerColor,
            iconOnColor: iconOnColor,
          ),
        ),
      ),
    );
  }
}

// ─── switch row ──────────────────────────────────────────────────────────────

class SettingSwitchItem extends StatelessWidget {
  final Setting setting;
  final Color? iconContainerColor;
  final Color? iconOnColor;

  const SettingSwitchItem({
    super.key,
    required this.setting,
    this.iconContainerColor,
    this.iconOnColor,
  });

  void _toggle() {
    HapticFeedback.selectionClick();
    setting.onSwitchChange?.call(!setting.isChecked);
  }

  @override
  Widget build(BuildContext context) {
    return DpadFocusable(
      onSelect: _toggle,
      onLongSelect: setting.onLongClick,
      builder: (_, state, child) => AnimatedScale(
        scale: kDpadFocused(state) ? 1.02 : 1.0,
        duration: Durations.short3,
        curve: Curves.easeOutBack,
        child: child,
      ),
      child: InkWell(
        onTap: _toggle,
        onLongPress: setting.onLongClick,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: _Label(
            setting: setting,
            trailing: Switch(
              value: setting.isChecked,
              onChanged: setting.onSwitchChange,
            ),
            iconContainerColor: iconContainerColor,
            iconOnColor: iconOnColor,
          ),
        ),
      ),
    );
  }
}

// ─── slider row ──────────────────────────────────────────────────────────────

class SettingSliderItem extends StatefulWidget {
  final Setting setting;
  final Color? iconContainerColor;
  final Color? iconOnColor;

  const SettingSliderItem({
    super.key,
    required this.setting,
    this.iconContainerColor,
    this.iconOnColor,
  });

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
      padding: const EdgeInsets.fromLTRB(16, 14, 16, 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _Label(
            setting: s,
            trailing: Text(
              '${_value.round()}',
              style: context.textTheme.labelLarge,
            ),
            iconContainerColor: widget.iconContainerColor,
            iconOnColor: widget.iconOnColor,
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

// ─── input-box (stepper) row ──────────────────────────────────────────────────

class SettingInputBoxItem extends StatefulWidget {
  final Setting setting;
  final Color? iconContainerColor;
  final Color? iconOnColor;

  const SettingInputBoxItem({
    super.key,
    required this.setting,
    this.iconContainerColor,
    this.iconOnColor,
  });

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: _Label(
        setting: widget.setting,
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton.filledTonal(
              icon: const Icon(Icons.remove_rounded, size: 18),
              onPressed: () => _step(-1),
              visualDensity: VisualDensity.compact,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('$_value', style: context.textTheme.titleMedium),
            ),
            IconButton.filledTonal(
              icon: const Icon(Icons.add_rounded, size: 18),
              onPressed: () => _step(1),
              visualDensity: VisualDensity.compact,
            ),
          ],
        ),
        iconContainerColor: widget.iconContainerColor,
        iconOnColor: widget.iconOnColor,
      ),
    );
  }
}

// ─── custom row ──────────────────────────────────────────────────────────────

class SettingCustomItem extends StatelessWidget {
  final Setting setting;

  const SettingCustomItem({super.key, required this.setting});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: setting.builder?.call(context) ?? const SizedBox.shrink(),
    );
  }
}
