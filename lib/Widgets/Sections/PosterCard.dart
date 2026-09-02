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

enum _ScrimKind { none, short, full }

/// One item in a horizontal shelf — a poster/portrait, a title and an optional
/// subtitle. Media cards, character cards and staff cards all use this; its
/// look follows the current [CardStyle] (normal / on-card / in-card, size,
/// progress, badges). Pass [style] to override (character shelves, the
/// settings preview).
class PosterCard extends StatefulWidget {
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

  const PosterCard({
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
  State<PosterCard> createState() => _PosterCardState();
}

class _PosterCardState extends State<PosterCard> {
  bool _hover = false;

  ColorScheme get _scheme => context.colorScheme;

  CardStyle get _style =>
      widget.style ??
      tryFind<CardStyleController>()?.current ??
      const CardStyle();

  @override
  Widget build(BuildContext context) {
    final s = _style;
    final card = switch (s.mode) {
      CardMode.onCard => _onCard(s),
      CardMode.normal => _normal(s),
      CardMode.inCard => _inCard(s),
    };

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

  bool get _pillOn =>
      _style.showProgress && _style.progress == CardProgressStyle.pill;
  bool get _barOn =>
      _style.showProgress &&
      _style.progress == CardProgressStyle.bar &&
      widget.progress != null;

  // --- modes ---------------------------------------------------------

  Widget _onCard(CardStyle s) => _poster(
    s,
    round: true,
    overlays: [
      const _Scrim(kind: _ScrimKind.full),
      ..._cornerMarks(s),
      if (_barOn)
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: _Bar(fraction: widget.progress!, color: _scheme.primary),
        ),
      if (_pillOn && widget.progressText != null)
        Positioned(
          left: 6,
          right: 6,
          bottom: 6,
          child: _Pill(text: widget.progressText!),
        ),
      Positioned(
        left: 9,
        right: 9,
        bottom: _pillOn && widget.progressText != null ? 32 : 10,
        child: Text(
          widget.title,
          maxLines: s.lines,
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.labelLarge?.copyWith(
            color: Colors.white,
            height: 1.16,
            shadows: const [Shadow(color: Colors.black87, blurRadius: 5)],
          ),
        ),
      ),
    ],
  );

  Widget _normal(CardStyle s) {
    final w = s.itemWidth;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _poster(
          s,
          round: true,
          overlays: [
            if (_pillOn) const _Scrim(kind: _ScrimKind.full),
            ..._cornerMarks(s),
            if (_barOn)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: _Bar(fraction: widget.progress!, color: _scheme.primary),
              ),
            if (_pillOn && widget.progressText != null)
              Positioned(
                left: 6,
                right: 6,
                bottom: 6,
                child: _Pill(text: widget.progressText!),
              ),
          ],
        ),
        const SizedBox(height: 7),
        _titleBelow(s, w),
        if (_showSub(s)) _subtitleBelow(s, w),
      ],
    );
  }

  Widget _inCard(CardStyle s) {
    final w = s.itemWidth;
    final imgH = s.imageHeight;
    final scoreOverlaps = s.showScore && widget.score != null;
    final onRight =
        s.scoreCorner == CardCorner.bottomRight ||
        s.scoreCorner == CardCorner.topRight ||
        s.scoreCorner == CardCorner.none;

    return Container(
      width: w,
      decoration: BoxDecoration(
        color: _scheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(s.radius),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _poster(
                s,
                round: false,
                overlays: [
                  const _Scrim(kind: _ScrimKind.short),
                  if (s.showAiring && widget.airing)
                    _corner(CardCorner.topLeft, const _AiringDot()),
                ],
              ),
              if (_barOn)
                _Bar(
                  fraction: widget.progress!,
                  color: _scheme.primary,
                  height: 4,
                ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, scoreOverlaps ? 13 : 8, 9, 9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _titleBelow(s, w - 18),
                    if (_showSub(s)) _subtitleBelow(s, w - 18),
                  ],
                ),
              ),
            ],
          ),
          if (scoreOverlaps)
            Positioned(
              right: onRight ? 8 : null,
              left: onRight ? null : 8,
              top: imgH - 10,
              child: _ScoreBadge(
                score: widget.score!,
                highlight: widget.scoreHighlight,
              ),
            ),
        ],
      ),
    );
  }

  // --- pieces -------------------------------------------------------

  List<Widget> _cornerMarks(CardStyle s) => [
    if (s.showScore && widget.score != null)
      _corner(
        s.scoreCorner,
        _ScoreBadge(score: widget.score!, highlight: widget.scoreHighlight),
      ),
    if (s.showAiring && widget.airing)
      _corner(_airingCorner(s.scoreCorner), const _AiringDot()),
  ];

  Widget _poster(
    CardStyle s, {
    required List<Widget> overlays,
    required bool round,
  }) {
    final base = SizedBox(
      width: s.itemWidth,
      height: s.imageHeight,
      child: Stack(
        fit: StackFit.expand,
        children: [_image(_scheme), ...overlays],
      ),
    );
    return round
        ? ClipRRect(borderRadius: BorderRadius.circular(s.radius), child: base)
        : base;
  }

  bool _showSub(CardStyle s) =>
      (s.showInfo || s.preset == 'people') &&
      (widget.subtitle?.isNotEmpty ?? false);

  Widget _titleBelow(CardStyle s, double width) => SizedBox(
    width: width,
    child: Text(
      widget.title,
      style: context.textTheme.bodyLarge,
      maxLines: s.lines,
      overflow: TextOverflow.ellipsis,
    ),
  );

  Widget _subtitleBelow(CardStyle s, double width) => SizedBox(
    width: width,
    child: Text(
      widget.subtitle!,
      style: context.textTheme.labelMedium?.copyWith(
        color: _scheme.onSurfaceVariant,
      ),
      maxLines: s.preset == 'people' ? 2 : 1,
      overflow: TextOverflow.ellipsis,
    ),
  );

  Widget _image(ColorScheme scheme) {
    if (widget.demo && (widget.imageUrl?.isEmpty ?? true)) {
      return DecoratedBox(
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
      );
    }
    return cachedNetworkImage(
      imageUrl: widget.imageUrl ?? '',
      fit: BoxFit.cover,
      placeholder: (_, _) => ColoredBox(color: scheme.surfaceContainerHighest),
      errorWidget: (_, _, _) => ColoredBox(
        color: scheme.surfaceContainerHighest,
        child: Icon(Icons.broken_image_rounded, color: scheme.error, size: 28),
      ),
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
  final _ScrimKind kind;
  const _Scrim({required this.kind});

  @override
  Widget build(BuildContext context) {
    final (stop, color) = switch (kind) {
      _ScrimKind.full => (0.42, const Color(0xE6060A12)),
      _ScrimKind.short => (0.64, const Color(0xB3060A12)),
      _ScrimKind.none => (1.0, const Color(0x00000000)),
    };
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [stop, 1.0],
          colors: [Colors.transparent, color],
        ),
      ),
    );
  }
}

class _ScoreBadge extends StatelessWidget {
  final double score;
  final bool highlight;
  const _ScoreBadge({required this.score, required this.highlight});

  @override
  Widget build(BuildContext context) {
    final fg = highlight ? context.colorScheme.tertiary : Colors.white;
    return Container(
      height: 20,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: const Color(0xCC060A12),
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
  final double height;
  const _Bar({required this.fraction, required this.color, this.height = 3});

  @override
  Widget build(BuildContext context) => SizedBox(
    height: height,
    child: ColoredBox(
      color: const Color(0x59060A12),
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
