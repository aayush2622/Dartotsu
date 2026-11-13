import 'package:flutter/material.dart';

import '../../Utils/Extensions/ClickCursor.dart';
import '../../Utils/Nav/KeyboardMode.dart';
import 'GlassTheme.dart';
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

bool _keyFocus(Set<WidgetState> states) =>
    states.contains(WidgetState.focused) && usingKeyboard;

const _containerTint = 0.28;

ThemeData buildAppTheme(
  ThemeData base, {
  required bool isOled,
  bool glass = false,
  String? fontFamily,
}) {
  final dark = base.brightness == Brightness.dark;
  final oled = isOled && dark;
  final appTextTheme = _buildTextTheme(fontFamily ?? _defaultFontFamily);

  var scheme = base.colorScheme;
  if (oled) {
    scheme = scheme.copyWith(surface: Colors.black);
  }

  // Unset container roles fall back to Flutter's hardcoded M3 defaults,
  // not this scheme's surface — on some palettes that makes cards invisible.
  Color tint(double amount) => Color.alphaBlend(
    (dark ? Colors.white : Colors.black).withValues(alpha: amount),
    scheme.surface,
  );

  final menuColor = tint(0.10);
  Color layer(double amount, double alpha) =>
      glass ? tint(amount).withValues(alpha: alpha) : tint(amount);

  scheme = scheme.copyWith(
    surfaceContainerLowest: layer(0, 0.30),
    surfaceContainerLow: layer(0.04, 0.40),
    surfaceContainer: layer(0.07, 0.46),
    surfaceContainerHigh: layer(0.10, 0.52),
    surfaceContainerHighest: layer(0.13, 0.58),
  );
  scheme = scheme.copyWith(
    primaryContainer: Color.lerp(
      scheme.primaryContainer,
      scheme.primary,
      _containerTint,
    ),
    secondaryContainer: Color.lerp(
      scheme.secondaryContainer,
      scheme.primary,
      _containerTint,
    ),
  );
  if (glass) {
    final tonal = dark ? 0.58 : 0.66;
    scheme = scheme.copyWith(
      primaryContainer: scheme.primaryContainer.withValues(alpha: tonal),
      secondaryContainer: scheme.secondaryContainer.withValues(alpha: tonal),
      tertiaryContainer: scheme.tertiaryContainer.withValues(alpha: tonal),
      errorContainer: scheme.errorContainer.withValues(alpha: tonal),
    );
  }

  final scaffoldBg = glass
      ? Colors.transparent
      : oled
      ? Colors.black
      : base.scaffoldBackgroundColor;

  final cardColor = glass
      ? scheme.surface.withValues(alpha: 0.62)
      : deriveCardColor(surface: scheme.surface, isDark: dark, isOled: oled);

  final edge = BorderSide(
    color: Colors.white.withValues(alpha: dark ? 0.14 : 0.55),
  );
  final focusRing = WidgetStateProperty.resolveWith<BorderSide?>(
    (s) => _keyFocus(s) ? BorderSide(color: scheme.onSurface, width: 2) : null,
  );
  final glassRing = WidgetStateProperty.resolveWith<BorderSide?>(
    (s) => _keyFocus(s)
        ? BorderSide(color: scheme.onSurface, width: 2)
        : glass && !s.contains(WidgetState.disabled)
        ? edge
        : null,
  );
  final focusOverlay = WidgetStateProperty.resolveWith<Color?>(
    (s) => _keyFocus(s) ? scheme.primary.withValues(alpha: 0.24) : null,
  );

  ButtonStyle button({EdgeInsetsGeometry? padding, bool rim = false}) =>
      ButtonStyle(
        side: rim ? glassRing : focusRing,
        overlayColor: focusOverlay,
        shape: const WidgetStatePropertyAll(_pill),
        padding: WidgetStatePropertyAll(
          padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        minimumSize: const WidgetStatePropertyAll(Size(0, 48)),
        textStyle: WidgetStatePropertyAll(
          appTextTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
        animationDuration: Durations.short4,
        mouseCursor: kClickCursor,
      );

  return base.copyWith(
    extensions: [
      ...base.extensions.values.where((e) => e is! GlassTheme),
      if (glass) GlassTheme(edge: edge),
    ],
    colorScheme: scheme,
    scaffoldBackgroundColor: scaffoldBg,
    canvasColor: glass ? Colors.transparent : base.canvasColor,
    cardColor: cardColor,
    focusColor: scheme.secondaryContainer.withValues(alpha: 0.9),
    splashFactory: InkRipple.splashFactory,
    appBarTheme: base.appBarTheme.copyWith(
      backgroundColor: glass ? Colors.transparent : null,
      scrolledUnderElevation: glass ? 0 : null,
      elevation: glass ? 0 : null,
      centerTitle: false,
      titleTextStyle: appTextTheme.titleLarge?.copyWith(
        color: scheme.onSurface,
      ),
    ),
    cardTheme: base.cardTheme.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_shapeXl),
      ),
      clipBehavior: Clip.antiAlias,
    ),
    filledButtonTheme: FilledButtonThemeData(style: button(rim: true)),
    elevatedButtonTheme: ElevatedButtonThemeData(style: button(rim: true)),
    outlinedButtonTheme: OutlinedButtonThemeData(style: button()),
    textButtonTheme: TextButtonThemeData(
      style: button(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        shape: const WidgetStatePropertyAll(_pill),
        animationDuration: Durations.short4,
        mouseCursor: kClickCursor,
        backgroundColor: WidgetStateProperty.resolveWith(
          (s) => _keyFocus(s) ? scheme.secondaryContainer : null,
        ),
        overlayColor: focusOverlay,
      ),
    ),
    floatingActionButtonTheme: base.floatingActionButtonTheme.copyWith(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_shapeLg),
      ),
      extendedTextStyle: appTextTheme.labelLarge?.copyWith(
        fontWeight: FontWeight.w700,
      ),
    ),
    chipTheme: base.chipTheme.copyWith(
      shape: _pill,
      side: glass ? edge : BorderSide.none,
      color: WidgetStateProperty.resolveWith(
        (s) => _keyFocus(s)
            ? scheme.secondaryContainer
            : glass && !s.contains(WidgetState.selected)
            ? scheme.surfaceContainerHighest
            : null,
      ),
      elevation: 0,
      pressElevation: 0,
    ),
    dialogTheme: base.dialogTheme.copyWith(
      backgroundColor: glass ? scheme.surface.withValues(alpha: 0.84) : null,
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
        backgroundColor: glass ? WidgetStatePropertyAll(menuColor) : null,
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(_shapeMd)),
        ),
      ),
    ),
    dropdownMenuTheme: glass
        ? DropdownMenuThemeData(
            menuStyle: MenuStyle(
              backgroundColor: WidgetStatePropertyAll(menuColor),
            ),
          )
        : base.dropdownMenuTheme,
    popupMenuTheme: base.popupMenuTheme.copyWith(
      color: glass ? menuColor : null,
      mouseCursor: kClickCursor,
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
      fillColor: glass
          ? scheme.surfaceContainerHighest
          : scheme.surfaceContainerHighest.withValues(alpha: 0.5),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_shapeMd),
        borderSide: glass ? edge : BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_shapeMd),
        borderSide: glass ? edge : BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(_shapeMd),
        borderSide: BorderSide(color: scheme.primary, width: 2),
      ),
    ),
    sliderTheme: const SliderThemeData(
      year2023: false,
      mouseCursor: kClickCursor,
    ),
    listTileTheme: base.listTileTheme.copyWith(mouseCursor: kClickCursor),
    tabBarTheme: base.tabBarTheme.copyWith(mouseCursor: kClickCursor),
    checkboxTheme: base.checkboxTheme.copyWith(
      mouseCursor: kClickCursor,
      overlayColor: focusOverlay,
    ),
    radioTheme: base.radioTheme.copyWith(
      mouseCursor: kClickCursor,
      overlayColor: focusOverlay,
    ),
    menuButtonTheme: const MenuButtonThemeData(
      style: ButtonStyle(mouseCursor: kClickCursor),
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(year2023: false),
    textTheme: base.textTheme.merge(appTextTheme),
    switchTheme: SwitchThemeData(
      mouseCursor: kClickCursor,
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
      trackOutlineColor: WidgetStateProperty.resolveWith(
        (s) => _keyFocus(s) ? scheme.onSurface : Colors.transparent,
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

const _defaultFontFamily = 'Manrope';

TextTheme _buildTextTheme(String fontFamily) => TextTheme(
  displayLarge: TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 56,
    letterSpacing: -0.5,
  ),
  displayMedium: TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 48,
  ),
  displaySmall: TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 36,
  ),
  headlineLarge: TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 32,
  ),
  headlineMedium: TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 28,
  ),
  headlineSmall: TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 24,
  ),
  titleLarge: TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 22,
  ),
  titleMedium: TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  ),
  titleSmall: TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  ),
  bodyLarge: TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 16,
  ),
  bodyMedium: TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  ),
  bodySmall: TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12,
  ),
  labelLarge: TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 14,
  ),
  labelMedium: TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 12,
  ),
  labelSmall: TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 11,
  ),
);
