import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/painting.dart';
import 'package:screen_retriever/screen_retriever.dart';
import 'package:window_manager/window_manager.dart';

import '../../Core/Preferences/PrefManager.dart';
import '../../Logger.dart';

const _minSize = Size(480, 360);

class WindowMemory with WindowListener {
  WindowMemory._();

  static final instance = WindowMemory._();
  static bool get supported =>
      Platform.isWindows || Platform.isLinux || Platform.isMacOS;

  Timer? _timer;
  bool _ready = false;

  Future<void> restore() async {
    if (!supported) return;
    try {
      final saved = _read();
      if (saved != null) {
        final bounds = await _visible(saved.bounds);
        if (bounds != null) {
          await windowManager.setBounds(bounds);
        } else {
          await windowManager.setSize(saved.bounds.size);
          await windowManager.center();
        }
        if (saved.maximized) await windowManager.maximize();
      }
    } catch (e, st) {
      logError('WINDOW', e, st);
    }
    _ready = true;
    windowManager.addListener(this);
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

  Future<Rect?> _visible(Rect bounds) async {
    final displays = await screenRetriever.getAllDisplays();
    for (final d in displays) {
      final origin = d.visiblePosition ?? Offset.zero;
      final area = origin & (d.visibleSize ?? d.size);
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
    try {
      if (await windowManager.isFullScreen() ||
          await windowManager.isMinimized()) {
        return;
      }
      final maximized = await windowManager.isMaximized();
      final previous = _read();
      final bounds = maximized && previous != null
          ? previous.bounds
          : await windowManager.getBounds();
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

  @override
  void onWindowResized() => _schedule();

  @override
  void onWindowMoved() => _schedule();

  @override
  void onWindowMaximize() => _schedule();

  @override
  void onWindowUnmaximize() => _schedule();
}

class _Saved {
  final Rect bounds;
  final bool maximized;

  const _Saved(this.bounds, this.maximized);
}
