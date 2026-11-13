import 'dart:async';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:window_manager/window_manager.dart';

import '../../Core/Preferences/Incognito.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Utils/Functions/AppWindow.dart';
import '../../Core/Desktop/TrayController.dart';
import 'BaseDiscordRPC.dart';
import 'DiscordPresence.dart';
import 'DiscordRpcRouter.dart';
import '../../Core/State/State.dart';
import '../../Logger.dart';

class _Entry {
  DiscordPresence presence;
  Duration shift = Duration.zero;

  _Entry(this.presence);
}

class DiscordPresenceController extends AppController
    with WidgetsBindingObserver {
  final _stack = <Object, _Entry>{};
  Timer? _debounce;
  DiscordPresence? _shown;
  bool _appHidden = false;
  bool _held = false;
  DateTime? _pausedAt;
  bool _started = false;
  bool _exiting = false;
  ListenerId? _windowListener;

  BaseDiscordRPC get _rpc => find<BaseDiscordRPC>();

  void start() {
    if (_started) return;
    _started = true;
    WidgetsBinding.instance.addObserver(this);
    if (Platform.isLinux || Platform.isWindows || Platform.isMacOS) {
      _windowListener = appWindow?.addListener(_onWindow);
    }
    unawaited(find<DiscordRpcRouter>().sweep());
    for (final pref in <Live>[
      PrefName.discordRpc.rx,
      PrefName.discordBrowsing.rx,
      PrefName.incognito.rx,
      PrefName.discordImages.rx,
      PrefName.discordButtons.rx,
      PrefName.discordTimer.rx,
      PrefName.discordHideTitles.rx,
      PrefName.discordActivity.rx,
      PrefName.discordLive.rx,
      PrefName.discordNameMode.rx,
      PrefName.discordCustomName.rx,
      PrefName.discordStatusDisplay.rx,
      PrefName.discordDetailsTemplate.rx,
      PrefName.discordStateTemplate.rx,
      PrefName.discordLargeImage.rx,
      PrefName.discordSmallImage.rx,
      PrefName.discordTimerStyle.rx,
      PrefName.discordMediaButton.rx,
      PrefName.discordAppButton.rx,
      PrefName.discordButtonLabel.rx,
      PrefName.discordButtonUrl.rx,
      PrefName.discordPrivateText.rx,
      PrefName.discordShowWatching.rx,
      PrefName.discordShowReading.rx,
    ]) {
      onChange(pref, (_) => _schedule());
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

  Future<void> _onWindow(WindowEvent event) async {
    if (event is! WindowCloseRequestedEvent || _exiting) return;
    if (findBuilt<TrayController>()?.willHide ?? false) return;
    _exiting = true;
    _debounce?.cancel();
    final request = event.request;
    final held = request.isCancelable && request.cancel();
    try {
      await find<DiscordRpcRouter>().shutdown().timeout(
        const Duration(seconds: 3),
      );
    } catch (e, st) {
      logError('DISCORD', e, st);
    } finally {
      if (held) appWindow?.close();
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.detached) {
      _debounce?.cancel();
      unawaited(find<DiscordRpcRouter>().shutdown());
    }
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

  DiscordPresence? get current {
    if (_stack.isEmpty) return null;
    final entry = _stack.values.last;
    return entry.presence.shifted(entry.shift);
  }

  DiscordPresence? _desired() {
    if (!PrefName.discordRpc.value || isIncognito) return null;
    if (_appHidden || _held || _stack.isEmpty) return null;
    final style = PresenceStyle.fromPrefs();
    final shown = current;
    if (shown == null || !style.shows(shown.kind)) return null;
    return shown.styled(style);
  }

  void resync() {
    _shown = null;
    _schedule();
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
        logger(
          'sync: nothing to show (enabled=${PrefName.discordRpc.value} '
          'incognito=$isIncognito hidden=$_appHidden held=$_held '
          'entries=${_stack.length}) shown=${_shown != null}',
          tag: 'DISCORD',
        );
        if (_shown == null) return;
        _shown = null;
        await _rpc.clear();
        return;
      }
      if (want == _shown) {
        logger('sync: presence unchanged, skipping', tag: 'DISCORD');
        return;
      }
      logger(
        'sync: showing ${want.name} | ${want.details} | ${want.state}',
        tag: 'DISCORD',
      );
      _shown = want;
      if (!await _rpc.show(want)) {
        logger('sync: show failed, retrying in 30s', tag: 'DISCORD');
        _shown = null;
        _retry();
      }
    } catch (e) {
      logger('Discord presence sync failed: $e', logLevel: LogLevel.error);
    }
  }

  @override
  void onClose() {
    _debounce?.cancel();
    if (_started) {
      WidgetsBinding.instance.removeObserver(this);
      final listener = _windowListener;
      if (listener != null) appWindow?.removeListener(listener);
    }
    super.onClose();
  }
}
