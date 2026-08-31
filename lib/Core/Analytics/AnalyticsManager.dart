import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../Logger.dart';
import 'FirebaseOptions.dart';

/// Firebase Crashlytics wrapper. [recordError] is safe to call before init
/// completes (it awaits) and silently no-ops if Firebase failed to start.
class AnalyticsManager extends GetxController {
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
      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(
        !kDebugMode,
      );
      logger('Firebase initialized');
    } catch (e, s) {
      _disabled = true;
      logger('Firebase disabled: $e\n$s');
    } finally {
      if (!_ready.isCompleted) _ready.complete();
    }
  }

  Future<void> recordError(
    Object error,
    StackTrace? stack, {
    bool fatal = false,
  }) async {
    await _ready.future;
    if (_disabled) return;
    try {
      await FirebaseCrashlytics.instance.recordError(
        error,
        stack,
        fatal: fatal,
      );
    } catch (_) {}
  }
}
