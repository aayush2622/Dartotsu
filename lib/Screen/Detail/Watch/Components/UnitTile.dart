import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../Widgets/Components/ThemedContainer.dart';

import 'package:intl/intl.dart';

import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Downloads/Components/DownloadBadge.dart';
import '../Data/EpisodeUnits.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../../Widgets/Components/Clickable.dart';

String unitLabel(WatchUnit unit, bool anime) => anime
    ? getString.watchEpisodeNumber(unit.number)
    : getString.watchChapterNumber(unit.number);

String unitTitle(WatchUnit unit, bool anime) =>
    unit.title.isEmpty || unit.title == unitLabel(unit, anime)
    ? unitLabel(unit, anime)
    : unit.title;

String? unitSubtitle(WatchUnit unit, bool anime) =>
    unit.title.isEmpty || unit.title == unitLabel(unit, anime)
    ? null
    : unitLabel(unit, anime);

String formatUnitDate(DateTime date) =>
    DateFormat.yMMMd().format(date.toLocal());

class UnitTile extends StatelessWidget {
  final WatchUnit unit;
  final bool anime;
  final int view;
  final bool watched;
  final double? progress;
  final bool next;
  final bool blur;
  final bool showDescription;
  final VoidCallback onTap;
  final VoidCallback? onLongPress;
  final VoidCallback? onInfo;
  final String? downloadId;

  const UnitTile({
    super.key,
    required this.unit,
    required this.anime,
    required this.view,
    required this.watched,
    this.progress,
    required this.next,
    required this.blur,
    required this.showDescription,
    required this.onTap,
    this.onLongPress,
    this.onInfo,
    this.downloadId,
  });

  @override
  Widget build(BuildContext context) => switch (view) {
    1 => _grid(context),
    2 => _compact(context),
    _ => _list(context),
  };

  Widget _thumb(BuildContext context, {double? width, double? height}) {
    final scheme = context.colorScheme;
    final image = unit.thumbnail == null
        ? ColoredBox(
            color: scheme.surfaceContainerHighest,
            child: Center(
              child: Icon(
                Icons.play_circle_outline_rounded,
                color: scheme.onSurfaceVariant,
              ),
            ),
          )
        : cachedNetworkImage(
            imageUrl: unit.thumbnail,
            fit: BoxFit.cover,
            width: width,
            height: height,
            placeholder: (_, _) =>
                ColoredBox(color: scheme.surfaceContainerHighest),
          );
    final blurred = blur && !watched && !next && unit.thumbnail != null
        ? ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
            child: image,
          )
        : image;
    return ClipRRect(
      borderRadius: BorderRadius.circular(Dimens.radiusSm - 6),
      child: SizedBox(width: width, height: height, child: blurred),
    );
  }

  Widget _badge(
    BuildContext context,
    String text,
    Color background,
    Color color,
  ) => DecoratedBox(
    decoration: BoxDecoration(
      color: background,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      child: Text(
        text,
        style: context.textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );

  List<Widget> _flags(BuildContext context) {
    final scheme = context.colorScheme;
    return [
      if (downloadId != null) DownloadBadge(id: downloadId!),
      if (unit.filler)
        _badge(
          context,
          getString.watchFiller,
          scheme.tertiaryContainer,
          scheme.onTertiaryContainer,
        ),
      if (unit.recap)
        _badge(
          context,
          getString.watchRecap,
          scheme.secondaryContainer,
          scheme.onSecondaryContainer,
        ),
    ];
  }

  Widget _bar(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 6),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(2),
      child: LinearProgressIndicator(
        value: progress,
        minHeight: 3,
        stopIndicatorRadius: 0,
      ),
    ),
  );

  Widget _list(BuildContext context) {
    final scheme = context.colorScheme;
    final subtitle = unitSubtitle(unit, anime);
    final meta = [
      if (unit.date != null) formatUnitDate(unit.date!),
      if (unit.runtime != null) '${unit.runtime} min',
      if (unit.scanlator?.isNotEmpty ?? false) unit.scanlator!,
    ].join(' · ');
    final description = showDescription && anime ? unit.description : null;
    return Clickable(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Opacity(
        opacity: watched ? 0.55 : 1,
        child: ThemedContainer(
          blur: false,
          color: next
              ? scheme.primaryContainer.withValues(alpha: 0.5)
              : scheme.surfaceContainerLow,
          borderRadius: Dimens.borderSm,
          padding: EdgeInsets.zero,
          child: Padding(
            padding: EdgeInsets.all(Dimens.gapSm),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (anime) ...[
                  _thumb(context, width: 128, height: 72),
                  SizedBox(width: Dimens.gap),
                ],
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (subtitle != null)
                                  Text(
                                    subtitle,
                                    style: context.textTheme.labelMedium
                                        ?.copyWith(
                                          color: scheme.primary,
                                          fontWeight: FontWeight.w700,
                                        ),
                                  ),
                                Text(
                                  unitTitle(unit, anime),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: context.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          if (watched || onInfo != null)
                            SizedBox(
                              width: onInfo != null && watched ? 64 : 32,
                              height: 32,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (watched)
                                    SizedBox(
                                      width: 32,
                                      child: Icon(
                                        Icons.check_circle_rounded,
                                        size: 20,
                                        color: scheme.primary,
                                      ),
                                    ),
                                  if (onInfo != null)
                                    SizedBox(
                                      width: 32,
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: const BoxConstraints(
                                          minWidth: 32,
                                          minHeight: 32,
                                        ),
                                        onPressed: onInfo,
                                        icon: Icon(
                                          Icons.info_outline_rounded,
                                          size: 20,
                                          color: scheme.onSurfaceVariant,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                        ],
                      ),
                      if (description != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: Text(
                            description,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.bodySmall?.copyWith(
                              color: scheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      if (meta.isNotEmpty ||
                          unit.filler ||
                          unit.recap ||
                          downloadId != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Wrap(
                            spacing: 6,
                            runSpacing: 4,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              ..._flags(context),
                              if (meta.isNotEmpty)
                                Text(
                                  meta,
                                  style: context.textTheme.labelSmall?.copyWith(
                                    color: scheme.onSurfaceVariant,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      if (progress != null) _bar(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _grid(BuildContext context) {
    final scheme = context.colorScheme;
    return Clickable(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Opacity(
        opacity: watched ? 0.55 : 1,
        child: ThemedContainer(
          blur: false,
          color: next
              ? scheme.primaryContainer.withValues(alpha: 0.5)
              : scheme.surfaceContainerLow,
          borderRadius: Dimens.borderSm,
          padding: EdgeInsets.zero,
          child: Padding(
            padding: EdgeInsets.all(Dimens.gapSm - 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      _thumb(context),
                      PositionedDirectional(
                        start: 6,
                        top: 6,
                        child: _badge(
                          context,
                          unit.number,
                          Colors.black.withValues(alpha: 0.65),
                          Colors.white,
                        ),
                      ),
                      if (unit.filler || unit.recap || downloadId != null)
                        PositionedDirectional(
                          end: 6,
                          top: 6,
                          child: Row(children: _flags(context)),
                        ),
                      if (progress != null)
                        PositionedDirectional(
                          start: 0,
                          end: 0,
                          bottom: 0,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              bottom: Radius.circular(12),
                            ),
                            child: LinearProgressIndicator(
                              value: progress,
                              minHeight: 4,
                              backgroundColor: Colors.black38,
                              stopIndicatorRadius: 0,
                            ),
                          ),
                        ),
                      if (watched)
                        const PositionedDirectional(
                          end: 6,
                          bottom: 6,
                          child: Icon(
                            Icons.check_circle_rounded,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  unitTitle(unit, anime),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _compact(BuildContext context) {
    final scheme = context.colorScheme;
    final background = next
        ? scheme.primary
        : unit.filler
        ? scheme.tertiaryContainer
        : scheme.secondaryContainer;
    final foreground = next
        ? scheme.onPrimary
        : unit.filler
        ? scheme.onTertiaryContainer
        : scheme.onSecondaryContainer;
    return Clickable(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Opacity(
        opacity: watched ? 0.45 : 1,
        child: ThemedContainer(
          blur: false,
          color: background,
          borderRadius: BorderRadius.circular(16),
          padding: EdgeInsets.zero,
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (progress != null)
                PositionedDirectional(
                  start: 8,
                  end: 8,
                  bottom: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: LinearProgressIndicator(
                      value: progress,
                      minHeight: 3,
                      color: foreground,
                      stopIndicatorRadius: 0,
                      backgroundColor: foreground.withValues(alpha: 0.25),
                    ),
                  ),
                ),
              if (downloadId != null)
                PositionedDirectional(
                  top: 5,
                  end: 5,
                  child: DownloadDot(id: downloadId!),
                ),
              Text(
                unit.number,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.labelLarge?.copyWith(
                  color: foreground,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
