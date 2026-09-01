import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';

import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../Components/CachedNetworkImage.dart';

/// One item in a horizontal rail — a poster/portrait, a two-line title and an
/// optional one-line subtitle. Media cards, character cards and staff cards all
/// use this so their dimensions and padding stay identical everywhere.
class RailCard extends StatefulWidget {
  final String? imageUrl;
  final String title;
  final String? subtitle;

  /// Small overlay pinned to the image's bottom-right (e.g. a score badge).
  final Widget? badge;

  /// Small overlay pinned to the image's bottom-left (e.g. an "airing" dot).
  final Widget? cornerMark;

  /// 0–1 watched/read fraction, drawn as a thin bar under the image.
  final double? progress;

  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  const RailCard({
    super.key,
    required this.title,
    this.imageUrl,
    this.subtitle,
    this.badge,
    this.cornerMark,
    this.progress,
    this.onTap,
    this.onLongPress,
  });

  @override
  State<RailCard> createState() => _RailCardState();
}

class _RailCardState extends State<RailCard> {
  bool _hover = false;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final w = Dimens.railItemW;

    final card = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: w,
          height: Dimens.railImageH,
          child: Card(
            elevation: 3,
            margin: EdgeInsets.zero,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimens.radiusSm),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                cachedNetworkImage(
                  imageUrl: widget.imageUrl ?? '',
                  fit: BoxFit.cover,
                  placeholder: (_, _) =>
                      ColoredBox(color: scheme.surfaceContainerHighest),
                  errorWidget: (_, _, _) => Icon(
                    Icons.broken_image_rounded,
                    color: scheme.error,
                    size: 30,
                  ),
                ),
                if (widget.cornerMark != null)
                  Positioned(bottom: 4, left: 4, child: widget.cornerMark!),
                if (widget.badge != null)
                  Positioned(right: 0, bottom: 0, child: widget.badge!),
              ],
            ),
          ),
        ),
        if (widget.progress case final p?) ...[
          SizedBox(height: Dimens.gapXs),
          _ProgressBar(fraction: p, width: w),
        ],
        SizedBox(height: Dimens.gapSm),
        SizedBox(
          width: w,
          child: Text(
            widget.title,
            style: context.textTheme.bodyLarge,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (widget.subtitle != null && widget.subtitle!.isNotEmpty)
          SizedBox(
            width: w,
            child: Text(
              widget.subtitle!,
              style: context.textTheme.labelMedium?.copyWith(
                color: scheme.onSurfaceVariant,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
      ],
    );

    final gesture = MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: widget.onTap,
        onLongPress: widget.onLongPress,
        child: card,
      ),
    );

    if (widget.onTap == null) {
      return _scaled(gesture, _hover ? 1.05 : 1.0);
    }
    return DpadFocusable(
      onSelect: widget.onTap,
      onLongSelect: widget.onLongPress,
      builder: (context, state, child) =>
          _scaled(child, (_hover || state.focused) ? 1.06 : 1.0),
      child: gesture,
    );
  }

  Widget _scaled(Widget child, double scale) => AnimatedScale(
    scale: scale,
    duration: const Duration(milliseconds: 180),
    curve: Curves.easeOut,
    child: child,
  );
}

class _ProgressBar extends StatelessWidget {
  final double fraction;
  final double width;
  const _ProgressBar({required this.fraction, required this.width});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(3),
      child: SizedBox(
        width: width,
        height: 4,
        child: ColoredBox(
          color: scheme.surfaceContainerHighest,
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: fraction.clamp(0.0, 1.0),
            child: ColoredBox(color: scheme.primary),
          ),
        ),
      ),
    );
  }
}

/// Score pill shown on a media card's image corner.
class RailScoreBadge extends StatelessWidget {
  final double score;
  final bool highlight;
  const RailScoreBadge({super.key, required this.score, this.highlight = false});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final bg = highlight ? scheme.tertiary : scheme.primary;
    final fg = highlight ? scheme.onTertiary : scheme.onPrimary;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(Dimens.radiusSm - 2),
          bottomRight: Radius.circular(Dimens.radiusSm - 1),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            score.toStringAsFixed(1),
            style: context.textTheme.labelMedium?.copyWith(
              color: fg,
              fontWeight: FontWeight.w800,
            ),
          ),
          Icon(Icons.star_rounded, color: fg, size: 13),
        ],
      ),
    );
  }
}

/// The pulsing "currently airing" dot on a media card.
class RailAiringDot extends StatelessWidget {
  const RailAiringDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 14,
      height: 14,
      decoration: BoxDecoration(
        color: const Color(0xFF6BF170),
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFF208358), width: 2),
      ),
    );
  }
}
