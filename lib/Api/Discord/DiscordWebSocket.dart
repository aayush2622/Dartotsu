/*
import 'dart:async';
import 'dart:convert';

import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:get/get.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'Discord.dart';

var DiscordService = Get.put(_DiscordService());

class _DiscordService extends GetxController {
  late WebSocketChannel _webSocket = WebSocketChannel.connect(
      Uri.parse('wss://gateway.discord.gg/?v=10&encoding=json'));

  void _connectWebSocket() {
    _webSocket = IOWebSocketChannel.connect(
        'wss://gateway.discord.gg/?v=10&encoding=json');
    _webSocket.stream.listen(
      (message) => _handleMessage(message),
      onDone: _onWebSocketDone,
      onError: _onWebSocketError,
    );
  }

  late Duration _heartbeatInterval;
  late int _sequence;

  Timer? _heartbeatTimer;

  void _startHeartbeat([int interval = 45000]) {
    _heartbeatTimer?.cancel();
    _heartbeatTimer = Timer.periodic(Duration(milliseconds: interval), (timer) {
      final payload = jsonEncode({'op': 1, 'd': _sequence});
      _webSocket.sink.add(payload);
    });
  }

  void _handleMessage(String message) {
    final jsonMessage = jsonDecode(message);
    _sequence = jsonMessage['s'];
    switch (jsonMessage['op']) {
      case 0:
        if (jsonMessage['t'] == 'READY') {
          _saveProfile(jsonMessage['d']['user']);
        }
        break;
      case 1:
        if (_heartbeatTimer?.isActive == true) _heartbeatTimer?.cancel();
        _webSocket.sink.add(jsonEncode({'op': 1, 'd': _sequence}));
        break;
      case 7:
        _webSocket
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
  void _reconnectWebSocket() {
    if (_retryAttempts < _maxRetryAttempts) {
      _retryAttempts++;
      _connectWebSocket();
    } else {
      _retryAttempts = 0;
      _webSocket.sink.close();
      _connectWebSocket();
    }
  }
  void _saveProfile(Map<String, dynamic> user) async {
    Discord.userName.value = user['username'];
    saveData(PrefName.discordUserName, user['username']);
    var avatar =
        'https://cdn.discordapp.com/avatars/${user['id']}/${user['avatar']}.png';
    Discord.avatar.value = avatar;
    saveData(PrefName.discordAvatar, avatar);
  }
}
*/
