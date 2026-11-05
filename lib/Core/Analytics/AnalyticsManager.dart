import 'dart:async';
import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

import 'DesktopAnalytics.dart';
import 'FirebaseOptions.dart';
import '../Preferences/PrefManager.dart';
import '../State/State.dart';
import '../../Logger.dart';

/// Anonymous usage counts (Analytics, no user id) and hard-crash reports
/// (Crashlytics). Both follow the `shareAnalytics` pref and are off in debug.
/// Every call awaits init and silently no-ops if Firebase failed to start.
class AnalyticsManager extends AppController {
  final Completer<void> _ready = Completer<void>();
  bool _disabled = false;

  @override
  void onInit() {
    super.onInit();
    unawaited(_initFirebase());
  }

  Future<void> _initFirebase() async {
    if (Platform.isLinux) {
      _disabled = true;
      _startDesktop();
      _ready.complete();
      return;
    }
    if (Platform.isWindows) _startDesktop();
    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      await _apply();
      onChange(PrefName.shareAnalytics.rx, (_) => unawaited(_apply()));
      await _analytics((a) => a.logAppOpen());
      logger('Firebase initialized');
    } catch (e, s) {
      _disabled = true;
      logger('Firebase disabled: $e\n$s', logLevel: LogLevel.error);
    } finally {
      if (!_ready.isCompleted) _ready.complete();
    }
  }

  final _desktop = DesktopAnalytics();

  void _startDesktop() {
    void sync() {
      if (_enabled) {
        unawaited(_desktop.start());
      } else {
        _desktop.stop();
      }
    }

    sync();
    onChange(PrefName.shareAnalytics.rx, (_) => sync());
  }

  bool get _crashlytics => !Platform.isWindows;

  bool get _enabled => !kDebugMode && PrefName.shareAnalytics.value;

  Future<void> _apply() async {
    final on = _enabled;
    if (_crashlytics) {
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(on);
    }
    await _analytics((a) async {
      await a.setAnalyticsCollectionEnabled(on);
      if (!on) await a.resetAnalyticsData();
    });
  }

  Future<void> _analytics(
    Future<void> Function(FirebaseAnalytics a) run,
  ) async {
    if (Platform.isWindows) return;
    try {
      await run(FirebaseAnalytics.instance);
    } catch (e, st) {
      logError('AnalyticsManager', e, st);
    }
  }

  Future<void> recordError(
    Object error,
    StackTrace? stack, {
    bool fatal = false,
  }) async {
    await _ready.future;
    if (_disabled || !_enabled || !_crashlytics) return;
    try {
      await FirebaseCrashlytics.instance.recordError(
        error,
        stack,
        fatal: fatal,
      );
    } catch (e, st) {
      logError('AnalyticsManager', e, st);
    }
  }
}
