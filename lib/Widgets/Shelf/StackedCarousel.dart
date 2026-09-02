import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/Services/Model/Media.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../Components/CachedNetworkImage.dart';

/// A spotlight carousel: the centre card sits in front, its neighbours fan out
/// behind it like a shuffled deck. Auto-advances and loops forever; a drag
/// pauses the timer briefly.
class StackedCarousel extends StatefulWidget {
  final List<Media> items;
  final void Function(Media media, String heroTag) onTap;

  const StackedCarousel({super.key, required this.items, required this.onTap});

  @override
  State<StackedCarousel> createState() => _StackedCarouselState();
}

class _StackedCarouselState extends State<StackedCarousel> {
  static const _viewport = 0.74;
  static const _seed = 100000;

  late final PageController _controller = PageController(
    viewportFraction: _viewport,
    initialPage: _seed,
  );
  double _page = _seed.toDouble();
  Timer? _timer;
  DateTime _pausedUntil = DateTime.fromMillisecondsSinceEpoch(0);

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (mounted && _controller.hasClients) {
        setState(() => _page = _controller.page ?? _page);
      }
    });
    _timer = Timer.periodic(const Duration(milliseconds: 4200), (_) {
      if (!mounted ||
          !_controller.hasClients ||
          DateTime.now().isBefore(_pausedUntil)) {
        return;
      }
      _controller.nextPage(
        duration: const Duration(milliseconds: 650),
        curve: Curves.easeInOutCubic,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  Media _mediaAt(int page) => widget.items[page % widget.items.length];

  @override
  Widget build(BuildContext context) {
    if (widget.items.isEmpty) return const SizedBox.shrink();
    final w = MediaQuery.sizeOf(context).width;
    final cardW = (w * _viewport).clamp(0.0, 420.0);
    final height = cardW / 1.5 + 44;

    return SizedBox(
      height: height,
      child: NotificationListener<ScrollNotification>(
        onNotification: (n) {
          if (n is ScrollStartNotification || n is ScrollUpdateNotification) {
            _pausedUntil = DateTime.now().add(const Duration(seconds: 6));
          }
          return false;
        },
        child: PageView.builder(
          controller: _controller,
          padEnds: true,
          itemBuilder: (context, page) {
            final delta = page - _page;
            final absd = delta.abs();
            if (absd > 2.4) return const SizedBox.shrink();

            final scale = (1.0 - 0.16 * absd).clamp(0.62, 1.0);
            final dy = 18.0 * absd.clamp(0.0, 2.0);
            final rot = 0.05 * delta.clamp(-2.0, 2.0);
            final opacity = (1.0 - 0.33 * absd).clamp(0.0, 1.0);

            return Transform.translate(
              offset: Offset(0, dy),
              child: Transform.rotate(
                angle: rot,
                child: Transform.scale(
                  scale: scale,
                  child: Opacity(
                    opacity: opacity,
                    child: _card(_mediaAt(page), page, cardW),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _card(Media m, int page, double cardW) {
    final scheme = context.colorScheme;
    final tag = 'spotlight:$page:${m.id}';
    final score = (m.meanScore ?? 0) > 0 ? m.meanScore! / 10 : null;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: () => widget.onTap(m, tag),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimens.radius),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.35),
                blurRadius: 24,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          clipBehavior: Clip.antiAlias,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Hero(
                tag: tag,
                flightShuttleBuilder: (_, _, _, _, toContext) =>
                    (toContext.widget as Hero).child,
                child: cachedNetworkImage(
                  imageUrl: m.cover ?? m.banner,
                  fit: BoxFit.cover,
                  placeholder: (_, _) =>
                      ColoredBox(color: scheme.surfaceContainerHigh),
                ),
              ),
              const DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.45, 1.0],
                    colors: [Colors.transparent, Color(0xE6060A12)],
                  ),
                ),
              ),
              if (score != null)
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xCC060A12),
                      borderRadius: BorderRadius.circular(999),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          score.toStringAsFixed(1),
                          style: context.textTheme.labelMedium?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(width: 2),
                        const Icon(
                          Icons.star_rounded,
                          size: 13,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              Positioned(
                left: 14,
                right: 14,
                bottom: 12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (m.status != null)
                      Text(
                        m.status!.replaceAll('_', ' '),
                        style: context.textTheme.labelSmall?.copyWith(
                          color: scheme.primary,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.5,
                        ),
                      ),
                    const SizedBox(height: 2),
                    Text(
                      m.mainName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        shadows: const [
                          Shadow(color: Colors.black, blurRadius: 6),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
