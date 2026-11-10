import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/painting.dart';
import 'package:screen_retriever/screen_retriever.dart';
import 'package:window_manager/window_manager.dart';

import '../../Core/Preferences/PrefManager.dart';
import '../../Logger.dart';
import 'AppWindow.dart';

const _minSize = Size(480, 360);

class WindowMemory {
  WindowMemory._();

  static final instance = WindowMemory._();
  static bool get supported =>
      Platform.isWindows || Platform.isLinux || Platform.isMacOS;

  Timer? _timer;
  bool _ready = false;

  Future<void> restore() async {
    if (!supported) return;
    final window = appWindow;
    if (window == null) return;
    if (tilingCompositor) {
      _ready = true;
      return;
    }
    try {
      final saved = _read();
      if (saved != null) {
        final bounds = _visible(saved.bounds);
        if (bounds != null) {
          window.bounds = bounds.toNative();
        } else {
          window.setSize(saved.bounds.size.toNative(), false);
          window.center();
        }
        if (saved.maximized) window.maximize();
      }
    } catch (e, st) {
      logError('WINDOW', e, st);
    }
    _ready = true;
    window.addListener(_onEvent);
  }

  void _onEvent(WindowEvent event) {
    if (event is WindowResizedEvent ||
        event is WindowMovedEvent ||
        event is WindowMaximizedEvent ||
        event is WindowRestoredEvent) {
      _schedule();
    }
  }

  _Saved? _read() {
    final raw = PrefName.windowState.value;
    if (raw.isEmpty) return null;
    try {
      final m = jsonDecode(raw) as Map<String, dynamic>;
      final w = (m['w'] as num).toDouble();
      final h = (m['h'] as num).toDouble();
      if (w < _minSize.width || h < _minSize.height) return null;
      return _Saved(
        Rect.fromLTWH(
          (m['x'] as num).toDouble(),
          (m['y'] as num).toDouble(),
          w,
          h,
        ),
        m['max'] == true,
      );
    } catch (_) {
      return null;
    }
  }

  Rect? _visible(Rect bounds) {
    for (final d in DisplayManager.instance.getAll()) {
      final area = d.workArea.toRect();
      if (area.contains(bounds.center) && area.contains(bounds.topLeft)) {
        return bounds;
      }
    }
    return null;
  }

  void _schedule() {
    if (!_ready) return;
    _timer?.cancel();
    _timer = Timer(const Duration(milliseconds: 400), _save);
  }

  Future<void> _save() async {
    final window = appWindow;
    if (window == null) return;
    try {
      if (window.isFullScreen || window.isMinimized) return;
      final maximized = window.isMaximized;
      final previous = _read();
      final bounds = maximized && previous != null
          ? previous.bounds
          : window.bounds.toRect();
      PrefName.windowState.value = jsonEncode({
        'x': bounds.left,
        'y': bounds.top,
        'w': bounds.width,
        'h': bounds.height,
        'max': maximized,
      });
    } catch (e, st) {
      logError('WINDOW', e, st);
    }
  }
}

class _Saved {
  final Rect bounds;
  final bool maximized;

  const _Saved(this.bounds, this.maximized);
}
