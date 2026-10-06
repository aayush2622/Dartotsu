import '../../../../Utils/Nav/DpadNav.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Function.dart';
import '../../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../../Widgets/Components/ThemedContainer.dart';
import '../Developer.dart';

const _bannerH = 76.0;
const _avatarD = 68.0;

class DeveloperCard extends StatelessWidget {
  final Developer developer;
  final bool skeleton;

  const DeveloperCard({
    super.key,
    required this.developer,
    this.skeleton = false,
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
    final accent = _accent(scheme);
    final dev = developer;

    return ThemedContainer(
      blur: false,
      padding: EdgeInsets.zero,
      borderRadius: Dimens.border,
      child: DpadTap(
        onTap: skeleton ? null : () => openLinkInBrowser(dev.uri),
        borderRadius: Dimens.border,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: _bannerH + _avatarD / 2,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Dimens.border.topLeft,
                      topRight: Dimens.border.topRight,
                    ),
                    child: SizedBox(
                      height: _bannerH,
                      width: double.infinity,
                      child: skeleton || (dev.banner ?? '').isEmpty
                          ? ColoredBox(color: scheme.surfaceContainerHighest)
                          : cachedNetworkImage(
                              imageUrl: dev.banner,
                              fit: BoxFit.cover,
                              placeholder: (_, _) => ColoredBox(
                                color: scheme.surfaceContainerHighest,
                              ),
                              errorWidget: (_, _, _) => ColoredBox(
                                color: scheme.surfaceContainerHighest,
                              ),
                            ),
                    ),
                  ),
                  Positioned(
                    left: Dimens.gap,
                    top: _bannerH - _avatarD / 2,
                    child: Container(
                      width: _avatarD,
                      height: _avatarD,
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: scheme.surfaceContainerHigh,
                      ),
                      child: ClipOval(
                        child: skeleton || dev.pfp.isEmpty
                            ? ColoredBox(color: scheme.surfaceContainerHighest)
                            : cachedNetworkImage(
                                imageUrl: dev.pfp,
                                fit: BoxFit.cover,
                                placeholder: (_, _) => ColoredBox(
                                  color: scheme.surfaceContainerHighest,
                                ),
                                errorWidget: (_, _, _) => Icon(
                                  Icons.person_rounded,
                                  color: scheme.onSurfaceVariant,
                                ),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                Dimens.gap,
                Dimens.gapXs,
                Dimens.gap,
                Dimens.gap,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    dev.name,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: Dimens.gapXs),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: accent.withValues(alpha: 0.16),
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: Text(
                      dev.role,
                      style: context.textTheme.labelSmall?.copyWith(
                        color: accent,
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  if (dev.contributions > 0) ...[
                    SizedBox(height: Dimens.gapXs),
                    Row(
                      children: [
                        Icon(
                          Icons.commit_rounded,
                          size: 15,
                          color: scheme.onSurfaceVariant,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${dev.contributions} commit${dev.contributions == 1 ? '' : 's'}',
                          style: context.textTheme.labelSmall?.copyWith(
                            color: scheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
