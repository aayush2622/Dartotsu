import 'dart:async';
import 'dart:convert';

import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:get/get.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'Discord.dart';

var DiscordService = Get.put(_DiscordService());

class _DiscordService extends GetxController {
  // NO DON'T LOOK AT THIS FILE
  late WebSocketChannel _webSocket;
  Timer? _heartbeatTimer;
  int? _sequence;
  String _sessionId = '';
  bool _resume = false;
  String _presenceStore = '';
  final int _maxRetryAttempts = 10;
  int _retryAttempts = 0;
  bool isInitialized = false;
  bool isTemp = false;

  Future<void> _initializeService() async {
    _connectWebSocket();
  }

  void _connectWebSocket() {
    const url = 'wss://gateway.discord.gg/?v=10&encoding=json';
    _webSocket = IOWebSocketChannel.connect(url);

    _webSocket.stream.listen(
      (message) => _handleMessage(message),
      onDone: _onWebSocketDone,
      onError: _onWebSocketError,
    );
  }

  void _handleMessage(String message) {
    final jsonMessage = jsonDecode(message);

    switch (jsonMessage['op']) {
      case 0:
        _sequence = jsonMessage['s'];
        if (jsonMessage['t'] == 'READY') {
          _handleReady(jsonMessage['d']);
        }
        break;
      case 1:
        _sendHeartbeat();
        break;
      case 7:
        _resume = true;
        _reconnectWebSocket();
        break;
      case 9:
        _reconnectWebSocket();
        break;
      case 10:
        _handleHello(jsonMessage['d']);
        break;
      case 11:
        _startHeartbeat();
        break;
      default:
        break;
    }
  }

  void _handleReady(Map<String, dynamic> data) {
    _sessionId = data['session_id'];
    _saveProfile(data['user']);
    isInitialized = true;
    if (_presenceStore.isNotEmpty) {
      _setPresence(_presenceStore);
    }
  }

  void _handleHello(Map<String, dynamic> data) {
    final heartbeatInterval = data['heartbeat_interval'];
    _startHeartbeat(heartbeatInterval);
    if (_resume) {
      _sendResume();
      _resume = false;
    } else {
      _sendIdentify();
    }
  }

  void _startHeartbeat([int interval = 45000]) {
    _heartbeatTimer?.cancel();
    _heartbeatTimer = Timer.periodic(Duration(milliseconds: interval), (timer) {
      _sendHeartbeat();
    });
  }

  void _sendHeartbeat() {
    final payload = jsonEncode({'op': 1, 'd': _sequence});
    _webSocket.sink.add(payload);
  }

  void _sendIdentify() async {
    final token = loadData(PrefName.discordToken);

    final properties = {
      'os': 'linux',
      'browser': 'unknown',
      'device': 'unknown',
    };

    final payload = jsonEncode({
      'op': 2,
      'd': {
        'token': token,
        'intents': 0,
        'properties': properties,
      },
    });

    _webSocket.sink.add(payload);
  }

  void _sendResume() async {
    final token = loadData(PrefName.discordToken);

    final payload = jsonEncode({
      'op': 6,
      'd': {
        'token': token,
        'session_id': _sessionId,
        'seq': _sequence,
      },
    });

    _webSocket.sink.add(payload);
  }

  void _setPresence(String presence) {
    _webSocket.sink.add(presence);
  }

  void setPresence(String presence) {
    if (isInitialized) {
      _setPresence(presence);
      _presenceStore = presence;
    } else {
      _initializeService();
      _presenceStore = presence;
    }
  }

  void pauseRPC() {
    final clearPresence = jsonEncode({
      'op': 3,
      'd': {
        'activities': [],
        'afk': false,
        'since': null,
        'status': 'offline',
      },
    });
    isInitialized = false;
    _webSocket.sink.add(clearPresence);
    _webSocket.sink.close();
    _heartbeatTimer?.cancel();
  }

  void resumeRPC() {
    _initializeService();
  }

  void testRpc() {
    if (!isTemp) {
      isTemp = true;
      final testRpc = jsonEncode({
        'op': 3,
        'd': {
          'activities': [
            {
              'name': 'dartotsu',
              'type': 0,
            }
          ],
          'afk': false,
          'since': null,
          'status': 'online',
        },
      });
      _initializeService();
      _presenceStore = testRpc;
    }
  }

  void stopRPC() {
    final clearPresence = jsonEncode({
      'op': 3,
      'd': {
        'activities': [],
        'afk': false,
        'since': null,
        'status': 'offline',
      },
    });
    isInitialized = false;
    isTemp = false;
    _webSocket.sink.add(clearPresence);
    _presenceStore = '';
    _webSocket.sink.close();
    _heartbeatTimer?.cancel();
  }

  void _saveProfile(Map<String, dynamic> user) async {
    Discord.userName.value = user['username'];
    saveData(PrefName.discordUserName, user['username']);
    var avatar =
        'https://cdn.discordapp.com/avatars/${user['id']}/${user['avatar']}.png';
    Discord.avatar.value = avatar;
    saveData(PrefName.discordAvatar, avatar);
    if (isTemp) {
      stopRPC();
    }
  }

  void _onWebSocketError(dynamic error) {
    _retryAttempts++;
    if (_retryAttempts >= _maxRetryAttempts) {
      _heartbeatTimer?.cancel();
      return;
    }
    _reconnectWebSocket();
  }

  void _onWebSocketDone() {
    if (_resume) {
      _reconnectWebSocket();
    } else {
      _heartbeatTimer?.cancel();
    }
  }

  void _reconnectWebSocket() {
    _webSocket.sink.close();
    _connectWebSocket();
  }
}
