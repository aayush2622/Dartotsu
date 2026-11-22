import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/ScrimOverlay.dart';

class HeaderBanner extends StatelessWidget {
  final String url;

  const HeaderBanner({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final surface = context.colorScheme.surface;
    return ClipRect(
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          RepaintBoundary(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: cachedNetworkImage(
                imageUrl: url,
                fit: BoxFit.cover,
                cacheWidth: 720,
              ),
            ),
          ),
          ScrimOverlay(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [surface.withValues(alpha: 0.25), surface],
            ),
          ),
        ],
      ),
    );
  }
}
