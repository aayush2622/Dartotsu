import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import '../../../Core/State/State.dart';
import '../../../Logger.dart';

enum GatewayState { idle, connecting, ready, rejected, failed }

class DiscordGateway {
  static const _url = 'wss://gateway.discord.gg/?v=10&encoding=json';
  static const _rejectedCodes = {4004, 4010, 4011, 4012, 4013, 4014};

  final String Function() token;
  final void Function() onRejected;
  final state = GatewayState.idle.live;

  WebSocket? _socket;
  Timer? _beat;
  Timer? _retry;
  Completer<bool>? _ready;
  Duration _backoff = const Duration(seconds: 5);
  int? _sequence;
  bool _acked = true;
  bool _closing = false;

  String _status = 'online';
  List<Map<String, Object?>> _activities = const [];

  DiscordGateway({required this.token, required this.onRejected});

  bool get connected => state.value == GatewayState.ready;

  Future<bool> update({
    required String status,
    required List<Map<String, Object?>> activities,
  }) async {
    _status = status;
    _activities = activities;
    if (connected) {
      _send({'op': 3, 'd': _presence()});
      return true;
    }
    if (state.value == GatewayState.rejected) return true;
    return _connect();
  }

  Map<String, Object?> _presence() => {
    'since': null,
    'activities': _activities,
    'status': _status,
    'afk': false,
  };

  Future<bool> _connect() {
    final running = _ready;
    if (running != null) return running.future;
    final ready = _ready = Completer<bool>();
    _closing = false;
    state.value = GatewayState.connecting;
    unawaited(_open(ready));
    return ready.future.whenComplete(() => _ready = null);
  }

  Future<void> _open(Completer<bool> ready) async {
    try {
      final socket = await WebSocket.connect(_url)
          .timeout(const Duration(seconds: 15));
      _socket = socket;
      _sequence = null;
      _acked = true;
      socket.listen(
        (data) => _onMessage(data, ready),
        onDone: () => _onClosed(ready),
        onError: (_) => _onClosed(ready),
        cancelOnError: true,
      );
    } catch (e) {
      logger('Discord gateway connect failed: $e', tag: 'DISCORD');
      _fail(ready);
    }
  }

  void _onMessage(dynamic data, Completer<bool> ready) {
    if (data is! String) return;
    final Map<String, dynamic> msg;
    try {
      msg = jsonDecode(data) as Map<String, dynamic>;
    } catch (_) {
      return;
    }
    final op = msg['op'];
    final seq = msg['s'];
    if (seq is int) _sequence = seq;
    switch (op) {
      case 10:
        final interval = (msg['d']['heartbeat_interval'] as num).toInt();
        _startBeat(interval);
        _send({
          'op': 2,
          'd': {
            'token': token(),
            'properties': {
              'os': Platform.operatingSystem,
              'browser': 'Discord Client',
              'device': '',
            },
            'presence': _presence(),
            'compress': false,
          },
        });
      case 11:
        _acked = true;
      case 1:
        _heartbeat();
      case 7:
        _reconnect();
      case 9:
        _reconnect(delay: const Duration(seconds: 3));
      case 0:
        if (msg['t'] == 'READY') {
          state.value = GatewayState.ready;
          _backoff = const Duration(seconds: 5);
          if (!ready.isCompleted) ready.complete(true);
          logger('Discord gateway ready', tag: 'DISCORD');
        }
    }
  }

  void _startBeat(int interval) {
    _beat?.cancel();
    Timer(
      Duration(milliseconds: (interval * Random().nextDouble()).round()),
      () {
        if (_socket == null) return;
        _heartbeat();
        _beat = Timer.periodic(Duration(milliseconds: interval), (_) {
          if (!_acked) {
            _reconnect();
            return;
          }
          _heartbeat();
        });
      },
    );
  }

  void _heartbeat() {
    _acked = false;
    _send({'op': 1, 'd': _sequence});
  }

  void _send(Map<String, Object?> payload) {
    try {
      _socket?.add(jsonEncode(payload));
    } catch (_) {}
  }

  void _onClosed(Completer<bool> ready) {
    final code = _socket?.closeCode;
    _beat?.cancel();
    _socket = null;
    if (_closing) {
      state.value = GatewayState.idle;
      if (!ready.isCompleted) ready.complete(false);
      return;
    }
    if (_rejectedCodes.contains(code)) {
      state.value = GatewayState.rejected;
      if (!ready.isCompleted) ready.complete(false);
      logger('Discord gateway rejected the token ($code)', tag: 'DISCORD');
      onRejected();
      return;
    }
    _fail(ready);
  }

  void _fail(Completer<bool> ready) {
    state.value = GatewayState.failed;
    if (!ready.isCompleted) ready.complete(false);
    _retry?.cancel();
    final wait = _backoff;
    _backoff = Duration(seconds: min(_backoff.inSeconds * 2, 300));
    _retry = Timer(wait, () {
      if (!_closing && _activities.isNotEmpty || _status != 'online') {
        unawaited(_connect());
      }
    });
  }

  void _reconnect({Duration delay = Duration.zero}) {
    _beat?.cancel();
    final socket = _socket;
    _socket = null;
    state.value = GatewayState.connecting;
    unawaited(socket?.close(4000).catchError((_) => null));
    _retry?.cancel();
    _retry = Timer(delay, () => unawaited(_connect()));
  }

  Future<void> close() async {
    _closing = true;
    _retry?.cancel();
    _beat?.cancel();
    final socket = _socket;
    _socket = null;
    state.value = GatewayState.idle;
    try {
      await socket?.close(1000);
    } catch (_) {}
  }
}
