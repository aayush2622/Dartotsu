import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Nav/DpadNav.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import '../Components/ActivityComposer.dart';
import '../../../Widgets/Components/UserAvatar.dart';
import '../SocialNavigation.dart';
import 'StorySeen.dart';
import 'StoryViewer.dart';

class StoriesRow extends StatefulWidget {
  final MediaService service;

  const StoriesRow({super.key, required this.service});

  @override
  State<StoriesRow> createState() => _StoriesRowState();
}

class _StoriesRowState extends State<StoriesRow> {
  SocialScreenView get _view => widget.service.socialView!;

  List<StoryGroup>? _groups;
  StoryGroup? _own;
  bool _failed = false;
  final _scroll = ScrollController();
  static const _stride = 84.0;

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  void _reveal(String userId) {
    if (!_scroll.hasClients) return;
    final items = [?_own, ..._ordered(StorySeen.read(widget.service))];
    final index = items.indexWhere((g) => g.user.id == userId);
    if (index < 0) return;
    final position = _scroll.position;
    final target =
        (Dimens.pagePad +
                index * _stride -
                (position.viewportDimension - 70) / 2)
            .clamp(0.0, position.maxScrollExtent);
    unawaited(
      _scroll.animateTo(
        target,
        duration: const Duration(milliseconds: 260),
        curve: Curves.easeOutCubic,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  bool _isMe(StoryGroup g) {
    final me = _view.currentUserId;
    final name = widget.service.auth?.user.value?.name;
    return (me != null && g.user.id == me) ||
        (name != null && g.user.name == name);
  }

  Future<void> _load() async {
    try {
      final user = widget.service.auth?.user.value;
      final all = await _view.stories();
      final mine = all.where(_isMe).toList();
      final others = all.where((g) => !_isMe(g)).toList();
      StoryGroup? own;
      if (user != null) {
        own = StoryGroup(
          UserBrief(
            id: _view.currentUserId ?? '',
            name: 'Your story',
            avatar: user.avatar,
            banner: user.banner,
          ),
          mine.isEmpty ? const [] : mine.first.activities,
        );
      }
      if (!mounted) return;
      setState(() {
        _groups = others;
        _own = own;
        _failed = false;
      });
    } catch (_) {
      if (mounted) setState(() => _failed = true);
    }
  }

  Future<void> _compose() async {
    final done = await showActivityComposer(
      context,
      _view,
      kind: ComposerKind.activity,
    );
    if (done) await _load();
  }

  Future<void> _open(StoryGroup group) async {
    final playable = [
      if (_own != null && _own!.activities.isNotEmpty) _own!,
      ..._ordered(StorySeen.read(widget.service)),
    ];
    final index = playable.indexWhere((g) => g.user.id == group.user.id);
    if (index < 0) return;
    unawaited(HapticFeedback.selectionClick());
    await navigateToPage(
      context,
      StoryViewer(
        service: widget.service,
        groups: playable,
        initialGroup: index,
        onUserChanged: _reveal,
      ),
      hero: true,
    );
    if (mounted) setState(() {});
  }

  static final _placeholder = StoryGroup(
    UserBrief(id: '0', name: 'Loading'),
    const [],
  );

  List<StoryGroup> _ordered(Set<String> seen) {
    bool unseen(StoryGroup g) => g.activities.any((a) => !seen.contains(a.id));
    final groups = [
      for (final g in _groups!)
        if (!_isMe(g)) g,
    ];
    groups.sort((a, b) {
      if (unseen(a) != unseen(b)) return unseen(a) ? -1 : 1;
      return b.activities.last.createdAt.compareTo(a.activities.last.createdAt);
    });
    return groups;
  }

  @override
  Widget build(BuildContext context) {
    if (_failed || (_groups != null && _groups!.isEmpty && _own == null)) {
      return const SizedBox.shrink();
    }
    final loading = _groups == null;
    final seen = StorySeen.read(widget.service);
    final items = <StoryGroup>[
      ?_own,
      if (!loading) ..._ordered(seen) else ...List.filled(6, _placeholder),
    ];
    return SizedBox(
      height: 104,
      child: Skeletonizer(
        enabled: loading,
        child: ScrollConfig(
          context,
          child: ListView.separated(
            controller: _scroll,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.pagePad,
              vertical: 6,
            ),
            itemCount: items.length,
            separatorBuilder: (_, _) => const SizedBox(width: 14),
            itemBuilder: (_, i) {
              final item = items[i];
              final circle = _circle(item, seen, loading);
              if (loading) return circle;
              return KeyedSubtree(
                key: ValueKey('story-${item.user.id}'),
                child: circle.animateFadeSlideX(
                  begin: 0.3,
                  delay: Duration(milliseconds: 40 * math.min(i, 9)),
                  duration: 380,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _tap(StoryGroup g, bool isOwn) {
    if (g.activities.isNotEmpty) {
      unawaited(_open(g));
    } else if (isOwn) {
      unawaited(_compose());
    } else {
      openProfile(context, widget.service, id: g.user.id, user: g.user);
    }
  }

  void _hold(StoryGroup g, bool isOwn) {
    unawaited(HapticFeedback.mediumImpact());
    if (isOwn) {
      unawaited(_compose());
    } else {
      openProfile(context, widget.service, id: g.user.id, user: g.user);
    }
  }

  Widget _circle(StoryGroup g, Set<String> seen, bool loading) {
    final isOwn = _own != null && g.user.id == _own!.user.id;
    final scheme = context.colorScheme;
    final fresh = g.activities.any((a) => !seen.contains(a.id));
    return DpadFocusable(
      onSelect: loading ? () {} : () => _tap(g, isOwn),
      builder: dpadScaleFocus,
      child: Clickable(
        onTap: loading ? null : () => _tap(g, isOwn),
        onLongPress: loading ? null : () => _hold(g, isOwn),
        child: SizedBox(
          width: 70,
          child: Column(
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    TweenAnimationBuilder<double>(
                      tween: Tween(begin: 0, end: fresh ? 1 : 0),
                      duration: const Duration(milliseconds: 520),
                      curve: Curves.easeInOutCubic,
                      builder: (_, glow, _) => CustomPaint(
                        size: const Size(70, 70),
                        painter: _RingPainter(
                          flags: [
                            for (final a in g.activities) seen.contains(a.id),
                          ],
                          start: scheme.primary,
                          end: scheme.tertiary,
                          idle: scheme.outlineVariant,
                          glow: glow,
                        ),
                      ),
                    ),
                    UserAvatar(
                      url: g.user.avatar,
                      name: g.user.name,
                      size: 56,
                      heroTag: 'story-${g.user.id}',
                    ),
                    if (isOwn && g.activities.isEmpty)
                      Positioned(
                        right: 2,
                        bottom: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: scheme.primary,
                            shape: BoxShape.circle,
                            border: Border.all(color: scheme.surface, width: 2),
                          ),
                          padding: const EdgeInsets.all(2),
                          child: Icon(
                            Icons.add_rounded,
                            size: 15,
                            color: scheme.onPrimary,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 4),
              Text(
                g.user.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.labelSmall?.copyWith(
                  fontWeight: fresh ? FontWeight.w800 : FontWeight.w500,
                  color: fresh ? null : scheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RingPainter extends CustomPainter {
  final List<bool> flags;
  final Color start;
  final Color end;
  final Color idle;
  final double glow;

  _RingPainter({
    required this.flags,
    required this.start,
    required this.end,
    required this.idle,
    required this.glow,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(2, 2, size.width - 4, size.height - 4);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    if (flags.isEmpty) {
      paint
        ..strokeWidth = 1.5
        ..color = idle.withValues(alpha: 0.6);
      canvas.drawArc(rect, 0, math.pi * 2, false, paint);
      return;
    }
    final count = flags.length;
    final gap = count == 1 ? 0.0 : 0.16;
    final sweep = (math.pi * 2 - gap * count) / count;
    final gradient = SweepGradient(
      startAngle: -math.pi / 2,
      endAngle: math.pi * 1.5,
      colors: [start, end, start],
      transform: const GradientRotation(-math.pi / 2),
    ).createShader(rect);
    double startAt(int i) => -math.pi / 2 + gap / 2 + i * (sweep + gap);
    paint
      ..shader = null
      ..strokeWidth = 2.2
      ..color = idle;
    for (var i = 0; i < count; i++) {
      canvas.drawArc(rect, startAt(i), sweep, false, paint);
    }
    if (glow <= 0) return;
    canvas.saveLayer(
      rect.inflate(4),
      Paint()..color = Colors.white.withValues(alpha: glow.clamp(0.0, 1.0)),
    );
    paint
      ..shader = gradient
      ..strokeWidth = 3.2;
    for (var i = 0; i < count; i++) {
      if (!flags[i]) canvas.drawArc(rect, startAt(i), sweep, false, paint);
    }
    canvas.restore();
  }

  @override
  bool shouldRepaint(_RingPainter old) =>
      old.glow != glow ||
      old.flags.length != flags.length ||
      !_same(old.flags, flags) ||
      old.start != start;

  static bool _same(List<bool> a, List<bool> b) {
    for (var i = 0; i < a.length && i < b.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}
