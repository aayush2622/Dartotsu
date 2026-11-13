import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

import 'package:crypto/crypto.dart';

import 'TogetherBackend.dart';

class SyncplayClient implements TogetherBackend {
  static const protocolVersion = '1.2.255';
  static const clientVersion = '1.7.3';

  final _events = StreamController<TogetherEvent>.broadcast();
  Socket? _socket;
  StreamSubscription<String>? _sub;
  bool _closed = false;

  String? _room;
  String _username = '';
  double _rtt = 0;
  double? _serverTimestamp;
  int _clientCounter = 0;
  int _serverCounter = 0;
  DateTime? _pendingSince;

  @override
  String get id => 'syncplay';
  @override
  String get label => 'Syncplay';
  @override
  String get defaultServer => 'syncplay.pl:8999';
  @override
  Stream<TogetherEvent> get events => _events.stream;
  bool get connected => _socket != null && !_closed;
  @override
  double get rtt => _rtt;
  @override
  String get username => _username;

  static double _now() => DateTime.now().millisecondsSinceEpoch / 1000;

  static String hashPassword(String password) =>
      password.isEmpty ? '' : md5.convert(utf8.encode(password)).toString();

  @override
  Future<void> connect({
    required String server,
    required String room,
    required String name,
    String password = '',
  }) async {
    final cut = server.lastIndexOf(':');
    final host = cut < 0 ? server : server.substring(0, cut);
    final port = cut < 0
        ? 8999
        : int.tryParse(server.substring(cut + 1)) ?? 8999;
    final username = name;
    await close();
    _closed = false;
    _username = username;
    _room = room;
    _clientCounter = 0;
    _serverCounter = 0;
    _pendingSince = null;
    final socket = await Socket.connect(
      host,
      port,
      timeout: const Duration(seconds: 8),
    );
    socket.setOption(SocketOption.tcpNoDelay, true);
    _socket = socket;
    _sub = socket
        .cast<List<int>>()
        .transform(utf8.decoder)
        .transform(const LineSplitter())
        .listen(
          _onLine,
          onError: (Object e) => _drop('$e'),
          onDone: () => _drop(null),
        );
    _send({
      'Hello': {
        'username': username,
        'room': {'name': room},
        if (password.isNotEmpty) 'password': hashPassword(password),
        'version': protocolVersion,
        'realversion': clientVersion,
        'features': {
          'sharedPlaylists': false,
          'chat': true,
          'featureList': true,
          'readiness': true,
          'managedRooms': false,
          'persistentRooms': false,
          'uiMode': 'GUI',
        },
      },
    });
  }

  void _drop(String? reason) {
    if (_closed) return;
    _closed = true;
    _socket?.destroy();
    _socket = null;
    _events.add(TogetherDisconnected(reason));
  }

  @override
  Future<void> close() async {
    final socket = _socket;
    _closed = true;
    _socket = null;
    await _sub?.cancel();
    _sub = null;
    try {
      await socket?.close();
    } catch (_) {}
    socket?.destroy();
  }

  void _send(Map<String, dynamic> message) {
    final socket = _socket;
    if (socket == null) return;
    try {
      socket.add(utf8.encode('${jsonEncode(message)}\r\n'));
    } catch (e) {
      _drop('$e');
    }
  }

  void requestList() => _send({'List': null});

  @override
  void sendState(
    double position,
    bool paused, {
    bool seek = false,
    bool local = false,
  }) {
    if (local) {
      _clientCounter++;
      _pendingSince = DateTime.now();
    }
    _send({
      'State': {
        'playstate': {
          'position': position,
          'paused': paused,
          if (seek) 'doSeek': true,
        },
        'ping': {
          if (_serverTimestamp != null) 'latencyCalculation': _serverTimestamp,
          'clientLatencyCalculation': _now(),
          'clientRtt': _rtt,
        },
        if (local || _serverCounter > 0)
          'ignoringOnTheFly': {
            if (local) 'client': _clientCounter,
            if (_serverCounter > 0) 'server': _serverCounter,
          },
      },
    });
  }

  @override
  void sendKeepAlive() => _send({
    'State': {
      'ping': {
        if (_serverTimestamp != null) 'latencyCalculation': _serverTimestamp,
        'clientLatencyCalculation': _now(),
        'clientRtt': _rtt,
      },
    },
  });

  @override
  void setFile(String name, double duration, {TogetherTag? tag}) {
    final suffix = tag?.text ?? '';
    final room = math.max(8, 250 - suffix.length);
    final shown = name.length > room ? name.substring(0, room) : name;
    _send({
      'Set': {
        'file': {'name': '$shown$suffix', 'duration': duration, 'size': 0},
      },
    });
  }

  static const _dataMark = '~dt1|';
  static const _chunk = 110;
  final _partial = <String, List<String?>>{};

  @override
  void sendData(String payload) {
    final id = math.Random().nextInt(0xffff).toRadixString(16);
    final count = (payload.length / _chunk).ceil();
    for (var i = 0; i < count; i++) {
      final part = payload.substring(
        i * _chunk,
        math.min(payload.length, (i + 1) * _chunk),
      );
      _send({'Chat': '$_dataMark$id|$i|$count|$part'});
    }
  }

  bool _takeData(String user, String message) {
    if (!message.startsWith(_dataMark)) return false;
    if (user == _username) return true;
    final fields = message.substring(_dataMark.length).split('|');
    if (fields.length < 4) return true;
    final index = int.tryParse(fields[1]);
    final count = int.tryParse(fields[2]);
    if (index == null || count == null || count < 1 || index >= count) {
      return true;
    }
    final key = '$user/${fields[0]}';
    final parts = _partial.putIfAbsent(key, () => List.filled(count, null));
    if (parts.length != count) return true;
    parts[index] = fields.sublist(3).join('|');
    if (parts.every((p) => p != null)) {
      _partial.remove(key);
      _events.add(TogetherData(user, parts.join()));
    }
    if (_partial.length > 16) _partial.remove(_partial.keys.first);
    return true;
  }

  @override
  void setReady(bool ready) => _send({
    'Set': {
      'ready': {'isReady': ready, 'manuallyInitiated': true},
    },
  });

  @override
  void chat(String message) => _send({'Chat': message});

  @override
  bool get awaitingEcho {
    final since = _pendingSince;
    if (since == null) return false;
    if (DateTime.now().difference(since) > const Duration(seconds: 2)) {
      _pendingSince = null;
      return false;
    }
    return true;
  }

  void _onLine(String line) {
    if (line.trim().isEmpty) return;
    final Object? decoded;
    try {
      decoded = jsonDecode(line);
    } catch (_) {
      return;
    }
    if (decoded is! Map) return;
    for (final entry in decoded.entries) {
      _handle('${entry.key}', entry.value);
    }
  }

  void _handle(String type, Object? body) {
    switch (type) {
      case 'Hello':
        final hello = body is Map ? body : const {};
        final name = hello['username'];
        if (name is String && name.isNotEmpty) _username = name;
        _events.add(TogetherConnected(hello['motd'] as String?));
        requestList();
      case 'State':
        _handleState(body);
      case 'List':
        _events.add(TogetherUsers(_parseList(body)));
      case 'Set':
        _handleSet(body);
      case 'Chat':
        if (body is Map) {
          final user = '${body['username'] ?? ''}';
          final message = '${body['message'] ?? ''}';
          if (!_takeData(user, message)) {
            _events.add(TogetherChat(user, message));
          }
        }
      case 'Error':
        final message = body is Map ? body['message'] : body;
        _events.add(TogetherError('$message'));
        _drop('$message');
      case 'TLS':
        break;
    }
  }

  void _handleState(Object? body) {
    if (body is! Map) return;
    final ping = body['ping'];
    if (ping is Map) {
      final stamp = (ping['latencyCalculation'] as num?)?.toDouble();
      if (stamp != null) _serverTimestamp = stamp;
      final echoed = (ping['clientLatencyCalculation'] as num?)?.toDouble();
      if (echoed != null && echoed > 0) {
        final sample = _now() - echoed;
        if (sample >= 0 && sample < 30) {
          _rtt = _rtt == 0 ? sample : _rtt * 0.7 + sample * 0.3;
        }
      }
    }
    final ignoring = body['ignoringOnTheFly'];
    if (ignoring is Map) {
      final server = (ignoring['server'] as num?)?.toInt();
      if (server != null && server > _serverCounter) _serverCounter = server;
      final client = (ignoring['client'] as num?)?.toInt();
      if (client != null && client >= _clientCounter) _pendingSince = null;
    }
    final play = body['playstate'];
    if (play is Map) {
      _events.add(
        TogetherPlaystate(
          (play['position'] as num?)?.toDouble() ?? 0,
          play['paused'] == true,
          play['doSeek'] == true,
          play['setBy'] as String?,
        ),
      );
    }
  }

  List<TogetherUser> _parseList(Object? body) {
    final out = <TogetherUser>[];
    if (body is! Map) return out;
    for (final room in body.entries) {
      if (room.key != _room || room.value is! Map) continue;
      for (final user in (room.value as Map).entries) {
        final info = user.value is Map ? user.value as Map : const {};
        out.add(
          TogetherUser(
            '${user.key}',
            file: TogetherFile.fromJson(info['file']),
            ready: info['isReady'] == true,
            controller: info['controller'] == true,
          ),
        );
      }
    }
    return out;
  }

  void _handleSet(Object? body) {
    if (body is! Map) return;
    final users = body['user'];
    if (users is Map) {
      for (final entry in users.entries) {
        final info = entry.value is Map ? entry.value as Map : const {};
        final event = info['event'];
        final room = info['room'];
        final inRoom = room is Map ? room['name'] == _room : true;
        if (!inRoom && event is! Map) continue;
        final left = event is Map && event['left'] == true;
        final joined = event is Map && event['joined'] == true;
        if ((joined || left) && !inRoom && !left) continue;
        _events.add(
          TogetherUserEvent(
            '${entry.key}',
            joined: joined,
            left: left,
            file: info['file'] == null
                ? null
                : TogetherFile.fromJson(info['file']),
          ),
        );
      }
      requestList();
    }
    final ready = body['ready'];
    if (ready is Map) {
      _events.add(
        TogetherReady('${ready['username'] ?? ''}', ready['isReady'] == true),
      );
    }
  }
}
