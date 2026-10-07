import 'dart:async';
import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/StringExtensions.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Utils/Functions/TimeAgo.dart';
import '../../../Widgets/Components/AniHtml.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/MarkupText.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../Detail/DetailScreen.dart';
import '../Components/ActivityComposer.dart';
import '../Components/AniMediaCard.dart';
import '../Components/RepliesSheet.dart';
import '../../../Widgets/Components/UserAvatar.dart';
import '../Components/UserListSheet.dart';
import '../SocialNavigation.dart';
import 'StorySeen.dart';

class StoryViewer extends StatefulWidget {
  final MediaService service;
  final List<StoryGroup> groups;
  final int initialGroup;
  final ValueChanged<String>? onUserChanged;

  const StoryViewer({
    super.key,
    required this.service,
    required this.groups,
    this.initialGroup = 0,
    this.onUserChanged,
  });

  @override
  State<StoryViewer> createState() => _StoryViewerState();
}

class _StoryViewerState extends State<StoryViewer> {
  late final PageController _pages = PageController(
    initialPage: widget.initialGroup,
  );
  late int _current = widget.initialGroup;
  double _drag = 0;
  bool _dragging = false;
  final _hold = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    unawaited(
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky),
    );
  }

  @override
  void dispose() {
    unawaited(SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge));
    _pages.dispose();
    _hold.dispose();
    super.dispose();
  }

  void _close() => Navigator.of(context).maybePop();

  void _goTo(int index) {
    if (index < 0 || index >= widget.groups.length) {
      if (index >= widget.groups.length) _close();
      return;
    }
    unawaited(HapticFeedback.selectionClick());
    unawaited(
      _pages.animateToPage(
        index,
        duration: const Duration(milliseconds: 420),
        curve: Curves.easeOutCubic,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final progress = (_drag / (size.height * 0.5)).clamp(0.0, 1.0);
    return Scaffold(
      backgroundColor: Colors.black.withValues(alpha: 1 - progress * 0.85),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onHorizontalDragStart: (_) => _hold.value = true,
        onHorizontalDragUpdate: (d) {
          if (!_pages.hasClients) return;
          final position = _pages.position;
          position.jumpTo(
            (position.pixels - d.delta.dx).clamp(
              position.minScrollExtent,
              position.maxScrollExtent,
            ),
          );
        },
        onHorizontalDragEnd: (d) {
          _hold.value = false;
          if (!_pages.hasClients) return;
          final page = _pages.page ?? _current.toDouble();
          final velocity = d.primaryVelocity ?? 0;
          var target = page.round();
          if (velocity < -350) {
            target = page.floor() + 1;
          } else if (velocity > 350) {
            target = page.ceil() - 1;
          }
          target = target.clamp(0, widget.groups.length - 1);
          if (target != _current) unawaited(HapticFeedback.selectionClick());
          unawaited(
            _pages.animateToPage(
              target,
              duration: const Duration(milliseconds: 380),
              curve: Curves.easeOutCubic,
            ),
          );
        },
        onVerticalDragStart: (_) => setState(() => _dragging = true),
        onVerticalDragUpdate: (d) =>
            setState(() => _drag = math.max(0, _drag + d.delta.dy)),
        onVerticalDragEnd: (d) {
          final fling = (d.primaryVelocity ?? 0) > 700;
          if (fling || _drag > size.height * 0.22) {
            _close();
          } else {
            setState(() {
              _drag = 0;
              _dragging = false;
            });
          }
        },
        child: AnimatedContainer(
          duration: _dragging && _drag > 0
              ? Duration.zero
              : const Duration(milliseconds: 260),
          curve: Curves.easeOutCubic,
          transform: Matrix4.identity()
            ..translateByDouble(0, _drag, 0, 1)
            ..scaleByDouble(1 - progress * 0.18, 1 - progress * 0.18, 1, 1),
          transformAlignment: Alignment.center,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(progress * 32),
            child: PageView.builder(
              controller: _pages,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.groups.length,
              onPageChanged: (i) {
                setState(() => _current = i);
                widget.onUserChanged?.call(widget.groups[i].user.id);
              },
              itemBuilder: (context, i) => AnimatedBuilder(
                animation: _pages,
                builder: (context, child) {
                  final page =
                      _pages.hasClients && _pages.position.haveDimensions
                      ? _pages.page ?? _current.toDouble()
                      : _current.toDouble();
                  final delta = (page - i).clamp(-1.0, 1.0);
                  return Opacity(
                    opacity: 1 - delta.abs() * 0.5,
                    child: Transform(
                      alignment: delta > 0
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.0012)
                        ..rotateY(-delta * 0.55),
                      child: child,
                    ),
                  );
                },
                child: _StoryGroupPage(
                  key: ValueKey(widget.groups[i].user.id),
                  service: widget.service,
                  group: widget.groups[i],
                  active: i == _current,
                  hold: _hold,
                  onFinished: () => _goTo(i + 1),
                  onBack: () => _goTo(i - 1),
                  onClose: _close,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _StoryGroupPage extends StatefulWidget {
  final MediaService service;
  final StoryGroup group;
  final bool active;
  final ValueListenable<bool> hold;
  final VoidCallback onFinished;
  final VoidCallback onBack;
  final VoidCallback onClose;

  const _StoryGroupPage({
    super.key,
    required this.service,
    required this.group,
    required this.active,
    required this.hold,
    required this.onFinished,
    required this.onBack,
    required this.onClose,
  });

  @override
  State<_StoryGroupPage> createState() => _StoryGroupPageState();
}

class _StoryGroupPageState extends State<_StoryGroupPage>
    with SingleTickerProviderStateMixin {
  static const _duration = Duration(seconds: 7);

  late final AnimationController _timer = AnimationController(
    vsync: this,
    duration: _duration,
  )..addStatusListener(_onStatus);

  int _index = 0;
  bool _forward = true;
  int _holds = 0;

  SocialScreenView get _view => widget.service.socialView!;
  List<Activity> get _items => widget.group.activities;
  Activity get _story => _items[_index];

  @override
  void initState() {
    super.initState();
    final seen = StorySeen.read(widget.service);
    final first = _items.indexWhere((a) => !seen.contains(a.id));
    _index = first < 0 ? 0 : first;
    widget.hold.addListener(_onSwipeHold);
    if (widget.active) _start();
  }

  bool _swipeHeld = false;

  void _onSwipeHold() {
    final want = widget.hold.value;
    if (want == _swipeHeld) return;
    _swipeHeld = want;
    want ? _hold() : _release();
  }

  @override
  void didUpdateWidget(_StoryGroupPage old) {
    super.didUpdateWidget(old);
    if (widget.active && !old.active) {
      _start();
    } else if (!widget.active && old.active) {
      _timer.stop();
    }
  }

  @override
  void dispose() {
    widget.hold.removeListener(_onSwipeHold);
    _timer.dispose();
    super.dispose();
  }

  void _start() {
    StorySeen.mark(widget.service, _story.id);
    _timer
      ..stop()
      ..value = 0;
    if (_holds == 0) unawaited(_timer.forward());
  }

  void _onStatus(AnimationStatus status) {
    if (status == AnimationStatus.completed && widget.active) _next();
  }

  void _hold() {
    _holds++;
    _timer.stop();
  }

  void _release() {
    if (_holds > 0) _holds--;
    if (_holds == 0 && mounted && widget.active && !_timer.isCompleted) {
      unawaited(_timer.forward());
    }
  }

  void _next() {
    if (!mounted) return;
    if (_index < _items.length - 1) {
      setState(() {
        _forward = true;
        _index++;
      });
      _start();
    } else {
      widget.onFinished();
    }
  }

  void _previous() {
    if (_index > 0) {
      setState(() {
        _forward = false;
        _index--;
      });
      _start();
    } else {
      widget.onBack();
      _start();
    }
  }

  Future<void> _like() async {
    if (!_view.canInteract) return snackString('Log in to like');
    final a = _story;
    final was = a.isLiked;
    setState(() {
      a.isLiked = !was;
      a.likeCount += was ? -1 : 1;
    });
    unawaited(HapticFeedback.selectionClick());
    final ok = await _view.toggleLike(a.id);
    if (!ok && mounted) {
      setState(() {
        a.isLiked = was;
        a.likeCount += was ? 1 : -1;
      });
      snackString('Failed to like');
    }
  }

  Future<T?> _paused<T>(Future<T> Function() action) async {
    _hold();
    try {
      return await action();
    } finally {
      if (mounted) {
        setState(() {});
        _release();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapUp: (d) => d.localPosition.dx < width / 3 ? _previous() : _next(),
      onLongPressStart: (_) => _hold(),
      onLongPressEnd: (_) => _release(),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Stack(
          fit: StackFit.expand,
          children: [
            _background(),
            _content(context),
            _header(context),
            _footer(context),
          ],
        ),
      ),
    );
  }

  Widget _background() {
    final a = _story;
    final scheme = context.colorScheme;
    final url =
        a.media?.banner ?? a.media?.cover ?? a.user?.banner ?? a.user?.avatar;
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      child: KeyedSubtree(
        key: ValueKey('bg-${a.id}'),
        child: Stack(
          fit: StackFit.expand,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    scheme.primaryContainer.withValues(alpha: 0.9),
                    scheme.surface,
                    scheme.tertiaryContainer.withValues(alpha: 0.8),
                  ],
                ),
              ),
            ),
            if (url != null)
              AnimatedBuilder(
                animation: _timer,
                builder: (_, child) => Transform.scale(
                  scale: 1.04 + 0.1 * _timer.value,
                  child: child,
                ),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 24,
                    sigmaY: 24,
                    tileMode: TileMode.clamp,
                  ),
                  child: cachedNetworkImage(
                    imageUrl: url,
                    fit: BoxFit.cover,
                    cacheWidth: 480,
                  ),
                ),
              ),
            ColoredBox(color: Colors.black.withValues(alpha: 0.42)),
          ],
        ),
      ),
    );
  }

  Widget _content(BuildContext context) {
    final a = _story;
    final top = MediaQuery.paddingOf(context).top;
    final bottom = MediaQuery.paddingOf(context).bottom;
    return Positioned.fill(
      top: top + 86,
      bottom: bottom + 96,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 340),
        switchInCurve: Curves.easeOutCubic,
        transitionBuilder: (child, animation) => FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(_forward ? 0.12 : -0.12, 0),
              end: Offset.zero,
            ).animate(animation),
            child: ScaleTransition(
              scale: Tween<double>(begin: 0.94, end: 1).animate(animation),
              child: child,
            ),
          ),
        ),
        child: KeyedSubtree(
          key: ValueKey('c-${a.id}'),
          child: a.kind == ActivityKind.list ? _listBody(a) : _textBody(a),
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    final a = _story;
    final user = widget.group.user;
    final top = MediaQuery.paddingOf(context).top;
    return Positioned(
      top: top + 8,
      left: 12,
      right: 12,
      child: Column(
        children: [
          Row(
            children: [
              for (var i = 0; i < _items.length; i++)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: SizedBox(
                        height: 4,
                        child: i == _index
                            ? AnimatedBuilder(
                                animation: _timer,
                                builder: (_, _) => LinearProgressIndicator(
                                  value: _timer.value,
                                  backgroundColor: Colors.white24,
                                  color: Colors.white,
                                ),
                              )
                            : LinearProgressIndicator(
                                value: i < _index ? 1 : 0,
                                backgroundColor: Colors.white24,
                                color: Colors.white,
                              ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Clickable(
                onTap: () => _paused(
                  () => pushProfile(
                    context,
                    widget.service,
                    id: user.id,
                    user: user,
                    heroTag: 'story-${user.id}',
                  ),
                ),
                child: _glass(
                  padding: const EdgeInsets.fromLTRB(4, 4, 14, 4),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      UserAvatar(
                        url: user.avatar,
                        name: user.name,
                        size: 34,
                        heroTag: 'story-${user.id}',
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            timeAgo(a.createdAt),
                            style: const TextStyle(
                              color: Colors.white70,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Clickable(
                onTap: widget.onClose,
                child: _glass(
                  padding: const EdgeInsets.all(8),
                  child: const Icon(
                    Icons.close_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ).animateFadeUp(begin: -0.2, duration: 320),
    );
  }

  Widget _footer(BuildContext context) {
    final a = _story;
    final bottom = MediaQuery.paddingOf(context).bottom;
    return Positioned(
      left: 16,
      right: 16,
      bottom: bottom + 14,
      child: _footerBar(
        padding: const EdgeInsets.all(6),
        radius: 30,
        child: Row(
          children: [
            _stat(
              a.isLiked
                  ? Icons.favorite_rounded
                  : Icons.favorite_border_rounded,
              '${a.likeCount}',
              _like,
              color: a.isLiked ? Colors.redAccent : Colors.white,
              onLongPress: () => _paused(
                () => showUserListSheet(
                  context,
                  widget.service,
                  'Liked by',
                  a.likes,
                ),
              ),
            ),
            _stat(
              Icons.chat_bubble_outline_rounded,
              '${a.replyCount}',
              () => _paused(() => showRepliesSheet(context, widget.service, a)),
            ),
            const Spacer(),
            if (_view.canInteract)
              Clickable(
                onTap: () => _paused(
                  () => showActivityComposer(
                    context,
                    _view,
                    kind: ComposerKind.reply,
                    activityId: a.id,
                  ),
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.16),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.reply_rounded, color: Colors.white, size: 18),
                      SizedBox(width: 6),
                      Text(
                        'Reply',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _footerBar({
    required Widget child,
    EdgeInsets padding = EdgeInsets.zero,
    double radius = 30,
  }) => _glass(
    padding: padding,
    radius: radius,
    child: child,
  ).animateFadeUp(begin: 0.3, duration: 360);

  Widget _stat(
    IconData icon,
    String label,
    VoidCallback onTap, {
    Color color = Colors.white,
    VoidCallback? onLongPress,
  }) {
    return Clickable(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 220),
              transitionBuilder: (child, a) =>
                  ScaleTransition(scale: a, child: child),
              child: Icon(icon, key: ValueKey(icon), color: color, size: 22),
            ),
            const SizedBox(width: 6),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _glass({
    required Widget child,
    EdgeInsets padding = EdgeInsets.zero,
    double radius = 30,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            color: Colors.black.withValues(alpha: 0.28),
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(color: Colors.white.withValues(alpha: 0.12)),
          ),
          child: child,
        ),
      ),
    );
  }

  Widget _listBody(Activity a) {
    final media = a.media;
    final status = (a.status ?? '').titleCase;
    final lower = status.toLowerCase();
    final bare =
        lower.contains('completed') ||
        lower.contains('plans') ||
        lower.contains('repeating') ||
        lower.contains('paused') ||
        lower.contains('dropped');
    final line = [
      status,
      ?a.progress,
      if (!bare && a.progress != null) 'of',
    ].join(' ');
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (media != null)
              Clickable(
                onTap: () => _paused(
                  () => navigateToPage(
                    context,
                    DetailScreen(
                      media: media,
                      view: widget.service.detailView,
                      mutations: widget.service.getMutations,
                    ),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.5),
                        blurRadius: 36,
                        offset: const Offset(0, 16),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(22),
                    child: SizedBox(
                      width: 200,
                      height: 290,
                      child: cachedNetworkImage(
                        imageUrl: media.cover,
                        fit: BoxFit.cover,
                        width: 200,
                        height: 290,
                      ),
                    ),
                  ),
                ),
              ),
            const SizedBox(height: 22),
            Text(
              line,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 15,
                letterSpacing: 0.4,
              ),
            ),
            if (media != null)
              Padding(
                padding: const EdgeInsets.fromLTRB(28, 6, 28, 0),
                child: Text(
                  media.mainName,
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    height: 1.2,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _textBody(Activity a) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 18),
        padding: const EdgeInsets.fromLTRB(22, 20, 22, 20),
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.38),
          borderRadius: BorderRadius.circular(28),
          border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
        ),
        child: SingleChildScrollView(
          child: a.html == null || a.html!.trim().isEmpty
              ? MarkupText(
                  text: a.text ?? '',
                  collapsible: false,
                  color: Colors.white,
                  onLink: (url) =>
                      _paused(() => openAppLink(context, widget.service, url)),
                )
              : AniHtml(
                  html: a.html!,
                  color: Colors.white,
                  fontSize: 16,
                  onLink: (url) =>
                      _paused(() => openAppLink(context, widget.service, url)),
                  linkCard: aniLinkCards(widget.service),
                ),
        ),
      ),
    );
  }
}
