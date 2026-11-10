import 'dart:convert';

import 'package:flutter/services.dart';

import '../Preferences/PrefManager.dart';
import '../ThemeManager/LanguageSwitcher.dart';

part 'KeyActions.dart';

enum BindingGroup { app, player, reader }

class KeyChord {
  final LogicalKeyboardKey key;
  final bool shift;
  final bool ctrl;
  final bool alt;
  final bool meta;

  const KeyChord(
    this.key, {
    this.shift = false,
    this.ctrl = false,
    this.alt = false,
    this.meta = false,
  });

  factory KeyChord.of(KeyEvent event) {
    final keyboard = HardwareKeyboard.instance;
    return KeyChord(
      event.logicalKey,
      shift: keyboard.isShiftPressed,
      ctrl: keyboard.isControlPressed,
      alt: keyboard.isAltPressed,
      meta: keyboard.isMetaPressed,
    );
  }

  static KeyChord? parse(String raw) {
    final parts = raw.split(':');
    final id = int.tryParse(parts.first);
    if (id == null || parts.length != 2 || parts[1].length != 4) return null;
    final m = parts[1];
    return KeyChord(
      LogicalKeyboardKey.findKeyByKeyId(id) ?? LogicalKeyboardKey(id),
      shift: m[0] == '1',
      ctrl: m[1] == '1',
      alt: m[2] == '1',
      meta: m[3] == '1',
    );
  }

  bool get isModifier => {
    LogicalKeyboardKey.shiftLeft,
    LogicalKeyboardKey.shiftRight,
    LogicalKeyboardKey.controlLeft,
    LogicalKeyboardKey.controlRight,
    LogicalKeyboardKey.altLeft,
    LogicalKeyboardKey.altRight,
    LogicalKeyboardKey.metaLeft,
    LogicalKeyboardKey.metaRight,
    LogicalKeyboardKey.capsLock,
    LogicalKeyboardKey.fn,
  }.contains(key);

  String get id =>
      '${key.keyId}:${shift ? 1 : 0}${ctrl ? 1 : 0}${alt ? 1 : 0}${meta ? 1 : 0}';

  String get label {
    final named = _names[key];
    final base = named ?? _letter(key.keyLabel);
    return [
      if (ctrl) 'Ctrl',
      if (alt) 'Alt',
      if (shift) 'Shift',
      if (meta) 'Meta',
      base,
    ].join(' + ');
  }

  static String _letter(String label) =>
      label.isEmpty ? '?' : label.toUpperCase();

  static final _names = {
    LogicalKeyboardKey.space: 'Space',
    LogicalKeyboardKey.enter: 'Enter',
    LogicalKeyboardKey.escape: 'Esc',
    LogicalKeyboardKey.backspace: 'Backspace',
    LogicalKeyboardKey.arrowLeft: '←',
    LogicalKeyboardKey.arrowRight: '→',
    LogicalKeyboardKey.arrowUp: '↑',
    LogicalKeyboardKey.arrowDown: '↓',
    LogicalKeyboardKey.pageUp: 'Page Up',
    LogicalKeyboardKey.pageDown: 'Page Down',
    LogicalKeyboardKey.home: 'Home',
    LogicalKeyboardKey.end: 'End',
    LogicalKeyboardKey.tab: 'Tab',
    LogicalKeyboardKey.delete: 'Delete',
    LogicalKeyboardKey.insert: 'Insert',
  };

  @override
  bool operator ==(Object other) => other is KeyChord && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

class BindingAction {
  final String id;
  final BindingGroup group;
  final String Function() _label;
  final List<KeyChord> defaults;
  final bool repeat;

  const BindingAction(
    this.id,
    this.group,
    this._label,
    this.defaults, {
    this.repeat = false,
  });

  String get label => _label();
}

class KeyBindings {
  KeyBindings._();

  static String? _parsedFrom;
  static Map<String, List<KeyChord>> _parsed = const {};

  static Map<String, List<KeyChord>> get _overrides {
    final raw = PrefName.keyBindings.rx.value;
    if (raw == _parsedFrom) return _parsed;
    _parsedFrom = raw;
    try {
      final decoded = jsonDecode(raw) as Map<String, dynamic>;
      _parsed = {
        for (final e in decoded.entries)
          e.key: [for (final c in (e.value as List)) ?KeyChord.parse('$c')],
      };
    } catch (_) {
      _parsed = const {};
    }
    return _parsed;
  }

  static void _save(Map<String, List<KeyChord>> next) {
    PrefName.keyBindings.rx.value = jsonEncode({
      for (final e in next.entries) e.key: [for (final c in e.value) c.id],
    });
  }

  static BindingAction? byId(String id) {
    for (final a in bindingActions) {
      if (a.id == id) return a;
    }
    return null;
  }

  static List<BindingAction> actions(BindingGroup group) => [
    for (final a in bindingActions)
      if (a.group == group) a,
  ];

  static List<KeyChord> of(BindingAction action) =>
      _overrides[action.id] ?? action.defaults;

  static bool isCustom(BindingAction action) =>
      _overrides.containsKey(action.id);

  static bool enabled(BindingGroup group) => switch (group) {
    BindingGroup.app => PrefName.shortcutsApp.rx.value,
    BindingGroup.player => PrefName.shortcutsPlayer.rx.value,
    BindingGroup.reader => PrefName.shortcutsReader.rx.value,
  };

  static void setEnabled(BindingGroup group, bool on) => switch (group) {
    BindingGroup.app => PrefName.shortcutsApp.rx.value = on,
    BindingGroup.player => PrefName.shortcutsPlayer.rx.value = on,
    BindingGroup.reader => PrefName.shortcutsReader.rx.value = on,
  };

  static bool _clash(BindingAction a, BindingAction b) =>
      a.group == b.group ||
      a.group == BindingGroup.app ||
      b.group == BindingGroup.app;

  static BindingAction? owner(KeyChord chord, BindingAction except) {
    for (final other in bindingActions) {
      if (other.id == except.id || !_clash(other, except)) continue;
      if (of(other).contains(chord)) return other;
    }
    return null;
  }

  static BindingAction? match(BindingGroup group, KeyEvent event) {
    if (!enabled(group)) return null;
    final chord = KeyChord.of(event);
    if (chord.isModifier) return null;
    for (final a in bindingActions) {
      if (a.group == group && of(a).contains(chord)) return a;
    }
    return null;
  }

  static BindingAction? bind(BindingAction action, KeyChord chord) {
    final next = {
      for (final a in bindingActions)
        if (_overrides.containsKey(a.id)) a.id: [..._overrides[a.id]!],
    };
    final taken = owner(chord, action);
    if (taken != null) {
      next[taken.id] = [
        for (final c in of(taken))
          if (c != chord) c,
      ];
    }
    final mine = [...of(action)];
    if (!mine.contains(chord)) mine.add(chord);
    next[action.id] = mine;
    _save(next);
    return taken;
  }

  static void unbind(BindingAction action, KeyChord chord) {
    final next = {..._overrides};
    next[action.id] = [
      for (final c in of(action))
        if (c != chord) c,
    ];
    _save(next);
  }

  static void clear(BindingAction action) {
    final next = {..._overrides};
    next[action.id] = const [];
    _save(next);
  }

  static void reset(BindingAction action) {
    final next = {..._overrides}..remove(action.id);
    for (final chord in action.defaults) {
      final taken = owner(chord, action);
      if (taken != null) {
        next[taken.id] = [
          for (final c in next[taken.id] ?? of(taken))
            if (c != chord) c,
        ];
      }
    }
    _save(next);
  }

  static void resetAll() => PrefName.keyBindings.rx.value = '{}';
}
