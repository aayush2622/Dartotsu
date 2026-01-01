import 'dart:ui';

import 'package:flutter/cupertino.dart';

Future<T?> navigateToPage<T>(BuildContext context, Widget page,
    {bool header = true}) {
  return Navigator.of(context).push(
    PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 580),
      reverseTransitionDuration: const Duration(milliseconds: 480),
      pageBuilder: (_, animation, secondaryAnimation) => page,
      transitionsBuilder: (_, animation, secondaryAnimation, child) {
        final curved = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutExpo,
          reverseCurve: Curves.easeInExpo,
        );

        return AnimatedBuilder(
          animation: curved,
          builder: (context, _) {
            final blur = (1 - curved.value) * 8;
            final slideX = (1 - curved.value) * 80;
            final angle = (1 - curved.value) * 0.12;
            final opacity = curved.value;
            return Opacity(
              opacity: opacity,
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..translate(slideX)
                  ..rotateY(angle),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: blur,
                    sigmaY: blur,
                  ),
                  child: child,
                ),
              ),
            );
          },
        );
      },
    ),
  );
}
