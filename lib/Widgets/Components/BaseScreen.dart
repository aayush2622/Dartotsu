import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import 'CachedNetworkImage.dart';

abstract class BaseScreen<T extends StatefulWidget> extends State<T> {
  Widget buildContent(BuildContext context);

  static final _blur = ImageFilter.blur(sigmaX: 10, sigmaY: 10);

  @override
  Widget build(BuildContext context) {
    final controller = find<ThemeController>();

    return SafeArea(
      child: Obx(() {
        final isGlassMode = controller.useGlassMode.value;
        return Scaffold(
          backgroundColor: isGlassMode ? Colors.transparent : null,
          body: Stack(
            children: [Obx(() => _buildBackground()), buildContent(context)],
          ),
        );
      }),
    );
  }

  Widget _buildBackground() {
    final themeController = find<ThemeController>();

    if (!themeController.useGlassMode.value) {
      return const SizedBox.shrink();
    }

    final service = find<MediaServiceController>().currentService.value;
    final scheme = Theme.of(context).colorScheme;

    return Positioned.fill(
      child: Stack(
        fit: StackFit.expand,
        children: [
          RepaintBoundary(
            child: Obx(
              () => ImageFiltered(
                imageFilter: _blur,
                child: Opacity(
                  opacity: 0.8,
                  child: cachedNetworkImage(
                    imageUrl:
                        "https://i.pinimg.com/1200x/b2/e7/7f/b2e77f955c3d39655cc7a46802f94748.jpg"
                            .obs
                            .value,
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
                colors: [Colors.transparent, scheme.surface.withAlpha(70)],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
