import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

class CustomJsonTheme {
  CustomJsonTheme._();

  static Future<File> file() async {
    final configHome =
        Platform.environment['XDG_CONFIG_HOME'] ??
        '${Platform.environment['HOME']}/.config';
    return File('$configHome/dartotsu/theme.json');
  }

  static Color? _color(Map<String, dynamic> json, String key) {
    final raw = json[key];
    if (raw is! String || raw.isEmpty) return null;
    var hex = raw.trim().replaceFirst('#', '');
    if (hex.length == 6) hex = 'FF$hex';
    if (hex.length != 8) return null;
    final value = int.tryParse(hex, radix: 16);
    return value == null ? null : Color(value);
  }

  static ColorScheme _scheme(Map<String, dynamic>? json, Brightness brightness) {
    final fallback = brightness == Brightness.dark
        ? const ColorScheme.dark()
        : const ColorScheme.light();
    if (json == null) return fallback;

    Color c(String key, Color fb) => _color(json, key) ?? fb;

    return ColorScheme(
      brightness: brightness,
      primary: c('primary', fallback.primary),
      onPrimary: c('onPrimary', fallback.onPrimary),
      primaryContainer: c('primaryContainer', fallback.primaryContainer),
      onPrimaryContainer: c(
        'onPrimaryContainer',
        fallback.onPrimaryContainer,
      ),
      secondary: c('secondary', fallback.secondary),
      onSecondary: c('onSecondary', fallback.onSecondary),
      secondaryContainer: c(
        'secondaryContainer',
        fallback.secondaryContainer,
      ),
      onSecondaryContainer: c(
        'onSecondaryContainer',
        fallback.onSecondaryContainer,
      ),
      tertiary: c('tertiary', fallback.tertiary),
      onTertiary: c('onTertiary', fallback.onTertiary),
      tertiaryContainer: c('tertiaryContainer', fallback.tertiaryContainer),
      onTertiaryContainer: c(
        'onTertiaryContainer',
        fallback.onTertiaryContainer,
      ),
      error: c('error', fallback.error),
      onError: c('onError', fallback.onError),
      errorContainer: c('errorContainer', fallback.errorContainer),
      onErrorContainer: c('onErrorContainer', fallback.onErrorContainer),
      surface: c('surface', fallback.surface),
      onSurface: c('onSurface', fallback.onSurface),
      surfaceContainerHighest: c(
        'surfaceContainerHighest',
        fallback.surfaceContainerHighest,
      ),
      onSurfaceVariant: c('onSurfaceVariant', fallback.onSurfaceVariant),
      outline: c('outline', fallback.outline),
      outlineVariant: c('outlineVariant', fallback.outlineVariant),
      inverseSurface: c('inverseSurface', fallback.inverseSurface),
      onInverseSurface: c('onInverseSurface', fallback.onInverseSurface),
      inversePrimary: c('inversePrimary', fallback.inversePrimary),
      shadow: c('shadow', fallback.shadow),
      surfaceTint: c('surfaceTint', fallback.primary),
      scrim: c('scrim', fallback.scrim),
    );
  }

  static Future<(ColorScheme light, ColorScheme dark)?> read() async {
    try {
      final f = await file();
      if (!await f.exists()) return null;
      final raw = jsonDecode(await f.readAsString()) as Map<String, dynamic>;
      final light = _scheme(
        raw['light'] as Map<String, dynamic>?,
        Brightness.light,
      );
      final dark = _scheme(
        raw['dark'] as Map<String, dynamic>?,
        Brightness.dark,
      );
      return (light, dark);
    } catch (_) {
      return null;
    }
  }

  static String _hex(Color c) =>
      '#${c.toARGB32().toRadixString(16).padLeft(8, '0').substring(2)}';

  static Map<String, String> _toJson(ColorScheme s) => {
    'primary': _hex(s.primary),
    'onPrimary': _hex(s.onPrimary),
    'primaryContainer': _hex(s.primaryContainer),
    'onPrimaryContainer': _hex(s.onPrimaryContainer),
    'secondary': _hex(s.secondary),
    'onSecondary': _hex(s.onSecondary),
    'secondaryContainer': _hex(s.secondaryContainer),
    'onSecondaryContainer': _hex(s.onSecondaryContainer),
    'tertiary': _hex(s.tertiary),
    'onTertiary': _hex(s.onTertiary),
    'tertiaryContainer': _hex(s.tertiaryContainer),
    'onTertiaryContainer': _hex(s.onTertiaryContainer),
    'error': _hex(s.error),
    'onError': _hex(s.onError),
    'errorContainer': _hex(s.errorContainer),
    'onErrorContainer': _hex(s.onErrorContainer),
    'surface': _hex(s.surface),
    'onSurface': _hex(s.onSurface),
    'surfaceContainerHighest': _hex(s.surfaceContainerHighest),
    'onSurfaceVariant': _hex(s.onSurfaceVariant),
    'outline': _hex(s.outline),
    'outlineVariant': _hex(s.outlineVariant),
    'inverseSurface': _hex(s.inverseSurface),
    'onInverseSurface': _hex(s.onInverseSurface),
    'inversePrimary': _hex(s.inversePrimary),
    'shadow': _hex(s.shadow),
    'surfaceTint': _hex(s.surfaceTint),
    'scrim': _hex(s.scrim),
  };

  static Future<void> seedIfMissing(ColorScheme light, ColorScheme dark) async {
    final f = await file();
    if (await f.exists()) return;
    await f.parent.create(recursive: true);
    final json = {'light': _toJson(light), 'dark': _toJson(dark)};
    await f.writeAsString(const JsonEncoder.withIndent('  ').convert(json));
  }

  static Stream<void> watch() async* {
    final f = await file();
    final dir = f.parent;
    if (!await dir.exists()) {
      await dir.create(recursive: true);
    }
    yield null;
    await for (final event in dir.watch(
      events:
          FileSystemEvent.modify |
          FileSystemEvent.create |
          FileSystemEvent.delete,
    )) {
      if (event.path == f.path) yield null;
    }
  }
}
