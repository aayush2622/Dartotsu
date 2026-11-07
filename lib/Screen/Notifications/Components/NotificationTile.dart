import 'package:flutter/material.dart';

import '../../../Core/Services/ServiceNotification.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Nav/DpadNav.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/SectionCard.dart';
import '../NotificationsState.dart';

class NotificationTile extends StatelessWidget {
  final ServiceNotification item;
  final IconData icon;
  final VoidCallback? onTap;
  final VoidCallback? onImageTap;
  final bool showTime;

  const NotificationTile({
    super.key,
    required this.item,
    required this.icon,
    this.onTap,
    this.onImageTap,
    this.showTime = true,
  });

  Widget _image(Widget child) =>
      onImageTap == null ? child : Clickable(onTap: onImageTap, child: child);

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimens.gapXs),
      child: SectionCard(
        padding: EdgeInsets.zero,
        child: Material(
          color: Colors.transparent,
          borderRadius: Dimens.border,
          clipBehavior: Clip.antiAlias,
          child: DpadTap(
            borderRadius: Dimens.border,
            onTap: onTap,
            child: Padding(
              padding: EdgeInsets.all(Dimens.gapSm + 2),
              child: Row(
                children: [
                  _image(
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: SizedBox(
                        width: 44,
                        height: 58,
                        child: item.imageUrl == null
                            ? ColoredBox(
                                color: scheme.surfaceContainerHighest,
                                child: Icon(
                                  icon,
                                  color: scheme.onSurfaceVariant,
                                  size: 20,
                                ),
                              )
                            : cachedNetworkImage(
                                imageUrl: item.imageUrl,
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                  ),
                  SizedBox(width: Dimens.gap),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.text,
                          style: context.textTheme.bodyMedium,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        if (showTime) ...[
                          SizedBox(height: Dimens.gapSm),
                          Row(
                            children: [
                              Icon(icon, size: 13, color: scheme.primary),
                              SizedBox(width: Dimens.gapSm),
                              Text(
                                NotificationsState.ago(item.createdAt),
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
                  if (onTap != null)
                    Icon(
                      Icons.chevron_right_rounded,
                      color: scheme.onSurfaceVariant,
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
