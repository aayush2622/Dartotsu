import '../../Utils/Animation/WidgetAnimations.dart';
import 'package:flutter/material.dart';

import '../../Core/Services/ScoreFormat.dart';
import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../Components/CachedNetworkImage.dart';
import '../Components/ThemedContainer.dart';
import '../../Core/State/State.dart';

enum _ScrimKind { none, short, full }

class PosterCard extends StatefulWidget {
  final String? imageUrl;
  final String title;

  final String? subtitle;

  final Widget? overlay;

  final double? score;
  final bool scoreHighlight;
  final bool airing;

  final double? progress;

  final String? progressText;
  final int? unread;
  final String? estimate;

  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final bool focusable;

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
    this.overlay,
    this.score,
    this.scoreHighlight = false,
    this.airing = false,
    this.progress,
    this.progressText,
    this.unread,
    this.estimate,
    this.onTap,
    this.onLongPress,
    this.focusable = false,
    this.style,
    this.demo = false,
    this.heroTag,
  });

  @override
  State<PosterCard> createState() => _PosterCardState();
}

class _PosterCardState extends State<PosterCard> {
  final _hover = false.live;
  late CardStyle _style;

  ColorScheme get _scheme => context.colorScheme;

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final s =
        widget.style ??
        tryFind<CardStyleController>()?.current ??
        CardStyle.cozy;
    _style = s;
    final card = switch (s.mode) {
      CardMode.onCard => _onCard(s),
      CardMode.normal => _normal(s),
      CardMode.inCard => _inCard(s),
    };

    final visual = MouseRegion(
      cursor: widget.onTap == null
          ? MouseCursor.defer
          : SystemMouseCursors.click,
      onEnter: (_) => _hover.value = true,
      onExit: (_) => _hover.value = false,
      child: card,
    );

    if (widget.onTap == null && !widget.focusable) {
      return Watch(() => _scaled(visual, _hover.value ? 1.02 : 1.0));
    }
    return DpadFocusable(
      onSelect: widget.onTap ?? () {},
      onLongSelect: widget.onLongPress,
      builder: (context, state, child) => Watch(
        () => _scaled(
          child,
          kDpadFocused(state)
              ? 1.1
              : _hover.value
              ? 1.03
              : 1.0,
        ),
      ),
      child: visual,
    );
  }

  bool get _pillOn =>
      _style.showProgress && _style.effectiveProgress == CardProgressStyle.pill;

  bool get _barOn =>
      _style.showProgress &&
      _style.effectiveProgress == CardProgressStyle.bar &&
      widget.progress != null;

  Color _cardSurface() => _scheme.surfaceContainerHighest;

  Widget _onCard(CardStyle s) {
    final pill = _pillOn && widget.progressText != null;
    final showSub = s.showInfo && (widget.subtitle?.isNotEmpty ?? false);
    return _poster(
      s,
      round: true,
      overlays: [
        _Scrim(kind: pill ? _ScrimKind.full : _ScrimKind.short),
        ..._cornerMarks(s, bottomTaken: true),
        ..._sourceMark(bottom: pill ? 32 : 10),
        if (_barOn)
          PositionedDirectional(
            start: 0,
            end: 0,
            bottom: 0,
            child: _Bar(fraction: widget.progress!, color: _scheme.primary),
          ),
        if (pill)
          PositionedDirectional(
            start: 6,
            end: 6,
            bottom: 6,
            child: _Pill(text: widget.progressText!),
          ),
        PositionedDirectional(
          start: 9,
          end: 9,
          bottom: pill ? 32 : 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                maxLines: s.lines,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.labelLarge?.copyWith(
                  color: Colors.white,
                  height: 1.16,
                  shadows: const [Shadow(color: Colors.black87, blurRadius: 5)],
                ),
              ),
              if (showSub)
                _subtitleText(
                  context.textTheme.labelSmall?.copyWith(
                    color: Colors.white70,
                    shadows: const [
                      Shadow(color: Colors.black87, blurRadius: 4),
                    ],
                  ),
                  Color.lerp(_scheme.tertiary, Colors.white, .4)!,
                  1,
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _normal(CardStyle s) {
    final w = s.itemWidth;
    final showBar = _barOn;
    final pill = _pillOn && widget.progressText != null;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        DecoratedBox(
          position: DecorationPosition.foreground,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(s.radius),
            border: Border.all(
              color: _scheme.outlineVariant.withValues(alpha: 0.45),
              width: 1,
            ),
          ),
          child: _poster(
            s,
            round: true,
            overlays: [
              ..._cornerMarks(s, bottomTaken: showBar || pill),
              ..._sourceMark(
                bottom: pill
                    ? 32
                    : showBar
                    ? 8
                    : 6,
              ),
              if (showBar)
                PositionedDirectional(
                  start: 0,
                  end: 0,
                  bottom: 0,
                  child: _Bar(
                    fraction: widget.progress!,
                    color: _scheme.primary,
                  ),
                ),
              if (pill)
                PositionedDirectional(
                  start: 6,
                  end: 6,
                  bottom: 6,
                  child: _Pill(text: widget.progressText!),
                ),
            ],
          ),
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

    return SizedBox(
      width: w,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(s.radius),
        child: ThemedContainer(
          blur: false,
          color: _cardSurface(),
          padding: EdgeInsets.zero,
          borderRadius: BorderRadius.circular(s.radius),
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
                      if (pill) const _Scrim(kind: _ScrimKind.short),
                      ..._sourceMark(bottom: pill ? 32 : 6),
                      ..._grouped([
                        if (hasScore && !scoreFloats)
                          (
                            posterCorner,
                            _ScoreBadge(
                              score: widget.score!,
                              highlight: widget.scoreHighlight,
                            ),
                          ),
                        if (_statusMark(s) case final status?)
                          (
                            _statusCorner(s, posterCorner, bottomTaken: true),
                            status,
                          ),
                      ]),
                      if (pill)
                        PositionedDirectional(
                          start: 6,
                          end: 6,
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
        ),
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

  List<Widget> _sourceMark({required double bottom}) {
    final overlay = widget.overlay;
    if (overlay == null) return const [];
    return [PositionedDirectional(start: 6, bottom: bottom, child: overlay)];
  }

  Widget? _statusMark(CardStyle s) {
    final unread = s.showUnread ? widget.unread : null;
    final airing = s.showAiring && widget.airing;
    if (unread == null && !airing) return null;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (unread != null)
          _UnreadBadge(count: unread, estimated: widget.estimate != null),
        if (unread != null && airing) const SizedBox(width: 5),
        if (airing) const _AiringDot(),
      ],
    );
  }

  CardCorner _statusCorner(
    CardStyle s,
    CardCorner score, {
    required bool bottomTaken,
  }) {
    final c = s.statusCorner;
    if (c == CardCorner.auto || c == CardCorner.none) {
      return _airingCorner(score);
    }
    if (!bottomTaken) return c;
    return switch (c) {
      CardCorner.bottomLeft => CardCorner.topLeft,
      CardCorner.bottomRight => CardCorner.topRight,
      _ => c,
    };
  }

  List<Widget> _grouped(List<(CardCorner, Widget)> marks) {
    final byCorner = <CardCorner, List<Widget>>{};
    for (final (corner, mark) in marks) {
      (byCorner[corner] ??= []).add(mark);
    }
    return [
      for (final e in byCorner.entries)
        _corner(
          e.key,
          e.value.length == 1
              ? e.value.first
              : Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final (i, mark) in e.value.indexed) ...[
                      if (i > 0) const SizedBox(width: 5),
                      mark,
                    ],
                  ],
                ),
        ),
    ];
  }

  List<Widget> _cornerMarks(CardStyle s, {bool bottomTaken = false}) {
    final corner = _scoreCorner(s, bottomTaken: bottomTaken);
    return _grouped([
      if (s.showScore && widget.score != null)
        (
          corner,
          _ScoreBadge(score: widget.score!, highlight: widget.scoreHighlight),
        ),
      if (_statusMark(s) case final status?)
        (_statusCorner(s, corner, bottomTaken: bottomTaken), status),
    ]);
  }

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
        children: [_heroImage(s), ...overlays],
      ),
    );
    return round
        ? ClipRRect(borderRadius: BorderRadius.circular(s.radius), child: base)
        : base;
  }

  Widget _heroImage(CardStyle s) {
    final image = _image(_scheme, s);
    if (widget.heroTag == null) return image;
    return Hero(
      tag: widget.heroTag!,
      flightShuttleBuilder: (_, _, _, _, toContext) =>
          (toContext.widget as Hero).child,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(s.radius),
        child: image,
      ),
    );
  }

  bool get _progressOverlaid =>
      (_pillOn && widget.progressText != null) || _barOn;

  bool _showSub(CardStyle s) =>
      (s.showInfo ||
          s.preset == 'people' ||
          (s.mayShowInfo && !_progressOverlaid)) &&
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
    child: _subtitleText(
      context.textTheme.labelMedium?.copyWith(color: _scheme.onSurfaceVariant),
      _scheme.tertiary,
      s.preset == 'people' ? 2 : 1,
    ),
  );

  Widget _subtitleText(TextStyle? style, Color accent, int lines) {
    final text = widget.subtitle!;
    final estimate = widget.estimate;
    if (estimate == null || !text.endsWith(estimate)) {
      return Text(
        text,
        style: style,
        maxLines: lines,
        overflow: TextOverflow.ellipsis,
      );
    }
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: text.substring(0, text.length - estimate.length)),
          TextSpan(
            text: estimate,
            style: TextStyle(color: accent),
          ),
        ],
      ),
      style: style,
      maxLines: lines,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _image(ColorScheme scheme, CardStyle s) {
    if (widget.demo && (widget.imageUrl?.isEmpty ?? true)) {
      return DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
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
      cacheWidth: (s.itemWidth * MediaQuery.devicePixelRatioOf(context))
          .round(),
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
    duration: animDuration(180),
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
    final scheme = context.colorScheme;
    final fg = highlight ? scheme.onPrimaryContainer : scheme.onSurface;
    return Container(
      height: 20,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: highlight
            ? scheme.primaryContainer
            : scheme.surfaceContainerHighest.withValues(alpha: 0.92),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            highlight ? score.userScoreLabel : score.toStringAsFixed(1),
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

class _UnreadBadge extends StatelessWidget {
  final int count;
  final bool estimated;

  const _UnreadBadge({required this.count, required this.estimated});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final fill = estimated ? scheme.tertiaryContainer : scheme.primaryContainer;
    final ink = estimated
        ? scheme.onTertiaryContainer
        : scheme.onPrimaryContainer;
    return Container(
      constraints: const BoxConstraints(minWidth: 22),
      height: 22,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: fill,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(
          color: scheme.surface.withValues(alpha: 0.9),
          width: 2,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x59000000),
            blurRadius: 5,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Text(
        count > 99 ? '99+' : '$count',
        maxLines: 1,
        style: context.textTheme.labelSmall?.copyWith(
          color: ink,
          fontWeight: FontWeight.w800,
          height: 1,
        ),
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
        alignment: AlignmentDirectional.centerStart,
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
      color: context.colorScheme.primary,
      borderRadius: BorderRadius.circular(999),
    ),
    child: Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: context.textTheme.labelSmall?.copyWith(
        color: context.colorScheme.onPrimary,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
