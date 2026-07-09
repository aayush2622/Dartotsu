import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';

const double kAnimationSpeed = 1.0;

extension WidgetAnimations on Widget {
  Duration _duration(int ms) =>
      Duration(milliseconds: (ms * kAnimationSpeed).round());

  bool get _disabled => kAnimationSpeed <= 0;

  /// Drops in from above with a slight zoom.
  Widget animateDropIn({bool target = true}) {
    if (_disabled) return this;

    return animate(
      target: target ? 1 : 0,
      effects: [
        SlideEffect(
          begin: const Offset(0, -0.9),
          end: Offset.zero,
          curve: Curves.easeOutCubic,
          duration: _duration(250),
        ),
        ScaleEffect(
          begin: const Offset(0.55, 0.55),
          end: const Offset(1, 1),
          curve: Curves.easeOutCubic,
          duration: _duration(350),
        ),
      ],
    );
  }

  /// Horizontal entrance.
  Widget animateHorizontalEntrance({bool target = true}) {
    if (_disabled) return this;

    return animate(
      target: target ? 1 : 0,
      effects: [
        SlideEffect(
          begin: const Offset(1, 0),
          end: Offset.zero,
          curve: Curves.easeInOut,
          duration: _duration(200),
        ),
        ScaleEffect(
          begin: const Offset(0.1, 0.1),
          end: const Offset(1, 1),
          curve: Curves.easeInOut,
          duration: _duration(400),
        ),
      ],
    );
  }

  /// Fade + slide up.
  Widget animateFadeUp({
    bool target = true,
    double begin = 0.3,
    Duration delay = Duration.zero,
    int duration = 400,
    Curve curve = Curves.easeOutCubic,
  }) {
    if (_disabled) return this;

    return animate(target: target ? 1 : 0)
        .fadeIn(
          delay: delay,
          duration: _duration(duration),
          curve: Curves.easeOut,
        )
        .slideY(
          begin: begin,
          end: 0,
          delay: delay,
          duration: _duration(duration),
          curve: curve,
        );
  }

  /// Fade + slide horizontally.
  Widget animateFadeSlideX({
    bool target = true,
    required double begin,
    Duration delay = Duration.zero,
    int duration = 400,
    Curve curve = Curves.easeOutCubic,
  }) {
    if (_disabled) return this;

    return animate(target: target ? 1 : 0)
        .fadeIn(
          delay: delay,
          duration: _duration(duration),
          curve: Curves.easeOut,
        )
        .slideX(
          begin: begin,
          end: 0,
          delay: delay,
          duration: _duration(duration),
          curve: curve,
        );
  }

  /// Fade + slide + pop.
  Widget animateFadeScale({
    bool target = true,
    double slideBegin = 0.4,
    Offset scaleBegin = const Offset(0.96, 0.96),
    Duration delay = Duration.zero,
  }) {
    if (_disabled) return this;

    return animate(target: target ? 1 : 0)
        .fadeIn(delay: delay, duration: _duration(150), curve: Curves.easeOut)
        .slideY(
          begin: slideBegin,
          end: 0,
          delay: delay,
          duration: _duration(250),
          curve: Curves.easeOutCubic,
        )
        .scale(
          begin: scaleBegin,
          end: const Offset(1, 1),
          duration: _duration(300),
          curve: Curves.easeOutBack,
        );
  }

  /// Fade + pop.
  Widget animatePopIn({
    bool target = true,
    Offset begin = const Offset(0.5, 0.5),
    Duration delay = Duration.zero,
  }) {
    if (_disabled) return this;

    return animate(target: target ? 1 : 0)
        .fadeIn(delay: delay, duration: _duration(800))
        .scale(
          begin: begin,
          end: const Offset(1, 1),
          duration: _duration(350),
          curve: Curves.easeOutBack,
        );
  }

  /// Shimmer then pop.
  Widget animateShimmerPop({
    bool target = true,
    Duration delay = const Duration(milliseconds: 200),
  }) {
    if (_disabled) return this;

    return animate(target: target ? 1 : 0)
        .shimmer(delay: delay, duration: _duration(1200))
        .then()
        .scale(
          begin: const Offset(0.94, 1),
          end: const Offset(1, 1),
          duration: _duration(300),
          curve: Curves.easeOutBack,
        );
  }

  /// Fade in, lift, then shake.
  Widget animateAttention({
    bool target = true,
    Duration delay = Duration.zero,
  }) {
    if (_disabled) return this;

    return animate(target: target ? 1 : 0)
        .fadeIn(delay: delay, duration: _duration(400))
        .slideY(
          begin: 0.3,
          end: 0,
          delay: delay,
          duration: _duration(400),
          curve: Curves.easeOutCubic,
        )
        .then()
        .shake(hz: 2);
  }

  /// Fade + unblur.
  Widget animateBlurIn({
    bool target = true,
    double blur = 10,
    Duration delay = Duration.zero,
    int duration = 1200,
  }) {
    if (_disabled) return this;

    return animate(target: target ? 1 : 0)
        .fadeIn(delay: delay, duration: _duration(duration))
        .blurXY(
          begin: blur,
          end: 0,
          delay: delay,
          duration: _duration(duration),
        );
  }
}
