import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../Logger.dart';
import 'FirebaseOptions.dart';

class AnalyticsManager extends GetxController {
  Completer<void>? _initCompleter;
  bool _disabled = false;

  @override
  void onInit() {
    super.onInit();
    unawaited(_initFirebase());
  }

  Future<void> _initFirebase() async {
    _initCompleter ??= Completer<void>();
    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      await FirebaseCrashlytics.instance
          .setCrashlyticsCollectionEnabled(!kDebugMode);

      logger("Firebase initialized");
    } catch (e, s) {
      _disabled = true;
      debugPrint("Firebase disabled: $e: \n$s");
    } finally {
      _initCompleter?.complete();
    }
  }

  Future<void> recordError(
    Object error,
    StackTrace? stack, {
    bool fatal = false,
  }) async {
    await _initCompleter?.future;

    if (_disabled) return;

    try {
      await FirebaseCrashlytics.instance
          .recordError(error, stack, fatal: fatal);
    } catch (_) {}
  }
}
