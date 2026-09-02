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

const _shapeXl = 28.0;
const _shapeLg = 20.0;
const _shapeMd = 16.0;
const _pill = StadiumBorder();

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

  ButtonStyle button({EdgeInsetsGeometry? padding}) => ButtonStyle(
    shape: const WidgetStatePropertyAll(_pill),
    padding: WidgetStatePropertyAll(
      padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    ),
    minimumSize: const WidgetStatePropertyAll(Size(0, 48)),
    textStyle: WidgetStatePropertyAll(
      _poppinsTextTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
    ),
    animationDuration: Durations.short4,
  );

  return base.copyWith(
    colorScheme: scheme,
    scaffoldBackgroundColor: scaffoldBg,
    canvasColor: glass ? Colors.transparent : base.canvasColor,
    cardColor: cardColor,
    splashFactory: InkSparkle.splashFactory,
    appBarTheme: base.appBarTheme.copyWith(
      backgroundColor: glass ? Colors.transparent : null,
      scrolledUnderElevation: glass ? 0 : null,
      elevation: glass ? 0 : null,
      centerTitle: false,
      titleTextStyle: _poppinsTextTheme.titleLarge?.copyWith(
        color: scheme.onSurface,
      ),
    ),
    cardTheme: base.cardTheme.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_shapeXl),
      ),
      clipBehavior: Clip.antiAlias,
    ),
    filledButtonTheme: FilledButtonThemeData(style: button()),
    elevatedButtonTheme: ElevatedButtonThemeData(style: button()),
    outlinedButtonTheme: OutlinedButtonThemeData(style: button()),
    textButtonTheme: TextButtonThemeData(
      style: button(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(_pill),
        animationDuration: Durations.short4,
      ),
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_shapeLg),
      ),
      extendedTextStyle: _poppinsTextTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w700,
      ),
    ),
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: ButtonStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(_shapeMd)),
        ),
        backgroundColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected)
              ? scheme.secondaryContainer
              : Colors.transparent,
        ),
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    ),
    chipTheme: base.chipTheme.copyWith(
      shape: _pill,
      side: BorderSide.none,
      elevation: 0,
      pressElevation: 0,
    ),
    dialogTheme: base.dialogTheme.copyWith(
      backgroundColor: glass ? scheme.surface.withValues(alpha: 0.6) : null,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_shapeXl),
      ),
    ),
    bottomSheetTheme: base.bottomSheetTheme.copyWith(
      backgroundColor: Colors.transparent,
      elevation: 0,
      modalBackgroundColor: Colors.transparent,
      modalElevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(_shapeXl)),
      ),
    ),
    snackBarTheme: base.snackBarTheme.copyWith(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_shapeMd),
      ),
    ),
    menuTheme: MenuThemeData(
      style: MenuStyle(
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(_shapeMd)),
        ),
      ),
    ),
    popupMenuTheme: base.popupMenuTheme.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_shapeMd),
      ),
    ),
    tooltipTheme: base.tooltipTheme.copyWith(
      decoration: BoxDecoration(
        color: scheme.inverseSurface,
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    inputDecorationTheme: base.inputDecorationTheme.copyWith(
      filled: true,
      fillColor: scheme.surfaceContainerHighest.withValues(alpha: 0.5),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_shapeMd),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_shapeMd),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_shapeMd),
        borderSide: BorderSide(color: scheme.primary, width: 2),
      ),
    ),
    sliderTheme: const SliderThemeData(year2023: false),
    progressIndicatorTheme: const ProgressIndicatorThemeData(year2023: false),
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
      trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
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
