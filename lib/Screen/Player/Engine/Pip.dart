import 'dart:io';

import 'package:flutter/services.dart';

import '../../../Logger.dart';
import 'PipWindow.dart';
import '../PlayerState.dart';
import 'PipConfig.dart';

class PlayerPip {
  PlayerPip._();

  static const _channel = MethodChannel('dartotsu/pip');

  static void Function(bool active)? _onChanged;
  static void Function(String id)? _onAction;
  static void Function()? _onDismissed;
  static Object? _owner;
  static bool _available = false;
  static PipConfig? _sent;

  static bool get supported =>
      Platform.isAndroid ? _available : PipWindow.supported;

  static Future<void> init({
    required Object owner,
    required void Function(bool active) onChanged,
    required void Function(String id) onAction,
    required void Function() onDismissed,
  }) async {
    _owner = owner;
    if (!Platform.isAndroid) PipWindow.onClosed = () => _onChanged?.call(false);
    _onChanged = onChanged;
    _onAction = onAction;
    _onDismissed = onDismissed;
    if (!Platform.isAndroid) return;
    _channel.setMethodCallHandler(_handle);
    try {
      _available = await _channel.invokeMethod<bool>('available') ?? false;
    } on Object catch (e, st) {
      logError('PlayerPip', e, st, 'availability check failed');
    }
  }

  static Future<void> _handle(MethodCall call) async {
    switch (call.method) {
      case 'state':
        _onChanged?.call(call.arguments == true);
      case 'action':
        final id = call.arguments;
        if (id is String) _onAction?.call(id);
      case 'dismissed':
        _onDismissed?.call();
    }
  }

  static void detach(Object owner) {
    if (!identical(_owner, owner)) return;
    _owner = null;
    _onChanged = null;
    _onAction = null;
    _onDismissed = null;
    _sent = null;
    if (Platform.isAndroid) {
      _channel.setMethodCallHandler(null);
    } else {
      PipWindow.onClosed = null;
    }
  }

  static Future<void> configure(PipConfig config) async {
    if (!Platform.isAndroid || !supported || config == _sent) return;
    _sent = config;
    try {
      await _channel.invokeMethod<void>('configure', config.toMap());
    } on Object catch (e, st) {
      _sent = null;
      logError('PlayerPip', e, st, 'configure failed');
    }
  }

  static Future<void> disarm(Object owner) async {
    if (!identical(_owner, owner)) return;
    if (!Platform.isAndroid) {
      PipWindow.close();
      return;
    }
    if (!supported) return;
    _sent = PipConfig.idle;
    try {
      await _channel.invokeMethod<void>('configure', PipConfig.idle.toMap());
    } on Object catch (e, st) {
      logError('PlayerPip', e, st, 'disarm failed');
    }
  }

  static Future<bool> enter(PipConfig config, {Object? owner}) async {
    if (!supported) return false;
    if (!Platform.isAndroid) {
      final state = owner ?? _owner;
      if (state is! PlayerState) return false;
      final entered = await PipWindow.open(state, config.width / config.height);
      if (entered) _onChanged?.call(true);
      return entered;
    }
    _sent = config;
    try {
      return await _channel.invokeMethod<bool>('enter', config.toMap()) ??
          false;
    } on Object catch (e, st) {
      logError('PlayerPip', e, st, 'enter failed');
      return false;
    }
  }

  static Future<void> exit() async {
    if (!supported) return;
    if (!Platform.isAndroid) {
      PipWindow.close();
      return;
    }
    try {
      await _channel.invokeMethod<void>('exit');
    } on Object catch (e, st) {
      logError('PlayerPip', e, st, 'exit failed');
    }
  }
}
