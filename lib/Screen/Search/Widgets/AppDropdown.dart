import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/StringExtensions.dart';
import '../../../Utils/Nav/DpadNav.dart';
import '../../../Widgets/Components/ChoiceSheet.dart';

class AppDropdown extends StatelessWidget {
  final String? value;
  final List<String> options;
  final ValueChanged<String?>? onChanged;
  final VoidCallback? onLongPress;
  final String? labelText;
  final IconData? prefixIcon;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final Color? borderColor;
  final String? hintText;

  const AppDropdown({
    super.key,
    required this.options,
    this.value,
    this.onChanged,
    this.onLongPress,
    this.labelText,
    this.prefixIcon,
    this.borderRadius = 14,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.borderColor,
    this.hintText,
  });

  static String display(String option) =>
      option == option.toUpperCase() && option.contains(RegExp('[A-Z]'))
      ? option.titleCase
      : option;

  Future<void> _pick(BuildContext context) async {
    final current = options.contains(value) ? value : null;
    final picked = await showChoiceSheet<String>(
      context,
      title: labelText ?? hintText ?? '',
      icon: prefixIcon,
      selected: current ?? '',
      options: [for (final o in options) ChoiceOption(o, display(o))],
    );
    if (picked != null) onChanged?.call(picked);
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final shown = options.contains(value) ? value : null;
    final isDefault = shown == null || shown == options.firstOrNull;
    final radius = BorderRadius.circular(borderRadius);
    return Padding(
      padding: padding,
      child: DpadTap(
        borderRadius: radius,
        onTap: onChanged == null ? null : () => _pick(context),
        onLongPress: onLongPress,
        child: Container(
          constraints: const BoxConstraints(minHeight: 52),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: isDefault
                ? Theme.of(context).cardColor
                : scheme.secondaryContainer,
            borderRadius: radius,
            border: Border.all(color: borderColor ?? Colors.transparent),
          ),
          child: Row(
            children: [
              if (prefixIcon != null) ...[
                Icon(
                  prefixIcon,
                  size: 20,
                  color: isDefault
                      ? scheme.onSurfaceVariant
                      : scheme.onSecondaryContainer,
                ),
                const SizedBox(width: 10),
              ],
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (labelText != null)
                      Text(
                        labelText!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.labelSmall?.copyWith(
                          color: isDefault
                              ? scheme.onSurfaceVariant
                              : scheme.onSecondaryContainer.withValues(
                                  alpha: 0.8,
                                ),
                        ),
                      ),
                    Text(
                      shown == null ? (hintText ?? '') : display(shown),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.labelLarge?.copyWith(
                        fontWeight: isDefault ? null : FontWeight.w700,
                        color: isDefault
                            ? scheme.onSurface
                            : scheme.onSecondaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.unfold_more_rounded,
                size: 20,
                color: isDefault
                    ? scheme.onSurfaceVariant
                    : scheme.onSecondaryContainer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
