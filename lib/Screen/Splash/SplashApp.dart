import 'dart:math' as math;
import 'dart:ui' show Brightness, PlatformDispatcher;

import 'package:flutter/widgets.dart';

class SplashApp extends StatefulWidget {
  const SplashApp({super.key});

  @override
  State<SplashApp> createState() => _SplashAppState();
}

class _SplashAppState extends State<SplashApp>
    with SingleTickerProviderStateMixin {
  static const _light = Color(0xFFFBF8FF);
  static const _dark = Color(0xFF141218);
  static const _accent = Color(0xFF9A82DB);

  late final AnimationController _c = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1800),
  )..repeat();

  @override
  void dispose() {
    _c.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dark =
        PlatformDispatcher.instance.platformBrightness == Brightness.dark;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: ColoredBox(
        color: dark ? _dark : _light,
        child: Center(
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: 1),
            duration: const Duration(milliseconds: 650),
            curve: Curves.easeOutBack,
            builder: (context, entrance, child) => AnimatedBuilder(
              animation: _c,
              builder: (context, _) {
                final breathe = math.sin(_c.value * 2 * math.pi);
                final scale = (0.8 + 0.2 * entrance) * (1 + 0.025 * breathe);
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Opacity(
                      opacity: entrance.clamp(0.0, 1.0),
                      child: Transform.scale(
                        scale: scale,
                        child: ClipOval(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          child: Image.asset(
                            'assets/images/logo.png',
                            width: 144,
                            height: 144,
                            fit: BoxFit.cover,
                            cacheWidth: 432,
                            filterQuality: FilterQuality.medium,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 36),
                    SizedBox(
                      width: 120,
                      height: 3,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2),
                        child: Stack(
                          children: [
                            ColoredBox(
                              color: _accent.withValues(alpha: 0.2),
                              child: const SizedBox.expand(),
                            ),
                            Align(
                              alignment: Alignment(-1 + 2 * _c.value, 0),
                              child: const FractionallySizedBox(
                                widthFactor: 0.4,
                                child: ColoredBox(
                                  color: _accent,
                                  child: SizedBox.expand(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
