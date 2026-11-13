import '../../../Widgets/Components/ScrollConfig.dart';

import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/StringExtensions.dart';
import '../../../Utils/Functions/TimeAgo.dart';
import '../../../Widgets/Components/BlurredImage.dart';
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
import '../../../Api/Discord/DiscordPresence.dart';
import '../../../Api/Discord/PresenceScope.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Widgets/Components/ScreenState.dart';
import 'StoryGroupState.dart';
import 'StoryViewerState.dart';

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

class _StoryViewerState extends State<StoryViewer>
    with ScreenStateHost<StoryViewer, StoryViewerState> {
  @override
  StoryViewerState buildState() => StoryViewerState(
    initialGroup: widget.initialGroup,
    groupCount: widget.groups.length,
  );

  @override
  Widget build(BuildContext context) => PresenceScope(
    presence: DiscordPresence.browsing('Watching stories'),
    child: _buildViewer(context),
  );

  Widget _buildViewer(BuildContext context) => Watch(() => _viewer(context));

  Widget _viewer(BuildContext context) {
    final current = state.current.value;
    final size = MediaQuery.sizeOf(context);
    final progress = (state.drag.value / (size.height * 0.5)).clamp(0.0, 1.0);
    return Scaffold(
      backgroundColor: Colors.black.withValues(alpha: 1 - progress * 0.85),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onHorizontalDragStart: (_) => state.hold.value = true,
        onHorizontalDragUpdate: (d) {
          if (!state.pages.hasClients) return;
          final position = state.pages.position;
          position.jumpTo(
            (position.pixels - d.delta.dx).clamp(
              position.minScrollExtent,
              position.maxScrollExtent,
            ),
          );
        },
        onHorizontalDragEnd: (d) {
          state.hold.value = false;
          if (!state.pages.hasClients) return;
          final page = state.pages.page ?? state.current.value.toDouble();
          final velocity = d.primaryVelocity ?? 0;
          var target = page.round();
          if (velocity < -350) {
            target = page.floor() + 1;
          } else if (velocity > 350) {
            target = page.ceil() - 1;
          }
          target = target.clamp(0, widget.groups.length - 1);
          if (target != state.current.value) {
            unawaited(HapticFeedback.selectionClick());
          }
          unawaited(
            state.pages.animateToPage(
              target,
              duration: animDuration(380),
              curve: Curves.easeOutCubic,
            ),
          );
        },
        onVerticalDragStart: (_) => state.dragging.value = true,
        onVerticalDragUpdate: (d) =>
            state.drag.value = math.max(0, state.drag.value + d.delta.dy),
        onVerticalDragEnd: (d) {
          final fling = (d.primaryVelocity ?? 0) > 700;
          if (fling || state.drag.value > size.height * 0.22) {
            state.close();
          } else {
            state.drag.value = 0;
            state.dragging.value = false;
          }
        },
        child: AnimatedContainer(
          duration: state.dragging.value && state.drag.value > 0
              ? Duration.zero
              : animDuration(260),
          curve: Curves.easeOutCubic,
          transform: Matrix4.identity()
            ..translateByDouble(0, state.drag.value, 0, 1)
            ..scaleByDouble(1 - progress * 0.18, 1 - progress * 0.18, 1, 1),
          transformAlignment: Alignment.center,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(progress * 32),
            child: PageView.builder(
              controller: state.pages,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.groups.length,
              onPageChanged: (i) {
                state.current.value = i;
                widget.onUserChanged?.call(widget.groups[i].user.id);
              },
              itemBuilder: (context, i) => AnimatedBuilder(
                animation: state.pages,
                builder: (context, child) {
                  final page =
                      state.pages.hasClients &&
                          state.pages.position.haveDimensions
                      ? state.pages.page ?? state.current.value.toDouble()
                      : state.current.value.toDouble();
                  final delta = (page - i).clamp(-1.0, 1.0);
                  return Opacity(
                    opacity: 1 - delta.abs() * 0.5,
                    child: Transform(
                      alignment: delta > 0
                          ? AlignmentDirectional.centerEnd
                          : AlignmentDirectional.centerStart,
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
                  active: i == current,
                  hold: state.hold,
                  onFinished: () => state.goTo(i + 1),
                  onBack: () => state.goTo(i - 1),
                  onClose: state.close,
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
  final Live<bool> hold;
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
    with
        SingleTickerProviderStateMixin,
        ScreenStateHost<_StoryGroupPage, StoryGroupState> {
  @override
  StoryGroupState buildState() => StoryGroupState(
    service: widget.service,
    group: widget.group,
    hold: widget.hold,
    onFinished: widget.onFinished,
    onBack: widget.onBack,
    active: widget.active,
  );

  @override
  void didUpdateWidget(_StoryGroupPage old) {
    super.didUpdateWidget(old);
    state.activeChanged(old.active, widget.active);
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    state.version.track();
    return Focus(
      autofocus: widget.active,
      onKeyEvent: state.onKey,
      child: _tapZones(width),
    );
  }

  double _lastTapX = 0;

  Widget _tapZones(double width) {
    bool middle(double x) => x >= width / 3 && x <= width * 2 / 3;
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapUp: (d) {
        final x = d.localPosition.dx;
        if (middle(x)) return;
        x < width / 3 ? state.previous() : state.next();
      },
      onDoubleTapDown: (d) => _lastTapX = d.localPosition.dx,
      onDoubleTap: () {
        if (middle(_lastTapX)) state.doubleTapLike();
      },
      onLongPressStart: (_) => state.holdNow(),
      onLongPressEnd: (_) => state.release(),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Stack(
          fit: StackFit.expand,
          children: [
            _background(),
            _content(context),
            _header(context),
            _footer(context),
            IgnorePointer(
              child: Center(
                child: AnimatedScale(
                  scale: state.heart ? 1 : 0.4,
                  duration: animDuration(260),
                  curve: Curves.easeOutBack,
                  child: AnimatedOpacity(
                    opacity: state.heart ? 1 : 0,
                    duration: animDuration(200),
                    child: const Icon(
                      Icons.favorite_rounded,
                      size: 112,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _background() {
    final a = state.story;
    final scheme = context.colorScheme;
    final url =
        a.media?.banner ?? a.media?.cover ?? a.user?.banner ?? a.user?.avatar;
    return AnimatedSwitcher(
      duration: animDuration(400),
      child: KeyedSubtree(
        key: ValueKey('bg-${a.id}'),
        child: Stack(
          fit: StackFit.expand,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topStart,
                  end: AlignmentDirectional.bottomEnd,
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
                animation: state.timer,
                builder: (_, child) => Transform.scale(
                  scale: 1.04 + 0.1 * state.timer.value,
                  child: child,
                ),
                child: SizedBox.expand(
                  child: BlurredImage(url: url, saturation: 1.2),
                ),
              ),
            ColoredBox(color: Colors.black.withValues(alpha: 0.42)),
          ],
        ),
      ),
    );
  }

  Widget _content(BuildContext context) {
    final a = state.story;
    final top = MediaQuery.paddingOf(context).top;
    final bottom = MediaQuery.paddingOf(context).bottom;
    return Positioned.fill(
      top: top + 86,
      bottom: bottom + 96,
      child: AnimatedSwitcher(
        duration: animDuration(340),
        switchInCurve: Curves.easeOutCubic,
        transitionBuilder: (child, animation) => FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(state.forward.value ? 0.12 : -0.12, 0),
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
    final a = state.story;
    final user = widget.group.user;
    final top = MediaQuery.paddingOf(context).top;
    return PositionedDirectional(
      top: top + 8,
      start: 12,
      end: 12,
      child: Column(
        children: [
          Row(
            children: [
              for (var i = 0; i < state.items.length; i++)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: SizedBox(
                        height: 4,
                        child: i == state.index.value
                            ? AnimatedBuilder(
                                animation: state.timer,
                                builder: (_, _) => LinearProgressIndicator(
                                  value: state.timer.value,
                                  backgroundColor: Colors.white24,
                                  color: Colors.white,
                                ),
                              )
                            : LinearProgressIndicator(
                                value: i < state.index.value ? 1 : 0,
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
                onTap: () => state.paused(
                  () => pushProfile(
                    context,
                    widget.service,
                    id: user.id,
                    user: user,
                    heroTag: 'story-${user.id}',
                  ),
                ),
                child: _glass(
                  padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 14, 4),
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
                              fontWeight: FontWeight.w600,
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
    final a = state.story;
    final bottom = MediaQuery.paddingOf(context).bottom;
    return PositionedDirectional(
      start: 16,
      end: 16,
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
              state.like,
              color: a.isLiked ? Colors.redAccent : Colors.white,
              onLongPress: () => state.paused(
                () => showUserListSheet(
                  context,
                  widget.service,
                  getString.likedBy,
                  a.likes,
                ),
              ),
            ),
            _stat(
              Icons.chat_bubble_outline_rounded,
              '${a.replyCount}',
              () => state.paused(
                () => showRepliesSheet(context, widget.service, a),
              ),
            ),
            const Spacer(),
            if (state.view.canInteract)
              Clickable(
                onTap: () => state.paused(
                  () => showActivityComposer(
                    context,
                    state.view,
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
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.reply_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        getString.reply,
                        style: const TextStyle(
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
              duration: animDuration(220),
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
    EdgeInsetsGeometry padding = EdgeInsets.zero,
    double radius = 30,
  }) {
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: padding,
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.4),
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: Colors.white.withValues(alpha: 0.14)),
      ),
      child: child,
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
      child: ScrollConfig(
        context,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (media != null)
                Clickable(
                  onTap: () => state.paused(
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
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.5),
                          blurRadius: 36,
                          offset: const Offset(0, 16),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
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
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
            ],
          ),
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
        child: ScrollConfig(
          context,
          child: SingleChildScrollView(
            child: a.html == null || a.html!.trim().isEmpty
                ? MarkupText(
                    text: a.text ?? '',
                    collapsible: false,
                    color: Colors.white,
                    onLink: (url) => state.paused(
                      () => openAppLink(context, widget.service, url),
                    ),
                  )
                : AniHtml(
                    html: a.html!,
                    color: Colors.white,
                    fontSize: 16,
                    onLink: (url) => state.paused(
                      () => openAppLink(context, widget.service, url),
                    ),
                    linkCard: aniLinkCards(widget.service),
                  ),
          ),
        ),
      ),
    );
  }
}
