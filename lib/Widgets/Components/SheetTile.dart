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
  final VoidCallback? onLongPress;
  final Widget? trailing;
  final BorderRadius? radius;
  final bool tinted;

  const SheetTile({
    super.key,
    this.leading,
    required this.title,
    this.subtitle,
    this.selected = false,
    this.enabled = true,
    this.onTap,
    this.onLongPress,
    this.trailing,
    this.radius,
    this.tinted = false,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final onColor = selected ? scheme.onPrimaryContainer : scheme.onSurface;
    final shape = radius ?? BorderRadius.circular(16);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: tinted ? 1 : 2),
      child: Material(
        color: selected
            ? scheme.primaryContainer
            : tinted
            ? scheme.onSurface.withValues(alpha: 0.06)
            : Colors.transparent,
        borderRadius: shape,
        child: DpadTap(
          onTap: enabled ? onTap : null,
          onLongPress: enabled ? onLongPress : null,
          borderRadius: shape,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
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
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: scheme.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.check_rounded,
                      color: scheme.onPrimary,
                      size: 16,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

BorderRadius groupedRadius(int index, int count) => BorderRadius.vertical(
  top: Radius.circular(index == 0 ? 20 : 6),
  bottom: Radius.circular(index == count - 1 ? 20 : 6),
);
