import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';
import '../../../../Widgets/Components/ThemedContainer.dart';

import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../../Widgets/Components/Clickable.dart';

class SourceBar extends StatelessWidget {
  final Source? source;
  final String status;
  final bool busy;
  final bool canFix;
  final VoidCallback onPick;
  final VoidCallback onWrongTitle;
  final VoidCallback onReset;
  final VoidCallback onTools;
  final bool selectable;

  const SourceBar({
    super.key,
    required this.source,
    required this.status,
    required this.busy,
    required this.canFix,
    required this.onPick,
    required this.onWrongTitle,
    required this.onReset,
    required this.onTools,
    this.selectable = true,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Clickable(
                onTap: selectable ? onPick : null,
                child: ThemedContainer(
                  blur: false,
                  color: scheme.secondaryContainer,
                  borderRadius: const BorderRadius.horizontal(
                    left: Radius.circular(28),
                    right: Radius.circular(6),
                  ),
                  padding: EdgeInsets.zero,
                  child: SizedBox(
                    height: 56,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 16, 0),
                      child: Row(
                        children: [
                          ClipOval(
                            child: SizedBox(
                              width: 34,
                              height: 34,
                              child: cachedNetworkImage(
                                imageUrl: source?.iconUrl,
                                width: 34,
                                height: 34,
                                fit: BoxFit.cover,
                                placeholder: (_, _) => Icon(
                                  Icons.extension_rounded,
                                  color: scheme.onSecondaryContainer,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: Dimens.gap),
                          Expanded(
                            child: Text(
                              source?.name ?? getString.watchSource,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: context.textTheme.titleSmall?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: scheme.onSecondaryContainer,
                              ),
                            ),
                          ),
                          if ((source?.lang ?? '').isNotEmpty) ...[
                            SizedBox(width: Dimens.gapSm),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: scheme.onSecondaryContainer.withValues(
                                  alpha: 0.12,
                                ),
                                borderRadius: BorderRadius.circular(999),
                              ),
                              child: Text(
                                source!.lang!.toUpperCase(),
                                style: context.textTheme.labelSmall?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: scheme.onSecondaryContainer,
                                ),
                              ),
                            ),
                          ],
                          if (selectable) ...[
                            SizedBox(width: Dimens.gapSm),
                            Icon(
                              Icons.expand_more_rounded,
                              color: scheme.onSecondaryContainer,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 2),
            Tooltip(
              message: getString.watchSourceTools,
              child: Material(
                color: scheme.secondaryContainer,
                borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(6),
                  right: Radius.circular(28),
                ),
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: onTools,
                  child: SizedBox(
                    width: 60,
                    height: 56,
                    child: Icon(
                      Icons.settings_rounded,
                      color: scheme.onSecondaryContainer,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: Dimens.gapSm),
        Row(
          children: [
            if (busy)
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: SizedBox(
                  width: 14,
                  height: 14,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: scheme.primary,
                  ),
                ),
              ),
            Expanded(
              child: Text(
                status,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.labelMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
            ),
            if (canFix && selectable) ...[
              TextButton(
                onPressed: onReset,
                child: Text(getString.watchSearchAgain),
              ),
              TextButton(
                onPressed: onWrongTitle,
                child: Text(getString.watchWrongTitle),
              ),
            ],
          ],
        ),
      ],
    );
  }
}
