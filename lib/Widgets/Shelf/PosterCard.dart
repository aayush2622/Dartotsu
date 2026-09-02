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

class PosterCard extends StatefulWidget {
  final String? imageUrl;
  final String title;

  final String? subtitle;

  final double? score;
  final bool scoreHighlight;
  final bool airing;

  final double? progress;

  final String? progressText;

  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  final CardStyle? style;

  final bool demo;

  /// When set, the cover image is a [Hero] with this tag — pair it with the
  /// detail screen's cover for a shared-element open.
  final String? heroTag;

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
    this.heroTag,
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

    final visual = MouseRegion(
      cursor: widget.onTap == null
          ? MouseCursor.defer
          : SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hover = true),
      onExit: (_) => setState(() => _hover = false),
      child: card,
    );

    if (widget.onTap == null) {
      return _scaled(visual, _hover ? 1.02 : 1.0);
    }
    return DpadFocusable(
      onSelect: widget.onTap,
      onLongSelect: widget.onLongPress,
      builder: (context, state, child) =>
          _scaled(child, (_hover || state.focused) ? 1.03 : 1.0),
      child: visual,
    );
  }

  bool get _pillOn =>
      _style.showProgress && _style.progress == CardProgressStyle.pill;

  bool get _barOn =>
      _style.showProgress &&
      _style.progress == CardProgressStyle.bar &&
      widget.progress != null;

  Widget _onCard(CardStyle s) {
    final pill = _pillOn && widget.progressText != null;
    return _poster(
      s,
      round: true,
      overlays: [
        const _Scrim(kind: _ScrimKind.full),
        ..._cornerMarks(s, bottomTaken: pill || _barOn),
        if (_barOn)
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _Bar(fraction: widget.progress!, color: _scheme.primary),
          ),
        if (pill)
          Positioned(
            left: 6,
            right: 6,
            bottom: 6,
            child: _Pill(text: widget.progressText!),
          ),
        Positioned(
          left: 9,
          right: 9,
          bottom: pill ? 32 : 10,
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
  }

  Widget _normal(CardStyle s) {
    final w = s.itemWidth;
    final showBar = _style.showProgress && widget.progress != null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        _poster(
          s,
          round: true,
          overlays: [
            ..._cornerMarks(s, bottomTaken: showBar),
            if (showBar)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: _Bar(fraction: widget.progress!, color: _scheme.primary),
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
    final hasScore = s.showScore && widget.score != null;
    final pill = _pillOn && widget.progressText != null;
    final scoreFloats = hasScore && !pill;
    final posterCorner = _scoreCorner(s, bottomTaken: true);
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
                    _corner(_airingCorner(posterCorner), const _AiringDot()),
                  if (hasScore && !scoreFloats)
                    _corner(
                      posterCorner,
                      _ScoreBadge(
                        score: widget.score!,
                        highlight: widget.scoreHighlight,
                      ),
                    ),
                  if (pill)
                    Positioned(
                      left: 6,
                      right: 6,
                      bottom: 6,
                      child: _Pill(text: widget.progressText!),
                    ),
                ],
              ),
              if (_barOn)
                _Bar(
                  fraction: widget.progress!,
                  color: _scheme.primary,
                  height: 4,
                ),
              Padding(
                padding: EdgeInsets.fromLTRB(9, scoreFloats ? 13 : 8, 9, 9),
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
          if (scoreFloats)
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

  CardCorner _scoreCorner(CardStyle s, {required bool bottomTaken}) {
    final c = s.scoreCorner == CardCorner.none
        ? CardCorner.topLeft
        : s.scoreCorner;
    if (!bottomTaken) return c;
    return switch (c) {
      CardCorner.bottomLeft => CardCorner.topLeft,
      CardCorner.bottomRight => CardCorner.topRight,
      _ => c,
    };
  }

  List<Widget> _cornerMarks(CardStyle s, {bool bottomTaken = false}) {
    final corner = _scoreCorner(s, bottomTaken: bottomTaken);
    return [
      if (s.showScore && widget.score != null)
        _corner(
          corner,
          _ScoreBadge(score: widget.score!, highlight: widget.scoreHighlight),
        ),
      if (s.showAiring && widget.airing)
        _corner(_airingCorner(corner), const _AiringDot()),
    ];
  }

  Widget _poster(
    CardStyle s, {
    required List<Widget> overlays,
    required bool round,
  }) {
    Widget image = _image(_scheme);
    if (widget.heroTag != null) {
      image = Hero(
        tag: widget.heroTag!,
        flightShuttleBuilder: (_, _, _, _, toContext) =>
            (toContext.widget as Hero).child,
        child: image,
      );
    }
    final base = SizedBox(
      width: s.itemWidth,
      height: s.imageHeight,
      child: Stack(fit: StackFit.expand, children: [image, ...overlays]),
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
