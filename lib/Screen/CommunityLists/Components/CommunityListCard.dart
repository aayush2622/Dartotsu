import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/SectionCard.dart';

class CommunityCovers extends StatelessWidget {
  final List<String> covers;
  final double height;

  const CommunityCovers({super.key, required this.covers, this.height = 84});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final width = height * 0.68;
    final shown = covers.take(3).toList();
    final step = width * 0.42;
    return SizedBox(
      width: width + step * (shown.length < 2 ? 0 : shown.length - 1),
      height: height,
      child: Stack(
        children: [
          for (var i = shown.length - 1; i >= 0; i--)
            PositionedDirectional(
              start: step * i,
              top: 0,
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  color: scheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: scheme.surface, width: 2),
                ),
                clipBehavior: Clip.antiAlias,
                child: cachedNetworkImage(
                  imageUrl: shown[i],
                  fit: BoxFit.cover,
                  width: width,
                  height: height,
                ),
              ),
            ),
          if (shown.isEmpty)
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: scheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.collections_bookmark_rounded,
                color: scheme.onSurfaceVariant,
              ),
            ),
        ],
      ),
    );
  }
}

class CommunityListCard extends StatelessWidget {
  final String title;
  final List<String> covers;
  final String? author;
  final String meta;
  final String? description;
  final List<(String, Color)> tags;
  final VoidCallback? onTap;
  final VoidCallback? onAuthor;

  const CommunityListCard({
    super.key,
    required this.title,
    this.covers = const [],
    this.author,
    this.meta = '',
    this.description,
    this.tags = const [],
    this.onTap,
    this.onAuthor,
  });

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final text = context.textTheme;
    return Clickable(
      onTap: onTap,
      child: SectionCard(
        padding: EdgeInsets.all(Dimens.cardPad),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommunityCovers(covers: covers),
            SizedBox(width: Dimens.gap),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: text.titleSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  if (author != null && author!.isNotEmpty) ...[
                    SizedBox(height: Dimens.gapXs),
                    Clickable(
                      onTap: onAuthor,
                      child: Text(
                        author!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: text.bodySmall?.copyWith(
                          color: onAuthor == null
                              ? scheme.onSurfaceVariant
                              : scheme.primary,
                        ),
                      ),
                    ),
                  ],
                  if (meta.isNotEmpty) ...[
                    SizedBox(height: Dimens.gapXs),
                    Text(
                      meta,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: text.bodySmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                  if ((description ?? '').isNotEmpty) ...[
                    SizedBox(height: Dimens.gapXs),
                    Text(
                      description!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: text.bodySmall,
                    ),
                  ],
                  if (tags.isNotEmpty) ...[
                    SizedBox(height: Dimens.gapSm),
                    Wrap(
                      spacing: Dimens.gapXs,
                      children: [
                        for (final (label, color) in tags)
                          Chip(
                            label: Text(label),
                            visualDensity: VisualDensity.compact,
                            labelStyle: text.labelSmall?.copyWith(color: color),
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
