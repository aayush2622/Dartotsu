import 'dart:async';

import 'package:dart_discord_presence/dart_discord_presence.dart'
    as discord_rpc;

import '../BaseDiscordRPC.dart';
import '../DiscordPresence.dart';
import '../../../Core/State/State.dart';
import '../../../Logger.dart';

class DesktopRPC extends AppController implements BaseDiscordRPC {
  static const _appId = '1453704458012856401';
  static const _minRetry = Duration(seconds: 10);
  static const _maxRetry = Duration(minutes: 5);

  Duration _retryAfter = _minRetry;
  bool _failureLogged = false;

  discord_rpc.DiscordRPC? _rpc;
  StreamSubscription<discord_rpc.DiscordDisconnectedEvent>? _disconnectSub;
  bool _connected = false;
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
    if (!discord_rpc.DiscordRPC.isAvailable) return false;
    final rpc = discord_rpc.DiscordRPC();
    try {
      await rpc.initialize(_appId);
      _rpc = rpc;
      _connected = true;
      _failedAt = null;
      _retryAfter = _minRetry;
      _failureLogged = false;
      _disconnectSub = rpc.onDisconnected.listen((_) => _connected = false);
    } catch (e) {
      _failedAt = DateTime.now();
      _retryAfter = _retryAfter * 2 > _maxRetry ? _maxRetry : _retryAfter * 2;
      if (!_failureLogged) {
        _failureLogged = true;
        logger(
          'Discord RPC unavailable (retrying quietly): '
          '${e.toString().split('\n').first}',
        );
      }
    }
    return _connected;
  }

  discord_rpc.DiscordPresence _activity(
    DiscordPresence p,
  ) => discord_rpc.DiscordPresence(
    type: switch (p.type) {
      PresenceType.playing => discord_rpc.DiscordActivityType.playing,
      PresenceType.listening => discord_rpc.DiscordActivityType.listening,
      PresenceType.watching => discord_rpc.DiscordActivityType.watching,
      PresenceType.competing => discord_rpc.DiscordActivityType.competing,
    },
    details: p.details,
    state: p.state,
    statusDisplayType: switch (p.statusDisplay) {
      1 => discord_rpc.DiscordStatusDisplayType.state,
      2 => discord_rpc.DiscordStatusDisplayType.details,
      _ => null,
    },
    largeAsset: p.largeImage == null
        ? null
        : discord_rpc.DiscordAsset.fromUrl(p.largeImage!, text: p.largeText),
    smallAsset: p.smallImage == null
        ? null
        : discord_rpc.DiscordAsset.fromUrl(p.smallImage!, text: p.smallText),
    buttons: p.buttons.isEmpty
        ? null
        : [
            for (final b in p.buttons.take(2))
              discord_rpc.DiscordButton(label: b.label, url: b.url),
          ],
    timestamps: p.start == null && p.end == null
        ? null
        : discord_rpc.DiscordTimestamps(
            start: p.start == null ? null : p.start! ~/ 1000,
            end: p.end == null ? null : p.end! ~/ 1000,
          ),
  );

  @override
  Future<bool> show(DiscordPresence presence) async {
    if (_disposed || !await _ensureConnected()) return false;
    final rpc = _rpc;
    if (rpc == null) return false;
    try {
      await rpc.setPresence(_activity(presence));
      return true;
    } catch (e) {
      _connected = false;
      _failedAt = DateTime.now();
      logger('Discord RPC show failed: $e', logLevel: LogLevel.error);
      return false;
    }
  }

  @override
  Future<void> clear() async {
    if (_disposed || !_connected) return;
    try {
      await _rpc?.clearPresence();
    } catch (e) {
      logger('Discord RPC clear failed: $e', logLevel: LogLevel.error);
    }
  }

  @override
  void onClose() {
    _disposed = true;
    final rpc = _rpc;
    if (_connected && rpc != null) {
      unawaited(() async {
        try {
          await _disconnectSub?.cancel();
          await rpc.clearPresence();
          await rpc.dispose();
        } catch (e, st) {
          logError('DesktopRPC', e, st);
        }
      }());
    }
    super.onClose();
  }
}
