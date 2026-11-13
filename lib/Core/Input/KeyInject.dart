import 'dart:ui' as ui;

import 'package:flutter/services.dart';

class KeyInject {
  KeyInject._();

  static final _clock = Stopwatch()..start();
  static final _held = <LogicalKeyboardKey, int>{};

  static void press(LogicalKeyboardKey key) {
    final count = _held[key] ?? 0;
    _held[key] = count + 1;
    if (count == 0) _send(key, ui.KeyEventType.down);
  }

  static void repeat(LogicalKeyboardKey key) {
    if ((_held[key] ?? 0) > 0) _send(key, ui.KeyEventType.repeat);
  }

  static void release(LogicalKeyboardKey key) {
    final count = _held[key] ?? 0;
    if (count == 0) return;
    if (count == 1) {
      _held.remove(key);
      _send(key, ui.KeyEventType.up);
    } else {
      _held[key] = count - 1;
    }
  }

  static void tap(LogicalKeyboardKey key) {
    press(key);
    release(key);
  }

  static void releaseAll() {
    for (final key in _held.keys.toList()) {
      _held.remove(key);
      _send(key, ui.KeyEventType.up);
    }
  }

  static void _send(LogicalKeyboardKey key, ui.KeyEventType type) {
    final data = ui.KeyData(
      timeStamp: _clock.elapsed,
      type: type,
      physical: _physical(key),
      logical: key.keyId,
      character: null,
      synthesized: false,
    );
    ui.PlatformDispatcher.instance.onKeyData?.call(data);
  }

  static const _known = <int, PhysicalKeyboardKey>{
    0x100000301: PhysicalKeyboardKey.arrowDown,
    0x100000302: PhysicalKeyboardKey.arrowLeft,
    0x100000303: PhysicalKeyboardKey.arrowRight,
    0x100000304: PhysicalKeyboardKey.arrowUp,
    0x100000d: PhysicalKeyboardKey.enter,
    0x10000001b: PhysicalKeyboardKey.escape,
    0x20: PhysicalKeyboardKey.space,
  };

  static int _physical(LogicalKeyboardKey key) {
    final known = _known[key.keyId];
    if (known != null) return known.usbHidUsage;
    final id = key.keyId;
    if (id >= 0x61 && id <= 0x7a) return 0x00070004 + (id - 0x61);
    if (id >= 0x31 && id <= 0x39) return 0x0007001e + (id - 0x31);
    if (id == 0x30) return 0x00070027;
    return 0x00ff0000 | (id & 0xffff);
  }
}
