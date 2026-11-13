import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:flutter/widgets.dart';

import '../Preferences/PrefManager.dart';
import '../State/State.dart';
import 'Biometric.dart';

class AppLock extends AppController {
  static const minLength = 4;
  static const maxLength = 8;
  static const never = -1;

  final locked = false.live;
  final _queue = <VoidCallback>[];
  AppLifecycleListener? _lifecycle;
  DateTime? _leftAt;
  int _failures = 0;
  DateTime _blockedUntil = DateTime.fromMillisecondsSinceEpoch(0);

  bool get enabled => PrefName.appLockHash.value.isNotEmpty;

  Duration get blocked {
    final left = _blockedUntil.difference(DateTime.now());
    return left.isNegative ? Duration.zero : left;
  }

  @override
  void onInit() {
    locked.value = enabled;
    unawaited(Biometric.probe());
    _lifecycle = AppLifecycleListener(
      onHide: () => _leftAt ??= DateTime.now(),
      onShow: _returned,
    );
  }

  @override
  void onClose() => _lifecycle?.dispose();

  void _returned() {
    final left = _leftAt;
    _leftAt = null;
    if (left == null || !enabled) return;
    final minutes = PrefName.appLockDelay.value;
    if (minutes == never) return;
    if (DateTime.now().difference(left) >= Duration(minutes: minutes)) {
      locked.value = true;
    }
  }

  void run(VoidCallback action) {
    if (locked.value) {
      _queue.add(action);
    } else {
      action();
    }
  }

  String _hash(String salt, String pin) =>
      sha256.convert(utf8.encode('$salt:$pin')).toString();

  List<String> get _stored => PrefName.appLockHash.value.split(':');

  bool verify(String pin) {
    final parts = _stored;
    if (parts.length < 2) return false;
    return _hash(parts[0], pin) == parts[1];
  }

  bool shouldSubmit(String pin) {
    final parts = _stored;
    final length = parts.length > 2 ? int.tryParse(parts[2]) : null;
    return length == null ? verify(pin) : pin.length == length;
  }

  void set(String pin) {
    final salt = base64Url.encode(
      List<int>.generate(12, (_) => Random.secure().nextInt(256)),
    );
    PrefName.appLockHash.value = '$salt:${_hash(salt, pin)}:${pin.length}';
  }

  void clear() {
    PrefName.appLockHash.value = '';
    PrefName.appLockBiometric.value = false;
    locked.value = false;
  }

  bool unlock(String pin) {
    if (blocked > Duration.zero) return false;
    if (!verify(pin)) {
      _failures++;
      if (_failures >= 3) {
        _blockedUntil = DateTime.now().add(
          Duration(seconds: min(300, 5 * (1 << (_failures - 3)))),
        );
      }
      return false;
    }
    _open();
    return true;
  }

  bool get biometricReady =>
      enabled && PrefName.appLockBiometric.value && Biometric.available.value;

  void unlockWithBiometric() {
    if (!biometricReady) return;
    _open();
  }

  void _open() {
    _failures = 0;
    locked.value = false;
    final pending = List<VoidCallback>.of(_queue);
    _queue.clear();
    for (final action in pending) {
      action();
    }
  }
}
