import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

/// Layout class from `sizer` (`Device.screenType`), fed from `MediaQuery` by the
/// app builder in `main.dart`. `< 600` logical px wide = mobile, `< 1100` =
/// tablet, else desktop.
ScreenType get screenType => Device.screenType;

bool get isMobile => Device.screenType == ScreenType.mobile;
bool get isTablet => Device.screenType == ScreenType.tablet;
bool get isDesktop => Device.screenType == ScreenType.desktop;

/// Pick a value per layout class. [tablet] falls back to [mobile], [desktop]
/// to [tablet].
T responsive<T>({required T mobile, T? tablet, T? desktop}) =>
    switch (Device.screenType) {
      ScreenType.mobile => mobile,
      ScreenType.tablet => tablet ?? mobile,
      ScreenType.desktop => desktop ?? tablet ?? mobile,
    };

/// The single source of truth for spacing, radii and card/rail dimensions.
///
/// Every value scales with the layout class (via [responsive]) so the app
/// feels native on a phone and roomy on desktop without per-widget guesswork.
/// Use these instead of raw pixel constants.
abstract final class Dimens {
  // --- spacing scale ---
  static double get gapXs => responsive(mobile: 4, tablet: 5, desktop: 6);
  static double get gapSm => responsive(mobile: 8, tablet: 10, desktop: 10);
  static double get gap => responsive(mobile: 12, tablet: 14, desktop: 16);
  static double get gapLg => responsive(mobile: 18, tablet: 22, desktop: 24);
  static double get gapXl => responsive(mobile: 28, tablet: 34, desktop: 40);

  // --- page + card padding ---
  static double get pagePad =>
      responsive(mobile: 16, tablet: 20, desktop: 22);
  static double get cardPad => responsive(mobile: 16, tablet: 18, desktop: 18);
  static EdgeInsets get pageInsets => EdgeInsets.symmetric(horizontal: pagePad);
  static EdgeInsets get cardInsets => EdgeInsets.all(cardPad);

  // --- radii ---
  static double get radius => 22;
  static double get radiusSm => 16;
  static double get radiusLg => 28;
  static BorderRadius get border => BorderRadius.circular(radius);
  static BorderRadius get borderSm => BorderRadius.circular(radiusSm);
  static BorderRadius get borderLg => BorderRadius.circular(radiusLg);

  // --- rail item (media / character / staff cards all share these) ---
  static double get railItemW =>
      responsive(mobile: 112, tablet: 128, desktop: 122);
  static double get railImageH => railItemW * 1.42;
  static double get railGap => responsive(mobile: 10, tablet: 12, desktop: 12);

  /// Height a horizontal rail must reserve: image + progress bar + 2-line
  /// title + 1-line subtitle + the gaps between them.
  static double get railItemH => railImageH + 94;

  // --- detail poster ---
  static double get detailPosterW =>
      responsive(mobile: 108, tablet: 122, desktop: 118);
  static double get detailPosterH => detailPosterW * 1.46;
}
