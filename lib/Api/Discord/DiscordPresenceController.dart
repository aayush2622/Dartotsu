import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../Core/Preferences/Incognito.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Logger.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import 'BaseDiscordRPC.dart';
import 'DiscordPresence.dart';

class _Entry {
  DiscordPresence presence;
  Duration shift = Duration.zero;

  _Entry(this.presence);
}

class DiscordPresenceController extends GetxController
    with WidgetsBindingObserver {
  final _stack = <Object, _Entry>{};
  Timer? _debounce;
  DiscordPresence? _shown;
  bool _appHidden = false;
  bool _held = false;
  DateTime? _pausedAt;
  bool _started = false;

  BaseDiscordRPC get _rpc => find<BaseDiscordRPC>();

  void start() {
    if (_started) return;
    _started = true;
    WidgetsBinding.instance.addObserver(this);
    for (final pref in [
      PrefName.discordRpc.rx,
      PrefName.discordBrowsing.rx,
      PrefName.incognito.rx,
      PrefName.discordImages.rx,
      PrefName.discordButtons.rx,
      PrefName.discordTimer.rx,
      PrefName.discordHideTitles.rx,
      PrefName.discordActivity.rx,
    ]) {
      ever(pref, (_) => _schedule());
    }
    _schedule();
  }

  Object push(DiscordPresence presence) {
    final token = Object();
    _stack[token] = _Entry(presence);
    _schedule();
    return token;
  }

  void replace(Object token, DiscordPresence presence) {
    final entry = _stack[token];
    if (entry == null) return;
    entry.presence = presence;
    entry.shift = Duration.zero;
    _schedule();
  }

  void pop(Object token) {
    if (_stack.remove(token) != null) _schedule();
  }

  void hold() {
    if (_held) return;
    _held = true;
    _pausedAt ??= DateTime.now();
    _schedule();
  }

  void release() {
    if (!_held) return;
    _held = false;
    _settlePause();
    _schedule();
  }

  void _settlePause() {
    if (_held || _appHidden) return;
    final since = _pausedAt;
    _pausedAt = null;
    if (since == null) return;
    final gap = DateTime.now().difference(since);
    for (final entry in _stack.values) {
      entry.shift += gap;
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final hidden =
        state == AppLifecycleState.paused ||
        state == AppLifecycleState.hidden ||
        state == AppLifecycleState.detached;
    if (hidden == _appHidden) return;
    _appHidden = hidden;
    if (hidden) {
      _pausedAt ??= DateTime.now();
    } else {
      _settlePause();
    }
    _schedule();
  }

  DiscordPresence? _desired() {
    if (!PrefName.discordRpc.value || isIncognito) return null;
    if (_appHidden || _held || _stack.isEmpty) return null;
    final entry = _stack.values.last;
    if (entry.presence.isBrowsing && !PrefName.discordBrowsing.value) {
      return null;
    }
    return entry.presence
        .shifted(entry.shift)
        .styled(
          PresenceStyle(
            images: PrefName.discordImages.value,
            buttons: PrefName.discordButtons.value,
            timer: PrefName.discordTimer.value,
            hideTitles: PrefName.discordHideTitles.value,
            activity: PrefName.discordActivity.value,
          ),
        );
  }

  void _schedule() {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 600), () {
      unawaited(_sync());
    });
  }

  void _retry() {
    _debounce?.cancel();
    _debounce = Timer(const Duration(seconds: 30), () {
      unawaited(_sync());
    });
  }

  Future<void> _sync() async {
    final want = _desired();
    try {
      if (want == null) {
        if (_shown == null) return;
        _shown = null;
        await _rpc.clear();
        return;
      }
      if (want == _shown) return;
      _shown = want;
      if (!await _rpc.show(want)) {
        _shown = null;
        _retry();
      }
    } catch (e) {
      logger('Discord presence sync failed: $e');
    }
  }

  @override
  void onClose() {
    _debounce?.cancel();
    if (_started) WidgetsBinding.instance.removeObserver(this);
    super.onClose();
  }
}
