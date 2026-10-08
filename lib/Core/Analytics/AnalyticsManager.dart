import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

import 'FirebaseOptions.dart';
import '../Preferences/PrefManager.dart';
import '../State/State.dart';

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
    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      await _apply();
      onChange(PrefName.shareAnalytics.rx, (_) => unawaited(_apply()));
      await _analytics((a) => a.logAppOpen());
      debugPrint('Firebase initialized');
    } catch (e, s) {
      _disabled = true;
      debugPrint('Firebase disabled: $e\n$s');
    } finally {
      if (!_ready.isCompleted) _ready.complete();
    }
  }

  bool get _enabled => !kDebugMode && PrefName.shareAnalytics.value;

  Future<void> _apply() async {
    final on = _enabled;
    await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(on);
    await _analytics((a) async {
      await a.setAnalyticsCollectionEnabled(on);
      if (!on) await a.resetAnalyticsData();
    });
  }

  Future<void> _analytics(
    Future<void> Function(FirebaseAnalytics a) run,
  ) async {
    try {
      await run(FirebaseAnalytics.instance);
    } catch (_) {}
  }

  Future<void> recordError(
    Object error,
    StackTrace? stack, {
    bool fatal = false,
  }) async {
    await _ready.future;
    if (_disabled || !_enabled) return;
    try {
      await FirebaseCrashlytics.instance.recordError(
        error,
        stack,
        fatal: fatal,
      );
    } catch (_) {}
  }
}
