import 'package:flutter/material.dart';

import 'ThemeMode.dart';

export 'AppTheme.dart';
export 'ThemeMode.dart';
export 'Themes/DynamicThemes.dart';
export 'Themes/material.dart';

extension ThemeModePrefX on ThemeModePref {
  ThemeMode get themeMode => switch (this) {
    ThemeModePref.system => ThemeMode.system,
    ThemeModePref.light => ThemeMode.light,
    ThemeModePref.dark => ThemeMode.dark,
  };
}

/// Applies the app's typography, component themes and OLED tweaks on top of a
/// palette's [ThemeData]. Pure — [ThemeController] memoizes the result.
///
/// In glass mode the scaffold, app bars and sheets go transparent so the
/// blurred [GlassBackground] painted by `BaseScreen` shows through everywhere.
ThemeData buildAppTheme(
  ThemeData base, {
  required bool isOled,
  bool glass = false,
}) {
  final dark = base.brightness == Brightness.dark;
  final oled = isOled && dark;

  var scheme = base.colorScheme;
  if (oled) {
    scheme = scheme.copyWith(
      surface: Colors.black,
      surfaceContainerHighest: const Color(0xFF222222),
    );
  }

  final scaffoldBg = glass
      ? Colors.transparent
      : oled
      ? Colors.black
      : base.scaffoldBackgroundColor;

  final cardColor = glass
      ? scheme.surface.withValues(alpha: 0.14)
      : deriveCardColor(surface: scheme.surface, isDark: dark, isOled: oled);

  return base.copyWith(
    colorScheme: scheme,
    scaffoldBackgroundColor: scaffoldBg,
    canvasColor: glass ? Colors.transparent : base.canvasColor,
    cardColor: cardColor,
    appBarTheme: base.appBarTheme.copyWith(
      backgroundColor: glass ? Colors.transparent : null,
      scrolledUnderElevation: glass ? 0 : null,
      elevation: glass ? 0 : null,
    ),
    bottomSheetTheme: base.bottomSheetTheme.copyWith(
      backgroundColor: Colors.transparent,
      elevation: 0,
      modalBackgroundColor: Colors.transparent,
      modalElevation: 0,
    ),
    dialogTheme: base.dialogTheme.copyWith(
      backgroundColor: glass ? scheme.surface.withValues(alpha: 0.6) : null,
    ),
    textTheme: base.textTheme.merge(_poppinsTextTheme),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith(
        (states) => states.contains(WidgetState.selected)
            ? scheme.surface
            : scheme.primary,
      ),
      trackColor: WidgetStateProperty.resolveWith(
        (states) => states.contains(WidgetState.selected)
            ? scheme.primary
            : scheme.surfaceContainerHighest,
      ),
      overlayColor: WidgetStateProperty.all(
        scheme.primary.withValues(alpha: 0.2),
      ),
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
      },
    ),
  );
}

Color deriveCardColor({
  required Color surface,
  required bool isDark,
  required bool isOled,
}) {
  final amount = isDark ? 0.08 : 0.05;
  final base = isOled && isDark ? Colors.black : surface;
  return Color.alphaBlend(
    (isDark ? Colors.white : Colors.black).withValues(alpha: amount),
    base,
  );
}

/// Colour-independent Poppins typography, computed once. Merged onto each
/// palette's [TextTheme] so per-palette text colours are preserved.
const _fontFamily = 'Poppins';

final TextTheme _poppinsTextTheme = const TextTheme(
  displayLarge: TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 56,
    letterSpacing: -0.5,
  ),
  displayMedium: TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 48,
  ),
  displaySmall: TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 36,
  ),
  headlineLarge: TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 32,
  ),
  headlineMedium: TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 28,
  ),
  headlineSmall: TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 24,
  ),
  titleLarge: TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 22,
  ),
  titleMedium: TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  ),
  titleSmall: TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  ),
  bodyLarge: TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  ),
  bodyMedium: TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  ),
  bodySmall: TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  ),
  labelLarge: TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  ),
  labelMedium: TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  ),
  labelSmall: TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 11,
  ),
);
