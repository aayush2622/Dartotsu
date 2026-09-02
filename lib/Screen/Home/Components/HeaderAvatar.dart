import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';

class HeaderAvatar extends StatelessWidget {
  final String? url;
  final double size;
  final VoidCallback? onTap;

  const HeaderAvatar({super.key, this.url, this.size = 46, this.onTap});

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
    if (onTap == null) return child;
    return DpadFocusable(
      onSelect: onTap,
      effects: const [DpadScaleEffect(scale: 1.06)],
      child: child,
    );
  }
}
