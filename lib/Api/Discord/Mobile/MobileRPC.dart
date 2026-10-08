import '../../../Core/NetworkManager/NetworkManager.dart';
import 'package:flutter/foundation.dart';
import '../BaseDiscordRPC.dart';
import '../DiscordPresence.dart';
import 'TokenManager.dart';
import '../../../Core/State/State.dart';

class MobileRPC extends AppController implements BaseDiscordRPC {
  final NetworkManager network = find();
  final MobileTokenManager tokenManager = MobileTokenManager();
  String? _sessionToken;

  Map<String, dynamic> _payload(DiscordPresence p) => {
    'activities': [
      {
        'application_id': MobileTokenManager.clientId,
        'name': p.name,
        'details': p.details,
        'state': ?p.state,
        'type': p.type.code,
        'platform': 'desktop',
        if (p.start != null)
          'timestamps': {'start': p.start, if (p.end != null) 'end': p.end},
        'assets': {
          'large_image': p.largeImage,
          'large_text': p.largeText,
          'small_image': p.smallImage,
          'small_text': p.smallText,
        },
        'buttons': [
          for (final b in p.buttons) {'label': b.label, 'url': b.url},
        ],
      },
    ],
    if (_sessionToken != null) 'token': _sessionToken,
  };

  @override
  Future<bool> show(DiscordPresence presence, {bool retry = true}) async {
    if (!tokenManager.hasAuthToken) return true;
    try {
      final token = await tokenManager.getToken();
      final res = await network.post(
        'https://discord.com/api/v10/users/@me/headless-sessions',
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        data: _payload(presence),
      );
      if (res.statusCode != 200) {
        throw NetworkException(
          statusCode: res.statusCode,
          message: res.statusMessage,
          data: res.data,
        );
      }
      _sessionToken = res.data['token'] as String?;
      return true;
    } on NetworkException catch (e) {
      if (e.statusCode == 401 && retry) {
        await tokenManager.clear();
        return show(presence, retry: false);
      }
      debugPrint('Discord RPC show failed: ${e.statusCode}');
    } catch (e) {
      debugPrint('Discord RPC show failed: $e');
    }
    return false;
  }

  @override
  Future<void> clear() async {
    final session = _sessionToken;
    if (session == null || !tokenManager.hasAuthToken) return;
    _sessionToken = null;
    try {
      final token = await tokenManager.getToken();
      await network.post(
        'https://discord.com/api/v10/users/@me/headless-sessions/delete',
        headers: {'Authorization': 'Bearer $token'},
        data: {'token': session},
      );
    } catch (e) {
      debugPrint('Discord RPC clear failed: $e');
    }
  }

  Future<void> logout() async {
    await clear();
    await tokenManager.clear();
    tokenManager.removeAuthToken();
  }

  @override
  void onClose() {
    clear();
    super.onClose();
  }
}
