import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Core/ThemeManager/ThemeController.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import 'CachedNetworkImage.dart';

const kFallbackGlassBackground =
    'https://i.pinimg.com/1200x/b2/e7/7f/b2e77f955c3d39655cc7a46802f94748.jpg';

abstract class BaseScreen<T extends StatefulWidget> extends State<T> {
  Widget buildContent(BuildContext context);

  String? get glassBackgroundUrl => kFallbackGlassBackground;

  @override
  Widget build(BuildContext context) {
    final theme = find<ThemeController>();
    final content = buildContent(context);

    return SafeArea(
      child: Obx(() {
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
