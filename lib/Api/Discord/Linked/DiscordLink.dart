import 'dart:math';

import 'package:rhttp/rhttp.dart';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Api/BrowserAuth.dart';
import '../../../Core/State/State.dart';
import '../../../Logger.dart';
import '../DiscordApp.dart';
import '../Mobile/TokenManager.dart';
import 'DiscordOAuth.dart';

class DiscordLinkCancelled implements Exception {
  @override
  String toString() => 'Discord connect cancelled';
}

class DiscordLinkFailed implements Exception {
  final String message;

  DiscordLinkFailed([this.message = 'Discord connect failed']);

  @override
  String toString() => message;
}

class DiscordLinkRevoked extends DiscordLinkFailed {
  DiscordLinkRevoked() : super('Discord access was revoked');
}

class DiscordLink {
  static const _accessKey = 'DiscordLinkAccess';
  static const _refreshKey = 'DiscordLinkRefresh';
  static const _expiryKey = 'DiscordLinkExpiry';
  static const _skew = Duration(seconds: 60);

  static Future<String?>? _pending;
  static void Function()? onLost;

  NetworkManager get network => find();

  static String? _read(String key) {
    final value = loadCustomData<String>(key, location: PrefLocation.PROTECTED);
    if (value == null || value.isEmpty) return null;
    return value;
  }

  static bool get saved => _read(_refreshKey) != null;

  static void _write(String key, String value) =>
      saveCustomData<String>(key, value, location: PrefLocation.PROTECTED);

  void dropAccess() {
    removeCustomData(_accessKey, location: PrefLocation.PROTECTED);
    removeCustomData(_expiryKey, location: PrefLocation.PROTECTED);
  }

  void _clear() {
    dropAccess();
    removeCustomData(_refreshKey, location: PrefLocation.PROTECTED);
  }

  Future<String?> accessToken() {
    final running = _pending;
    if (running != null) return running;
    final next = _load().whenComplete(() => _pending = null);
    _pending = next;
    return next;
  }

  Future<String?> _load() async {
    final refresh = _read(_refreshKey);
    if (refresh == null) return null;
    final expiry =
        loadCustomData<int>(_expiryKey, location: PrefLocation.PROTECTED) ?? 0;
    final access = _read(_accessKey);
    final fresh =
        access != null &&
        DateTime.now().add(_skew).millisecondsSinceEpoch < expiry;
    if (fresh) return access;
    return _refresh(refresh);
  }

  Future<void> connect() async {
    final random = Random.secure();
    final verifier = discordCodeVerifier(random);
    final state = discordCodeVerifier(random, length: 32);
    final redirect = authRedirect('discord');
    discordLog(
      'connect: opening authorize redirect host=${Uri.parse(redirect).host}',
    );
    final result = await browserAuthenticate(
      url: discordAuthorizeUrl(
        clientId: DiscordApp.linkedId,
        redirect: redirect,
        challenge: discordCodeChallenge(verifier),
        state: state,
      ),
      redirect: redirect,
    );
    final query = Uri.parse(result).queryParameters;
    final error = query['error'];
    discordLog(
      'connect: callback keys=${query.keys.join(',')} '
      'error=${error ?? 'none'}',
    );
    if (error != null) {
      final description = query['error_description'] ?? error;
      discordLog('connect: $description', level: LogLevel.error);
      throw DiscordLinkFailed(description);
    }
    if (query['state'] != state) {
      discordLog('connect: state mismatch', level: LogLevel.error);
      throw DiscordLinkFailed('Discord connect failed');
    }
    final code = query['code'];
    if (code == null || code.isEmpty) throw DiscordLinkCancelled();
    final grant = await _exchange({
      'client_id': DiscordApp.linkedId,
      'grant_type': 'authorization_code',
      'code': code,
      'redirect_uri': redirect,
      'code_verifier': verifier,
    });
    if (grant == null || grant.refreshToken == null) {
      throw DiscordLinkFailed('Discord did not return a refresh token');
    }
    _store(grant, grant.refreshToken!);
    discordLog('connect: grant stored');
  }

  Future<void> revoke() async {
    final refresh = _read(_refreshKey);
    _clear();
    if (refresh == null) return;
    try {
      discordLog('revoke: POST oauth2/token/revoke');
      final res = await network.post(
        'https://discord.com/api/v10/oauth2/token/revoke',
        data: HttpBody.form({
          'client_id': DiscordApp.linkedId,
          'token': refresh,
          'token_type_hint': 'refresh_token',
        }),
      );
      discordLog('revoke: HTTP ${res.statusCode}');
    } catch (e) {
      discordLog('revoke failed: $e', level: LogLevel.error);
    }
  }

  Future<String?> _refresh(String refresh) async {
    discordLog('refresh: requesting a new access token');
    final DiscordOAuthGrant? grant;
    try {
      grant = await _exchange({
        'client_id': DiscordApp.linkedId,
        'grant_type': 'refresh_token',
        'refresh_token': refresh,
      });
    } on DiscordLinkRevoked {
      discordLog(
        'refresh: grant revoked, disconnecting',
        level: LogLevel.error,
      );
      _clear();
      onLost?.call();
      return null;
    }
    if (grant == null) {
      discordLog('refresh failed', level: LogLevel.error);
      return null;
    }
    _store(grant, grant.refreshToken ?? refresh);
    return grant.accessToken;
  }

  Future<DiscordOAuthGrant?> _exchange(Map<String, String> form) async {
    try {
      final res = await network.post(
        'https://discord.com/api/v10/oauth2/token',
        data: HttpBody.form(form),
      );
      discordLog('token: HTTP ${res.statusCode} body=${discordSafe(res.data)}');
      if (res.statusCode != 200) {
        final data = res.data;
        if (data is Map && data['error'] == 'invalid_grant') {
          throw DiscordLinkRevoked();
        }
        final description = data is Map
            ? data['error_description'] ?? data['error']
            : null;
        throw DiscordLinkFailed(
          description == null
              ? 'Discord connect failed'
              : description.toString(),
        );
      }
      return DiscordOAuthGrant.parse(res.data);
    } on DiscordLinkFailed {
      rethrow;
    } catch (e) {
      discordLog('token exchange failed: $e', level: LogLevel.error);
      return null;
    }
  }

  void _store(DiscordOAuthGrant grant, String refresh) {
    _write(_accessKey, grant.accessToken);
    _write(_refreshKey, refresh);
    saveCustomData<int>(
      _expiryKey,
      DateTime.now().millisecondsSinceEpoch + grant.expiresIn * 1000,
      location: PrefLocation.PROTECTED,
    );
  }
}
