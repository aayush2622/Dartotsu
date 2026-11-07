import '../../Utils/Animation/WidgetAnimations.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Services/Model/Media.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../Components/CachedNetworkImage.dart';
import '../Components/ScrollConfig.dart';
import 'MediaSection.dart';
import '../../Core/State/State.dart';

class MediaCarousel extends StatefulWidget {
  final MediaSectionData data;

  const MediaCarousel({super.key, required this.data});

  @override
  State<MediaCarousel> createState() => _MediaCarouselState();
}

class _MediaCarouselState extends State<MediaCarousel> {
  static const _seed = 100000;

  final _controller = PageController(initialPage: _seed);
  final _page = 0.live;
  Timer? _timer;
  DateTime _pausedUntil = DateTime.fromMillisecondsSinceEpoch(0);

  List<Media> get _items => widget.data.mediaList ?? const [];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (_) {
      if (!mounted ||
          !_controller.hasClients ||
          _items.length < 2 ||
          DateTime.now().isBefore(_pausedUntil)) {
        return;
      }
      unawaited(
        _controller.nextPage(
          duration: animDuration(800),
          curve: Curves.fastOutSlowIn,
        ),
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  int? _focusPage;

  KeyEventResult _onKey(FocusNode node, KeyEvent event) {
    if (event is! KeyDownEvent ||
        _items.length < 2 ||
        !_controller.hasClients) {
      return KeyEventResult.ignored;
    }
    final step = switch (event.logicalKey) {
      LogicalKeyboardKey.arrowRight => 1,
      LogicalKeyboardKey.arrowLeft => -1,
      _ => 0,
    };
    if (step == 0) return KeyEventResult.ignored;
    final target = (_controller.page ?? _controller.initialPage).round() + step;
    _pausedUntil = DateTime.now().add(const Duration(seconds: 12));
    _focusPage = target;
    unawaited(
      _controller
          .animateToPage(
            target,
            duration: animDuration(420),
            curve: Curves.fastOutSlowIn,
          )
          .whenComplete(() => _focusPage = null),
    );
    return KeyEventResult.handled;
  }

  double get _height =>
      responsive(mobile: 400.0, tablet: 340.0, desktop: 340.0);

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final items = _items;
    if (widget.data.loading) {
      return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.pagePad,
          vertical: Dimens.gapSm,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(Dimens.radius),
          child: SizedBox(height: _height, child: const _SlideSkeleton()),
        ),
      );
    }
    if (items.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.pagePad,
        vertical: Dimens.gapSm,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Dimens.radius),
        child: SizedBox(
          height: _height,
          child: Stack(
            children: [
              NotificationListener<ScrollNotification>(
                onNotification: (n) {
                  if (n is ScrollStartNotification ||
                      n is ScrollUpdateNotification) {
                    _pausedUntil = DateTime.now().add(
                      const Duration(seconds: 8),
                    );
                  }
                  return false;
                },
                child: ScrollConfig(
                  context,
                  child: Focus(
                    canRequestFocus: false,
                    onKeyEvent: _onKey,
                    child: DpadRegion(
                      horizontalEdge: DpadEdgeBehavior.stop,
                      child: PageView.builder(
                        controller: _controller,
                        onPageChanged: (p) => _page.value = p % items.length,
                        itemBuilder: (context, page) {
                          final index = page % items.length;
                          return _Slide(
                            media: items[index],
                            tag:
                                'spotlight:${widget.data.heroPrefix}:$index:${items[index].id}',
                            onTap: (tag) => widget.data.onMediaTap?.call(
                              context,
                              index,
                              items[index],
                              tag,
                            ),
                            autofocus: _focusPage == page,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
              if (items.length > 1)
                PositionedDirectional(
                  end: Dimens.cardPad,
                  bottom: 12,
                  child: Watch(() {
                    final current = _page.value;
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        for (var i = 0; i < items.length; i++)
                          AnimatedContainer(
                            duration: animDuration(250),
                            margin: const EdgeInsetsDirectional.only(start: 4),
                            width: i == current ? 18 : 6,
                            height: 6,
                            decoration: BoxDecoration(
                              color: i == current
                                  ? scheme.primary
                                  : scheme.onSurface.withValues(alpha: 0.3),
                              borderRadius: BorderRadius.circular(3),
                            ),
                          ),
                      ],
                    );
                  }),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final Media media;
  final String tag;
  final void Function(String tag) onTap;
  final bool autofocus;

  const _Slide({
    required this.media,
    required this.tag,
    required this.onTap,
    this.autofocus = false,
  });

  static String _count(Media m) {
    final anime = m.anime;
    if (anime != null) {
      final next = anime.nextAiringEpisode;
      final total = '${anime.totalEpisodes ?? '??'}';
      return next != null && next > 1 ? '${next - 1} / $total' : total;
    }
    final chapters = m.manga?.totalChapters;
    return chapters == null || chapters == 0 ? '??' : '$chapters';
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final text = context.textTheme;
    final score = (media.meanScore ?? 0) > 0 ? media.meanScore! / 10 : null;
    final status = media.status?.replaceAll('_', ' ');
    final glass = find<ThemeController>().useGlassMode.value;
    final fg = glass ? Colors.white : scheme.onSurface;
    final coverH = responsive(mobile: 160.0, tablet: 190.0, desktop: 190.0);

    return DpadTap(
      ripple: false,
      autofocus: autofocus,
      borderRadius: BorderRadius.zero,
      onTap: () => onTap(tag),
      child: Stack(
        fit: StackFit.expand,
        children: [
          cachedNetworkImage(
            imageUrl: media.banner ?? media.cover,
            fit: BoxFit.cover,
            placeholder: (_, _) =>
                ColoredBox(color: scheme.surfaceContainerHigh),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: glass
                    ? [
                        Colors.transparent,
                        scheme.scrim.withValues(alpha: 0.35),
                        scheme.scrim.withValues(alpha: 0.8),
                      ]
                    : [
                        scheme.surface.withValues(alpha: 0.1),
                        scheme.surface.withValues(alpha: 0.55),
                        scheme.surface,
                        scheme.surface,
                      ],
                stops: glass
                    ? const [0.0, 0.55, 1.0]
                    : const [0.0, 0.55, 0.9, 1.0],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
              Dimens.cardPad,
              Dimens.gapLg,
              Dimens.cardPad,
              Dimens.gapLg + 12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Hero(
                      tag: tag,
                      flightShuttleBuilder: (_, _, _, _, toContext) =>
                          (toContext.widget as Hero).child,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(Dimens.radius),
                        child: cachedNetworkImage(
                          imageUrl: media.cover,
                          fit: BoxFit.cover,
                          width: coverH * 0.68,
                          height: coverH,
                          placeholder: (_, _) => SizedBox(
                            width: coverH * 0.68,
                            height: coverH,
                            child: ColoredBox(
                              color: scheme.surfaceContainerHigh,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: Dimens.gap),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              if (status != null)
                                Flexible(
                                  child: Text(
                                    status,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: text.labelMedium?.copyWith(
                                      color: scheme.primary,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                              if (score != null) ...[
                                SizedBox(width: Dimens.gapSm),
                                Icon(
                                  Icons.star_rounded,
                                  size: 14,
                                  color: scheme.primary,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  score.toStringAsFixed(1),
                                  style: text.labelMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            media.mainName,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: text.titleLarge?.copyWith(
                              color: fg,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: Dimens.gapSm),
                Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: _count(media),
                            style: TextStyle(color: fg),
                          ),
                          TextSpan(
                            text: media.anime != null
                                ? ' Episodes'
                                : ' Chapters',
                            style: TextStyle(color: fg.withValues(alpha: 0.66)),
                          ),
                        ],
                      ),
                      style: text.bodyMedium,
                    ),
                    SizedBox(width: Dimens.gap),
                    Expanded(
                      child: Text(
                        media.genres.take(3).join(' • '),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.end,
                        style: text.bodyMedium?.copyWith(
                          color: fg.withValues(alpha: 0.66),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SlideSkeleton extends StatelessWidget {
  const _SlideSkeleton();

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final coverH = responsive(mobile: 160.0, tablet: 190.0, desktop: 190.0);
    final bone = scheme.onSurface.withValues(alpha: 0.12);

    Widget block(double? width, double height, {double radius = 6}) =>
        Skeleton.leaf(
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: bone,
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
        );

    return Skeletonizer(
      child: ColoredBox(
        color: scheme.surfaceContainerHigh,
        child: Stack(
          fit: StackFit.expand,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    scheme.surface.withValues(alpha: 0.5),
                    scheme.surface,
                  ],
                  stops: const [0.0, 0.55, 1.0],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                Dimens.cardPad,
                Dimens.gapLg,
                Dimens.cardPad,
                Dimens.gapLg + 12,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  block(coverH * 0.68, coverH, radius: Dimens.radius),
                  SizedBox(width: Dimens.gap),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        block(80, 12),
                        const SizedBox(height: 10),
                        block(double.infinity, 20),
                        const SizedBox(height: 6),
                        block(160, 20),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            block(54, 22, radius: 11),
                            const SizedBox(width: 6),
                            block(54, 22, radius: 11),
                            const SizedBox(width: 6),
                            block(54, 22, radius: 11),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            PositionedDirectional(
              end: Dimens.cardPad,
              bottom: 12,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (var i = 0; i < 4; i++)
                    Container(
                      margin: const EdgeInsetsDirectional.only(start: 4),
                      width: i == 0 ? 18 : 6,
                      height: 6,
                      decoration: BoxDecoration(
                        color: bone,
                        borderRadius: BorderRadius.circular(3),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
