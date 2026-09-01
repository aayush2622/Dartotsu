import 'package:sizer/sizer.dart';

/// Layout class from `sizer` (`Device.screenType`), set by the `Sizer` wrapper
/// in `main.dart`. `< 600` logical px wide = mobile, `< 1100` = tablet, else
/// desktop.
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
