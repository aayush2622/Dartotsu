import 'package:flutter/cupertino.dart';
import 'package:flutter_animate/flutter_animate.dart';

const double kAnimationSpeed = 1.0;

extension WidgetAnimations on Widget {
  Duration _duration(int ms) =>
      Duration(milliseconds: (ms * kAnimationSpeed).round());

  bool get _disabled => kAnimationSpeed <= 0;

  Animate _animation(bool target) => animate(target: target ? 1 : 0);

  Animate _fade({
    required bool target,
    Duration delay = Duration.zero,
    int duration = 250,
    Curve curve = Curves.easeOut,
  }) {
    return _animation(
      target,
    ).fadeIn(delay: delay, duration: _duration(duration), curve: curve);
  }

  Animate _fadeScale({
    required bool target,
    Duration delay = Duration.zero,
    int fadeDuration = 180,
    Offset begin = const Offset(.9, .9),
    Offset end = const Offset(1, 1),
    int scaleDuration = 300,
    Curve scaleCurve = Curves.easeOutBack,
  }) {
    return _fade(target: target, delay: delay, duration: fadeDuration).scale(
      begin: begin,
      end: end,
      duration: _duration(scaleDuration),
      curve: scaleCurve,
    );
  }

  /// Drops in from above with a slight zoom.
  Widget animateDropIn({bool target = true}) {
    if (_disabled) return this;

    return _animation(target)
        .slide(
          begin: const Offset(0, -0.9),
          end: Offset.zero,
          curve: Curves.easeOutCubic,
          duration: _duration(250),
        )
        .scale(
          begin: const Offset(0.55, 0.55),
          end: const Offset(1, 1),
          curve: Curves.easeOutCubic,
          duration: _duration(350),
        );
  }

  /// Horizontal entrance.
  Widget animateHorizontalEntrance({bool target = true}) {
    if (_disabled) return this;

    return _animation(target)
        .slide(
          begin: const Offset(1, 0),
          end: Offset.zero,
          curve: Curves.easeInOut,
          duration: _duration(200),
        )
        .scale(
          begin: const Offset(0.1, 0.1),
          end: const Offset(1, 1),
          curve: Curves.easeInOut,
          duration: _duration(400),
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

    return _fade(target: target, delay: delay, duration: duration).slideY(
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

    return _fade(target: target, delay: delay, duration: duration).slideX(
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

    return _fade(target: target, delay: delay, duration: 150)
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

    return _fadeScale(
      target: target,
      delay: delay,
      fadeDuration: 800,
      begin: begin,
      end: const Offset(1, 1),
      scaleDuration: 350,
    );
  }

  /// Shimmer then pop.
  Widget animateShimmerPop({
    bool target = true,
    Duration delay = const Duration(milliseconds: 200),
  }) {
    if (_disabled) return this;

    return _animation(target)
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

    return _fade(target: target, delay: delay, duration: 400)
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

    return _fade(
      target: target,
      delay: delay,
      duration: duration,
    ).blurXY(begin: blur, end: 0, delay: delay, duration: _duration(duration));
  }

  Widget animatePageTransition(double animation) {
    if (_disabled) return this;

    // No blur here — animating an ImageFilter over a full content page repaints
    // every frame and janks on heavy screens. Fade + slide reads just as well.
    return animate(adapter: ValueAdapter(animation))
        .fade(begin: 0, end: 1, curve: Curves.easeOutExpo)
        .slideX(begin: 0.12, end: 0, curve: Curves.easeOutExpo);
  }

  Widget animateNavItem({required bool selected, bool active = false}) {
    if (_disabled) return this;

    final enabled = selected || active;

    return _animation(enabled).scale(
      begin: const Offset(.94, .94),
      end: active ? const Offset(1.08, 1.08) : const Offset(1, 1),
      duration: _duration(260),
      curve: Curves.easeOutBack,
    );
  }

  /// Icon -> disappear when selected.
  Widget animateNavIcon({bool selected = false}) {
    if (_disabled) return this;

    return _animation(!selected)
        .fade(begin: 0, end: 1, delay: _duration(80), duration: _duration(180))
        .moveY(
          begin: -8,
          end: 0,
          delay: _duration(80),
          duration: _duration(220),
          curve: Curves.easeOutCubic,
        )
        .scale(
          begin: const Offset(.85, .85),
          end: const Offset(1, 1),
          delay: _duration(80),
          duration: _duration(220),
          curve: Curves.easeOutBack,
        );
  }

  Widget animateNavLabel({bool selected = false}) {
    if (_disabled) return this;

    return _animation(selected)
        .fade(begin: 0, end: 1, duration: _duration(160))
        .moveY(
          begin: 8,
          end: 0,
          duration: _duration(200),
          curve: Curves.easeOutCubic,
        )
        .scale(
          begin: const Offset(.92, .92),
          end: const Offset(1, 1),
          duration: _duration(200),
          curve: Curves.easeOutBack,
        );
  }

  Widget animateNavIndicator() {
    if (_disabled) return this;

    return animate()
        .fade(duration: _duration(180))
        .scaleX(
          begin: .15,
          end: 1,
          duration: _duration(260),
          curve: Curves.easeOutBack,
        );
  }

  Widget animateNavSelection({required bool selected}) {
    if (_disabled) return this;

    return _fadeScale(
      target: selected,
      fadeDuration: 200,
      begin: const Offset(.72, .72),
      end: const Offset(1, 1),
      scaleDuration: 280,
    );
  }

  /// Service button animation.
  Widget animateNavAvatar({bool active = true}) {
    if (_disabled) return this;

    return _fadeScale(
      target: active,
      fadeDuration: 220,
      begin: const Offset(.9, .9),
      end: const Offset(1, 1),
      scaleDuration: 300,
    );
  }
}
