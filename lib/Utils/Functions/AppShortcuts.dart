import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Core/Preferences/PrefManager.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Shortcuts/KeyBindings.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Core/ThemeManager/ThemeController.dart';
import '../../Screen/Downloads/DownloadsScreen.dart';
import '../../Screen/Feed/FeedNavigation.dart';
import '../../Screen/Settings/SettingsScreen.dart';
import '../../Screen/Settings/Shortcuts/ShortcutsScreen.dart';
import '../Nav/DpadLayers.dart';
import 'DesktopFullscreen.dart';
import 'NavigateToScreen.dart';
import 'SnackBar.dart';

final _keyboardMode = false.live;

bool get usingKeyboard => _keyboardMode.value;

set usingKeyboard(bool value) {
  if (_keyboardMode.value != value) _keyboardMode.value = value;
}

bool _typing() {
  final context = FocusManager.instance.primaryFocus?.context;
  if (context == null) return false;
  if (context.widget is EditableText) return true;
  var found = false;
  context.visitAncestorElements((e) {
    found = e.widget is EditableText;
    return !found;
  });
  return found;
}

bool _typingSafe(KeyChord chord) =>
    chord.ctrl ||
    chord.alt ||
    chord.meta ||
    chord.key == LogicalKeyboardKey.escape ||
    (chord.key.keyId >= LogicalKeyboardKey.f1.keyId &&
        chord.key.keyId <= LogicalKeyboardKey.f12.keyId);

bool appShortcuts(KeyEvent event) {
  usingKeyboard = true;
  if (event is! KeyDownEvent) return false;

  final chord = KeyChord.of(event);
  if (chord.isModifier) return false;
  if (_typing() && !_typingSafe(chord)) return false;

  final action = KeyBindings.match(BindingGroup.app, event);
  if (action == null) {
    final fallback =
        !KeyBindings.enabled(BindingGroup.app) &&
        chord.key == LogicalKeyboardKey.escape;
    return fallback && layerBack();
  }
  return _run(action.id);
}

bool _run(String id) {
  final theme = find<ThemeController>();
  final context = appContext;
  final service = find<MediaServiceController>().currentService.value;
  switch (id) {
    case 'appBack':
      return layerBack();
    case 'appFullscreen':
      toggleDesktopFullscreen();
    case 'appGlass':
      final v = !theme.useGlassMode.value;
      theme.setGlassEffect(v);
      snackString(
        v ? getString.glassEffectEnabled : getString.glassEffectDisabled,
      );
    case 'appMaterialYou':
      final v = !theme.useMaterialYou.value;
      theme.setMaterialYou(v);
      snackString(
        v ? getString.materialYouEnabled : getString.materialYouDisabled,
      );
    case 'appDark':
      theme.toggleDarkMode();
      snackString(
        theme.isDarkModeActive
            ? getString.darkModeEnabled
            : getString.darkModeDisabled,
      );
    case 'appOled':
      final v = !theme.isOled.value;
      theme.setOled(v);
      snackString(v ? 'OLED mode enabled' : 'OLED mode disabled');
    case 'appSearch':
      if (context != null) openSearch(context, service);
    case 'appSettings':
      if (context != null) navigateToPage(context, const SettingsScreen());
    case 'appDownloads':
      if (context != null) navigateToPage(context, const DownloadsScreen());
    case 'appNotifications':
      if (context != null) openNotifications(context, service);
    case 'appIncognito':
      final v = !PrefName.incognito.value;
      PrefName.incognito.value = v;
      snackString(
        v ? getString.incognitoTurnedOn : getString.incognitoTurnedOff,
      );
    case 'appShortcuts':
      if (context != null) navigateToPage(context, const ShortcutsScreen());
    default:
      return false;
  }
  return true;
}
