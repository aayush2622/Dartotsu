import 'package:flutter/material.dart';

import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Function.dart';
import '../../../../Widgets/Components/ProfileCard.dart';
import '../Developer.dart';

class DeveloperCard extends StatelessWidget {
  final Developer developer;
  final bool skeleton;
  final bool wide;

  const DeveloperCard({
    super.key,
    required this.developer,
    this.skeleton = false,
    this.wide = false,
  });

  Color _accent(ColorScheme scheme) {
    final hue = (developer.githubId.hashCode.abs() % 360).toDouble();
    final base = HSLColor.fromColor(scheme.primary);
    return base
        .withHue(hue)
        .withSaturation((base.saturation).clamp(0.45, 0.9))
        .withLightness(scheme.brightness == Brightness.dark ? 0.68 : 0.45)
        .toColor();
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final dev = developer;
    return ProfileCard(
      name: dev.name,
      avatar: dev.pfp,
      banner: dev.banner,
      skeleton: skeleton,
      wide: wide,
      onTap: () => openLinkInBrowser(dev.uri),
      chip: ProfilePill(dev.role, color: _accent(scheme)),
      meta: dev.contributions > 0
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.commit_rounded,
                  size: 15,
                  color: scheme.onSurfaceVariant,
                ),
                const SizedBox(width: 4),
                Text(
                  '${dev.contributions} commit${dev.contributions == 1 ? '' : 's'}',
                ),
              ],
            )
          : null,
    );
  }
}
