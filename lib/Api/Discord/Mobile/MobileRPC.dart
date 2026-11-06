import 'dart:io';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../BaseDiscordRPC.dart';
import '../DiscordPresence.dart';
import 'TokenManager.dart';
import '../../../Core/State/State.dart';
import '../../../Logger.dart';

class MobileRPC extends AppController implements BaseDiscordRPC {
  final NetworkManager network = find();
  final MobileTokenManager tokenManager = MobileTokenManager();
  String? _sessionToken;
  String? _warnedToken;

  static final _platform = Platform.isIOS
      ? 'ios'
      : Platform.isAndroid
      ? 'android'
      : 'desktop';

  Map<String, dynamic> _payload(DiscordPresence p) => {
    'activities': [
      {
        'application_id': MobileTokenManager.applicationId,
        'name': p.name,
        'details': p.details,
        'state': ?p.state,
        'type': p.type.code,
        if (p.statusDisplay != 0) 'status_display_type': p.statusDisplay,
        'platform': _platform,
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
    if (!tokenManager.hasAuthToken) {
      discordLog('show skipped: no Discord token saved');
      return true;
    }
    final payload = _payload(presence);
    discordLog(
      'show: retry=$retry session=${_sessionToken != null} '
      'activities=${discordSafe(payload['activities'])}',
    );
    try {
      final token = await tokenManager.getToken();
      discordLog('show: POST users/@me/headless-sessions');
      final res = await network.post(
        'https://discord.com/api/v10/users/@me/headless-sessions',
        headers: {
          'Authorization': 'Bearer $token',
          'Content-Type': 'application/json',
        },
        data: payload,
      );
      discordLog('show: HTTP ${res.statusCode} body=${discordSafe(res.data)}');
      if (res.statusCode != 200) {
        throw NetworkException(
          statusCode: res.statusCode,
          message: res.statusMessage,
          data: res.data,
        );
      }
      _sessionToken = res.data['token'] as String?;
      discordLog(
        'show: presence set, session present=${_sessionToken != null}',
      );
      return true;
    } on DiscordTokenRejected {
      final saved = tokenManager.authToken;
      if (_warnedToken != saved) {
        _warnedToken = saved;
        snackString('${getString.discordToken}: ${getString.invalidToken}');
      }
      logger('Discord token rejected', logLevel: LogLevel.error);
      return true;
    } on NetworkException catch (e) {
      discordLog(
        'show: network error HTTP ${e.statusCode} ${e.message} '
        'body=${discordSafe(e.data)}',
        level: LogLevel.error,
      );
      if (e.statusCode == 401 && retry) {
        discordLog('show: 401 from Discord, refreshing the access token');
        await tokenManager.clear();
        return show(presence, retry: false);
      }
      logger(
        'Discord RPC show failed: ${e.statusCode}',
        logLevel: LogLevel.error,
      );
    } catch (e, st) {
      discordLog('show failed: $e\n$st', level: LogLevel.error);
      logger('Discord RPC show failed: $e', logLevel: LogLevel.error);
    }
    return false;
  }

  @override
  Future<void> clear() async {
    final session = _sessionToken;
    if (session == null || !tokenManager.hasAuthToken) {
      discordLog(
        'clear skipped: session=${session != null} '
        'token saved=${tokenManager.hasAuthToken}',
      );
      return;
    }
    _sessionToken = null;
    try {
      final token = await tokenManager.getToken();
      discordLog('clear: POST users/@me/headless-sessions/delete');
      final res = await network.post(
        'https://discord.com/api/v10/users/@me/headless-sessions/delete',
        headers: {'Authorization': 'Bearer $token'},
        data: {'token': session},
      );
      discordLog('clear: HTTP ${res.statusCode} body=${discordSafe(res.data)}');
    } catch (e) {
      discordLog('clear failed: $e', level: LogLevel.error);
      logger('Discord RPC clear failed: $e', logLevel: LogLevel.error);
    }
  }

  Future<void> logout() async {
    discordLog('logout');
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
