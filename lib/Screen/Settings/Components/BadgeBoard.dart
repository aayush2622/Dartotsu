import 'package:flutter/material.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/CardStyle.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Extensions/CardStyleMetrics.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';

enum BadgeMark { score, airing, unread }

class BadgeEditor {
  final Live<BadgeMark?> dragging = Live<BadgeMark?>(null);
  final Live<CardCorner?> hover = Live<CardCorner?>(null);
  final void Function(CardStyle Function(CardStyle)) edit;

  BadgeEditor(this.edit);

  static bool on(CardStyle s, BadgeMark m) => switch (m) {
    BadgeMark.score => s.scoreCorner != CardCorner.none,
    BadgeMark.airing => s.airingDot,
    BadgeMark.unread => s.unreadCounter,
  };

  static CardCorner at(CardStyle s, BadgeMark m) {
    final r = s.corners(bottomTaken: !s.bottomCornersUsable);
    return switch (m) {
      BadgeMark.score => r.score,
      BadgeMark.airing => r.airing,
      BadgeMark.unread => r.unread,
    };
  }

  static CardStyle _put(CardStyle c, BadgeMark m, CardCorner v) => switch (m) {
    BadgeMark.score => c.copyWith(scoreCorner: v),
    BadgeMark.airing => c.copyWith(airingCorner: v, airingDot: true),
    BadgeMark.unread => c.copyWith(unreadCorner: v, unreadCounter: true),
  };

  void toggle(BadgeMark m, bool value) => edit(
    (c) => switch (m) {
      BadgeMark.score => c.copyWith(
        scoreCorner: value ? CardCorner.auto : CardCorner.none,
      ),
      BadgeMark.airing => c.copyWith(airingDot: value),
      BadgeMark.unread => c.copyWith(unreadCounter: value),
    },
  );

  void drop(BadgeMark mark, CardCorner corner) {
    dragging.value = null;
    hover.value = null;
    edit((c) {
      final mine = on(c, mark) ? at(c, mark) : CardCorner.none;
      BadgeMark? other;
      for (final m in BadgeMark.values) {
        if (m != mark && on(c, m) && at(c, m) == corner) other = m;
      }
      var next = _put(c, mark, corner);
      if (other != null && mine != CardCorner.none) {
        next = _put(next, other, mine);
      }
      return next;
    });
  }
}

String badgeName(BadgeMark m) => switch (m) {
  BadgeMark.score => getString.scoreBadge,
  BadgeMark.airing => getString.airingDot,
  BadgeMark.unread => getString.unreadCounter,
};

class BadgeGlyph extends StatelessWidget {
  final BadgeMark mark;

  const BadgeGlyph(this.mark, {super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return switch (mark) {
      BadgeMark.score => Container(
        height: 20,
        padding: const EdgeInsets.symmetric(horizontal: 7),
        decoration: BoxDecoration(
          color: scheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(99),
          border: Border.all(color: scheme.outlineVariant),
        ),
        child: Icon(Icons.star_rounded, size: 13, color: scheme.onSurface),
      ),
      BadgeMark.airing => Container(
        width: 15,
        height: 15,
        decoration: BoxDecoration(
          color: const Color(0xFF6BF170),
          shape: BoxShape.circle,
          border: Border.all(color: const Color(0xFF0A0F18), width: 2),
        ),
      ),
      BadgeMark.unread => Container(
        height: 20,
        constraints: const BoxConstraints(minWidth: 20),
        padding: const EdgeInsets.symmetric(horizontal: 6),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: scheme.primaryContainer,
          borderRadius: BorderRadius.circular(99),
        ),
        child: Text(
          '3',
          style: context.textTheme.labelSmall?.copyWith(
            color: scheme.onPrimaryContainer,
            fontWeight: FontWeight.w600,
            height: 1,
          ),
        ),
      ),
    };
  }
}

Widget _flying(BadgeMark m) => Material(
  type: MaterialType.transparency,
  child: Container(
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0x66000000),
          blurRadius: 10,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: BadgeGlyph(m),
  ),
);

class BadgeDropLayer extends StatelessWidget {
  final CardStyle style;
  final BadgeEditor editor;

  const BadgeDropLayer({super.key, required this.style, required this.editor});

  Alignment _align(CardCorner c) => switch (c) {
    CardCorner.topLeft => Alignment.topLeft,
    CardCorner.topRight => Alignment.topRight,
    CardCorner.bottomLeft => Alignment.bottomLeft,
    _ => Alignment.bottomRight,
  };

  static double _width(BadgeMark m) => switch (m) {
    BadgeMark.score => 50,
    BadgeMark.airing => 24,
    BadgeMark.unread => 34,
  };

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final dragging = editor.dragging.value != null;
    final hover = editor.hover.value;
    final usable = style.bottomCornersUsable;
    return SizedBox(
      width: style.itemWidth,
      height: style.imageHeight,
      child: Column(
        children: [
          for (final row in [
            [CardCorner.topLeft, CardCorner.topRight],
            [CardCorner.bottomLeft, CardCorner.bottomRight],
          ])
            Expanded(
              child: Row(
                children: [
                  for (final c in row)
                    Expanded(
                      child: _zone(
                        context,
                        c,
                        scheme.primary,
                        dragging: dragging,
                        hovered: hover == c,
                        open:
                            usable ||
                            c == CardCorner.topLeft ||
                            c == CardCorner.topRight,
                      ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _zone(
    BuildContext context,
    CardCorner c,
    Color accent, {
    required bool dragging,
    required bool hovered,
    required bool open,
  }) {
    final holders = [
      for (final m in BadgeMark.values)
        if (BadgeEditor.on(style, m) && BadgeEditor.at(style, m) == c) m,
    ];
    return DragTarget<BadgeMark>(
      hitTestBehavior: HitTestBehavior.translucent,
      onWillAcceptWithDetails: (_) => open,
      onMove: (_) {
        if (editor.hover.value != c) editor.hover.value = c;
      },
      onLeave: (_) {
        if (editor.hover.value == c) editor.hover.value = null;
      },
      onAcceptWithDetails: (d) => editor.drop(d.data, c),
      builder: (context, candidates, rejected) => AnimatedContainer(
        duration: animDuration(140),
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: hovered && open
              ? accent.withValues(alpha: 0.28)
              : Colors.transparent,
          border: Border.all(
            color: hovered && open
                ? accent
                : dragging
                ? accent.withValues(alpha: open ? 0.45 : 0.12)
                : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Align(
          alignment: _align(c),
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: holders.isEmpty
                ? const SizedBox.shrink()
                : FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: _align(c),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        for (final m in holders)
                          Draggable<BadgeMark>(
                            data: m,
                            maxSimultaneousDrags: 1,
                            onDragStarted: () => editor.dragging.value = m,
                            onDragEnd: (_) {
                              editor.dragging.value = null;
                              editor.hover.value = null;
                            },
                            feedback: _flying(m),
                            childWhenDragging: const SizedBox.shrink(),
                            child: SizedBox(
                              width: _width(m),
                              height: 28,
                              child: const ColoredBox(
                                color: Colors.transparent,
                              ),
                            ),
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

class BadgeTray extends StatelessWidget {
  final CardStyle style;
  final BadgeEditor editor;

  const BadgeTray({super.key, required this.style, required this.editor});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [for (final m in BadgeMark.values) _chip(context, m)],
        ),
        const SizedBox(height: 8),
        Text(
          getString.badgeBoardHint,
          style: context.textTheme.bodySmall?.copyWith(
            color: scheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  Widget _chip(BuildContext context, BadgeMark m) {
    final scheme = context.colorScheme;
    final on = BadgeEditor.on(style, m);
    final body = AnimatedContainer(
      duration: animDuration(160),
      padding: const EdgeInsets.fromLTRB(8, 6, 12, 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(99),
        color: on
            ? scheme.primary.withValues(alpha: 0.16)
            : scheme.onSurface.withValues(alpha: 0.05),
        border: Border.all(
          color: on
              ? scheme.primary.withValues(alpha: 0.6)
              : Colors.transparent,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.drag_indicator_rounded,
            size: 18,
            color: scheme.onSurfaceVariant,
          ),
          const SizedBox(width: 4),
          Opacity(opacity: on ? 1 : 0.45, child: BadgeGlyph(m)),
          const SizedBox(width: 8),
          Text(
            badgeName(m),
            style: context.textTheme.labelLarge?.copyWith(
              color: on ? scheme.onSurface : scheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
    return Draggable<BadgeMark>(
      data: m,
      onDragStarted: () => editor.dragging.value = m,
      onDragEnd: (_) {
        editor.dragging.value = null;
        editor.hover.value = null;
      },
      feedback: _flying(m),
      childWhenDragging: Opacity(opacity: 0.4, child: body),
      child: GestureDetector(onTap: () => editor.toggle(m, !on), child: body),
    );
  }
}
