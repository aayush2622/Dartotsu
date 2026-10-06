import '../../Utils/Nav/DpadNav.dart';
import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';

class SheetTile extends StatelessWidget {
  final Widget? leading;
  final Widget title;
  final Widget? subtitle;
  final bool selected;
  final bool enabled;
  final VoidCallback? onTap;
  final Widget? trailing;

  const SheetTile({
    super.key,
    this.leading,
    required this.title,
    this.subtitle,
    this.selected = false,
    this.enabled = true,
    this.onTap,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final onColor = selected ? scheme.onSecondaryContainer : scheme.onSurface;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Material(
        color: selected ? scheme.secondaryContainer : Colors.transparent,
        borderRadius: BorderRadius.circular(14),
        child: DpadTap(
          onTap: enabled ? onTap : null,
          borderRadius: BorderRadius.circular(14),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            child: Row(
              children: [
                if (leading != null) ...[leading!, const SizedBox(width: 14)],
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      DefaultTextStyle.merge(
                        style: context.textTheme.bodyLarge?.copyWith(
                          color: onColor,
                          fontWeight: selected
                              ? FontWeight.w700
                              : FontWeight.w500,
                        ),
                        child: title,
                      ),
                      if (subtitle != null) ...[
                        const SizedBox(height: 2),
                        DefaultTextStyle.merge(
                          style: context.textTheme.bodySmall?.copyWith(
                            color: selected
                                ? onColor.withValues(alpha: 0.8)
                                : scheme.onSurfaceVariant,
                          ),
                          child: subtitle!,
                        ),
                      ],
                    ],
                  ),
                ),
                if (trailing != null)
                  trailing!
                else if (selected)
                  Icon(Icons.check_rounded, color: onColor, size: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
