import 'dart:ui';

import 'package:flutter/material.dart';

import '../../Api/Discord/DiscordPresence.dart';
import '../../Api/Discord/PresenceScope.dart';
import '../../Core/ThemeManager/GlassBackgroundSource.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import 'CachedNetworkImage.dart';
import '../../Core/State/State.dart';

abstract class BaseScreen<T extends StatefulWidget> extends State<T> {
  Widget buildContent(BuildContext context);

  DiscordPresence? get presence => null;

  final _presenceTick = Trigger();

  void refreshPresence() => _presenceTick.fire();

  String? get glassBackgroundUrl => resolveGlassBackground();

  @override
  Widget build(BuildContext context) {
    final theme = find<ThemeController>();
    final built = Watch(() => buildContent(context));
    final content = presence == null
        ? built
        : Watch(() {
            _presenceTick.track();
            return PresenceScope(presence: presence!, child: built);
          });

    return SafeArea(
      child: Watch(() {
        final glass = theme.useGlassMode.value;
        return Stack(
          children: [
            if (glass) GlassBackground(imageUrl: glassBackgroundUrl),
            Scaffold(
              backgroundColor: glass ? Colors.transparent : null,
              body: content,
            ),
          ],
        );
      }),
    );
  }
}

class GlassBackground extends StatelessWidget {
  final String? imageUrl;

  const GlassBackground({super.key, this.imageUrl});

  static final _blur = ImageFilter.blur(sigmaX: 10, sigmaY: 10);

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Positioned.fill(
      child: Stack(
        fit: StackFit.expand,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  scheme.surfaceContainerHigh,
                  scheme.surface,
                  scheme.primaryContainer.withValues(alpha: 0.35),
                ],
              ),
            ),
          ),
          if (imageUrl != null)
            RepaintBoundary(
              child: ImageFiltered(
                imageFilter: _blur,
                child: Opacity(
                  opacity: 0.8,
                  child: cachedNetworkImage(
                    imageUrl: imageUrl,
                    fit: BoxFit.cover,
                    cacheWidth: 640,
                    errorWidget: imageUrl == kFallbackGlassBackground
                        ? null
                        : (_, _, _) => cachedNetworkImage(
                            imageUrl: kFallbackGlassBackground,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
              ),
            ),
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  scheme.surface.withValues(alpha: 0.27),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
