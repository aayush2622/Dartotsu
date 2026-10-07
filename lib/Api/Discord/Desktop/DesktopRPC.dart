import 'dart:async';

import 'package:flutter_discord_rpc_fork/flutter_discord_rpc.dart';
import 'package:get/get.dart';

import '../../../Logger.dart';
import '../BaseDiscordRPC.dart';
import '../DiscordPresence.dart';

class DesktopRPC extends GetxController implements BaseDiscordRPC {
  static const _appId = '1453704458012856401';
  static const _retryAfter = Duration(seconds: 10);

  bool _connected = false;
  bool _initialized = false;
  bool _disposed = false;
  Future<bool>? _connecting;
  DateTime? _failedAt;

  Future<bool> _ensureConnected() {
    if (_connected) return Future.value(true);
    final failed = _failedAt;
    if (failed != null && DateTime.now().difference(failed) < _retryAfter) {
      return Future.value(false);
    }
    return _connecting ??= _connect().whenComplete(() => _connecting = null);
  }

  Future<bool> _connect() async {
    try {
      if (!_initialized) {
        await FlutterDiscordRPC.initialize(_appId);
        _initialized = true;
      }
      await FlutterDiscordRPC.instance.connect();
      _connected = true;
      _failedAt = null;
    } catch (e) {
      _failedAt = DateTime.now();
      logger('Discord RPC connect failed: ${e.toString().split('\n').first}');
    }
    return _connected;
  }

  RPCActivity _activity(DiscordPresence p) => RPCActivity(
    activityType: switch (p.type) {
      PresenceType.playing => ActivityType.playing,
      PresenceType.listening => ActivityType.listening,
      PresenceType.watching => ActivityType.watching,
    },
    details: p.details,
    state: p.state,
    assets: RPCAssets(
      largeImage: p.largeImage,
      largeText: p.largeText,
      smallImage: p.smallImage,
      smallText: p.smallText,
    ),
    buttons: [for (final b in p.buttons) RPCButton(label: b.label, url: b.url)],
    timestamps: p.start == null
        ? null
        : RPCTimestamps(start: p.start, end: p.end),
  );

  @override
  Future<bool> show(DiscordPresence presence) async {
    if (_disposed || !await _ensureConnected()) return false;
    try {
      await FlutterDiscordRPC.instance.setActivity(
        activity: _activity(presence),
      );
      return true;
    } catch (e) {
      _connected = false;
      _failedAt = DateTime.now();
      logger('Discord RPC show failed: $e');
      return false;
    }
  }

  @override
  Future<void> clear() async {
    if (_disposed || !_connected) return;
    try {
      await FlutterDiscordRPC.instance.clearActivity();
    } catch (e) {
      logger('Discord RPC clear failed: $e');
    }
  }

  @override
  void onClose() {
    _disposed = true;
    if (_connected) {
      unawaited(() async {
        try {
          await FlutterDiscordRPC.instance.clearActivity();
          await FlutterDiscordRPC.instance.disconnect();
          await FlutterDiscordRPC.instance.dispose();
        } catch (_) {}
      }());
    }
    super.onClose();
  }
}
