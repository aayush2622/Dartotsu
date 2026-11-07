import '../../../Utils/Nav/DpadNav.dart';

import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';

class HeaderAvatar extends StatelessWidget {
  final String? url;
  final double size;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final int badge;

  const HeaderAvatar({
    super.key,
    this.url,
    this.size = 46,
    this.onTap,
    this.onLongPress,
    this.badge = 0,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final child = Container(
      width: size,
      height: size,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: scheme.primary.withValues(alpha: 0.35),
          width: 1.5,
        ),
      ),
      child: ClipOval(
        child: url == null
            ? ColoredBox(
                color: scheme.surfaceContainerHighest,
                child: Icon(
                  Icons.person_rounded,
                  color: scheme.onSurfaceVariant,
                  size: size * 0.5,
                ),
              )
            : cachedNetworkImage(imageUrl: url, fit: BoxFit.cover),
      ),
    );
    final badged = badge <= 0
        ? child
        : Stack(
            clipBehavior: Clip.none,
            children: [
              child,
              PositionedDirectional(
                end: -2,
                top: -2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: badge > 9 ? 4 : 0),
                  constraints: const BoxConstraints(
                    minWidth: 18,
                    minHeight: 18,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: scheme.error,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: scheme.surface, width: 1.5),
                  ),
                  child: Text(
                    badge > 99 ? '99+' : '$badge',
                    style: context.textTheme.labelSmall?.copyWith(
                      color: scheme.onError,
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ],
          );
    if (onTap == null) return badged;
    return DpadFocusable(
      onSelect: onTap,
      onLongSelect: onLongPress,
      builder: dpadIconFocus(),
      child: badged,
    );
  }
}
