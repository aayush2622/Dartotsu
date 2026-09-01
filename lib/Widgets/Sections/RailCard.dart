import 'package:dpad/dpad.dart';
import 'package:flutter/material.dart';

import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../Components/CachedNetworkImage.dart';

const _progressGreen = Color(0xFF37DFA0);
const _progressGreenInk = Color(0xFF05271B);

/// One item in a horizontal rail — a poster/portrait, a title and an optional
/// subtitle. Media cards, character cards and staff cards all use this. Its
/// look (title position, size, progress, badges) follows the current
/// [CardStyle]; pass [style] to override (character rails, the settings
/// preview).
class RailCard extends StatefulWidget {
  final String? imageUrl;
  final String title;

  /// Shown under the title when the style has an info line (media) or always
  /// for people cards (role / VA).
  final String? subtitle;

  final double? score;
  final bool scoreHighlight;
  final bool airing;

  /// 0–1 watched/read fraction — drives the bar.
  final double? progress;

  /// "12 · 24" — drives the pill.
  final String? progressText;

  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  final CardStyle? style;

  /// Paints a gradient placeholder instead of flat grey when there's no image —
  /// used by the card-style settings preview.
  final bool demo;

  const RailCard({
    super.key,
    required this.title,
    this.imageUrl,
    this.subtitle,
    this.score,
    this.scoreHighlight = false,
    this.airing = false,
    this.progress,
    this.progressText,
    this.onTap,
    this.onLongPress,
    this.style,
    this.demo = false,
  });

  @override
  State<RailCard> createState() => _RailCardState();
}

class _RailCardState extends State<RailCard> {
  bool _hover = false;

  CardStyle get _style =>
      widget.style ??
      tryFind<CardStyleController>()?.current ??
      const CardStyle();

  @override
  Widget build(BuildContext context) {
    final s = _style;
    final scheme = context.colorScheme;
    final w = s.itemWidth;
    final imgH = s.imageHeight;
    final overlay = s.title == CardTitle.overlay;

    final poster = ClipRRect(
      borderRadius: BorderRadius.circular(s.radius),
      child: SizedBox(
        width: w,
        height: imgH,
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (widget.demo && (widget.imageUrl?.isEmpty ?? true))
              DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      scheme.primaryContainer,
                      scheme.surfaceContainerHighest,
                      scheme.tertiaryContainer,
                    ],
                  ),
                ),
              )
            else
              cachedNetworkImage(
                imageUrl: widget.imageUrl ?? '',
                fit: BoxFit.cover,
                placeholder: (_, _) =>
                    ColoredBox(color: scheme.surfaceContainerHighest),
                errorWidget: (_, _, _) => ColoredBox(
                  color: scheme.surfaceContainerHighest,
                  child: Icon(
                    Icons.broken_image_rounded,
                    color: scheme.error,
                    size: 28,
                  ),
                ),
              ),
            if (overlay || s.progress == CardProgressStyle.pill) const _Scrim(),
            if (widget.score case final sc?
                when s.scoreCorner != CardCorner.none)
              _corner(
                s.scoreCorner,
                _ScoreBadge(score: sc, highlight: widget.scoreHighlight),
              ),
            if (widget.airing && s.airingDot)
              _corner(_airingCorner(s.scoreCorner), const _AiringDot()),
            if (s.progress == CardProgressStyle.bar && widget.progress != null)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: _Bar(fraction: widget.progress!, color: scheme.primary),
              ),
            if (s.progress == CardProgressStyle.pill &&
                widget.progressText != null)
              Positioned(
                left: 6,
                right: 6,
                bottom: 6,
                child: _Pill(text: widget.progressText!),
              ),
            if (overlay)
              Positioned(
                left: 9,
                right: 9,
                bottom: s.progress == CardProgressStyle.pill ? 32 : 10,
                child: Text(
                  widget.title,
                  maxLines: s.titleLines,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.labelLarge?.copyWith(
                    color: Colors.white,
                    height: 1.16,
                    shadows: const [
                      Shadow(color: Colors.black87, blurRadius: 5),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );

    final people = s.preset == 'people';
    final showSub =
        (s.infoLine || people) && (widget.subtitle?.isNotEmpty ?? false);

    final Widget card;
    if (s.title == CardTitle.below) {
      card = Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          poster,
          const SizedBox(height: 7),
          SizedBox(
            width: w,
            child: Text(
              widget.title,
              style: context.textTheme.bodyLarge,
              maxLines: s.titleLines,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          if (showSub)
            SizedBox(
              width: w,
              child: Text(
                widget.subtitle!,
                style: context.textTheme.labelMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
                maxLines: people ? 2 : 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
        ],
      );
    } else {
      card = poster;
    }

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

  static CardCorner _airingCorner(CardCorner score) =>
      score == CardCorner.topLeft ? CardCorner.topRight : CardCorner.topLeft;

  Widget _corner(CardCorner c, Widget child) => Positioned(
    top: c == CardCorner.topLeft || c == CardCorner.topRight ? 6 : null,
    bottom: c == CardCorner.bottomLeft || c == CardCorner.bottomRight
        ? 6
        : null,
    left: c == CardCorner.topLeft || c == CardCorner.bottomLeft ? 6 : null,
    right: c == CardCorner.topRight || c == CardCorner.bottomRight ? 6 : null,
    child: child,
  );

  Widget _scaled(Widget child, double scale) => AnimatedScale(
    scale: scale,
    duration: const Duration(milliseconds: 180),
    curve: Curves.easeOut,
    child: child,
  );
}

class _Scrim extends StatelessWidget {
  const _Scrim();
  @override
  Widget build(BuildContext context) => const DecoratedBox(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.42, 1.0],
        colors: [Colors.transparent, Color(0xE6060A12)],
      ),
    ),
  );
}

class _ScoreBadge extends StatelessWidget {
  final double score;
  final bool highlight;
  const _ScoreBadge({required this.score, required this.highlight});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final fg = highlight ? scheme.tertiary : Colors.white;
    return Container(
      height: 19,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: const Color(0xB8060A12),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            score.toStringAsFixed(1),
            style: context.textTheme.labelSmall?.copyWith(
              color: fg,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(width: 2),
          Icon(Icons.star_rounded, color: fg, size: 12),
        ],
      ),
    );
  }
}

class _AiringDot extends StatelessWidget {
  const _AiringDot();
  @override
  Widget build(BuildContext context) => Container(
    width: 13,
    height: 13,
    decoration: BoxDecoration(
      color: const Color(0xFF6BF170),
      shape: BoxShape.circle,
      border: Border.all(color: const Color(0xFF0A0F18), width: 2),
    ),
  );
}

class _Bar extends StatelessWidget {
  final double fraction;
  final Color color;
  const _Bar({required this.fraction, required this.color});

  @override
  Widget build(BuildContext context) => SizedBox(
    height: 3,
    child: ColoredBox(
      color: const Color(0x66060A12),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: fraction.clamp(0.0, 1.0),
        child: ColoredBox(color: color),
      ),
    ),
  );
}

class _Pill extends StatelessWidget {
  final String text;
  const _Pill({required this.text});

  @override
  Widget build(BuildContext context) => Container(
    height: 19,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: _progressGreen,
      borderRadius: BorderRadius.circular(999),
    ),
    child: Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: context.textTheme.labelSmall?.copyWith(
        color: _progressGreenInk,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
