import '../../../Utils/Functions/NavigateToScreen.dart';

import 'dart:async';

import 'package:flutter/material.dart';

import '../../../Core/Services/Api/TraceMoe.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Function.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import 'ReverseSearchSheet.dart';

Future<TraceHit?> showImageSearch(BuildContext context) =>
    showCustomBottomDialog<TraceHit>(
      context,
      ReverseSearchSheet<TraceHit>(
        title: getString.imageSearchTitle,
        intro: getString.imageSearchIntro,
        empty: getString.imageSearchEmpty,
        credit: getString.imageSearchCredit,
        byBytes: (data, name) => TraceMoe.byBytes(data, name: name),
        byUrl: TraceMoe.byUrl,
        placeholder: _placeholder,
        tile: (hit) => _HitTile(hit: hit),
      ),
    );

const _placeholder = TraceHit(
  anilistId: 0,
  title: 'Loading the title of the match',
  episode: '12',
  from: 600,
  similarity: 0.95,
);

class _HitTile extends StatelessWidget {
  final TraceHit hit;

  const _HitTile({required this.hit});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final text = context.textTheme;
    final percent = (hit.similarity * 100).round();
    final low = hit.similarity < 0.87;
    final detail = [
      if (hit.episode != null) getString.imageSearchEpisode(hit.episode!),
      getString.imageSearchAt(hit.time),
    ].join(' · ');
    return Clickable(
      onTap: () => popPage(context, hit),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: scheme.surfaceContainerHigh,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(Dimens.gap),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  width: 128,
                  height: 72,
                  child: cachedNetworkImage(
                    imageUrl: hit.image,
                    fit: BoxFit.cover,
                    width: 128,
                    height: 72,
                  ),
                ),
              ),
              SizedBox(width: Dimens.gap),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hit.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: text.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      detail,
                      style: text.labelMedium?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                    SizedBox(height: Dimens.gapSm),
                    Wrap(
                      spacing: 6,
                      runSpacing: 4,
                      children: [
                        _chip(
                          context,
                          getString.imageSearchSimilarity(percent),
                          low ? scheme.errorContainer : scheme.primaryContainer,
                          low
                              ? scheme.onErrorContainer
                              : scheme.onPrimaryContainer,
                        ),
                        if (hit.adult)
                          _chip(
                            context,
                            getString.imageSearchAdult,
                            scheme.tertiaryContainer,
                            scheme.onTertiaryContainer,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              if (hit.video != null)
                IconButton(
                  tooltip: getString.imageSearchPreview,
                  icon: const Icon(Icons.play_circle_outline_rounded),
                  onPressed: () => unawaited(openLinkInBrowser(hit.video!)),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _chip(BuildContext context, String label, Color bg, Color fg) =>
      Container(
        padding: EdgeInsets.symmetric(horizontal: Dimens.gapSm, vertical: 3),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          label,
          style: context.textTheme.labelSmall?.copyWith(
            color: fg,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
}
