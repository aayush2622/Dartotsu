import '../../../Logger.dart';

import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:rhttp/rhttp.dart';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/State/State.dart';

const _secretKeys = {
  'access_token',
  'refresh_token',
  'token',
  'location',
  'code',
  'code_verifier',
  'authorization',
};

Object? _redact(Object? value) {
  if (value is Map) {
    return {
      for (final e in value.entries)
        '${e.key}': _secretKeys.contains('${e.key}'.toLowerCase())
            ? '<redacted>'
            : _redact(e.value),
    };
  }
  if (value is List) return [for (final e in value) _redact(e)];
  return value;
}

String discordSafe(Object? value) {
  final text = '${_redact(value)}';
  return text.length > 800 ? '${text.substring(0, 800)}…' : text;
}

void discordLog(String message, {LogLevel level = LogLevel.info}) =>
    logger(message, logLevel: level, tag: 'DISCORD');

class DiscordTokenRejected implements Exception {
  @override
  String toString() => 'Discord token rejected';
}

class MobileTokenManager {
  static const clientId = "503557087041683458";
  static const applicationId = "1135077904435396718";
  static const redirectUri = "https://login.premid.app";
  static const scopes = ["identify", "activities.write"];

  final NetworkManager network = find();

  String? _accessToken;
  String? _rejectedToken;
  Future<String>? _pending;

  static const _authKey = 'DiscordToken';

  static String? _read() {
    final protected = loadCustomData<String>(
      _authKey,
      location: PrefLocation.PROTECTED,
    );
    if (protected != null && protected.isNotEmpty) return protected;
    final legacy = loadCustomData<String>(_authKey);
    if (legacy == null || legacy.isEmpty) return null;
    saveAuthToken(legacy);
    removeCustomData(_authKey);
    return legacy;
  }

  String? get authToken => _read();

  static bool get saved => _read() != null;

  bool get hasAuthToken => saved;

  static void saveAuthToken(String token) => saveCustomData<String>(
    _authKey,
    token.trim(),
    location: PrefLocation.PROTECTED,
  );

  void removeAuthToken() {
    discordLog('removing saved user token');
    removeCustomData(_authKey, location: PrefLocation.PROTECTED);
    removeCustomData(_authKey);
    _accessToken = null;
  }

  Future<String> getToken() async {
    final auth = authToken;
    if (auth == null) {
      discordLog('getToken: no user token saved', level: LogLevel.error);
      throw Exception("Discord auth token is not set");
    }
    if (auth == _rejectedToken) {
      discordLog('getToken: saved user token was already rejected by Discord');
      throw DiscordTokenRejected();
    }
    if (_accessToken != null) {
      discordLog('getToken: using in-memory access token');
      return _accessToken!;
    }

    final cached = loadCustomData<String>("DiscordAccessToken");
    discordLog('getToken: stored access token present=${cached != null}');
    if (cached != null && await _testToken(cached)) {
      discordLog('getToken: stored access token still valid');
      _accessToken = cached;
      return cached;
    }

    final running = _pending;
    if (running != null) {
      discordLog('getToken: waiting for a refresh already in progress');
      return running;
    }

    discordLog('getToken: requesting a new access token');
    final next = _refresh().whenComplete(() => _pending = null);
    _pending = next;
    return next;
  }

  Future<String> _refresh() async {
    final token = await _createToken();
    _accessToken = token;
    saveCustomData("DiscordAccessToken", token);
    discordLog('access token created and stored');
    return token;
  }

  Future<bool> _testToken(String token) async {
    try {
      final res = await network.head(
        "https://discord.com/api/v10/users/@me",
        headers: {"Authorization": "Bearer $token"},
      );

      discordLog('test access token: HTTP ${res.statusCode}');
      return res.statusCode == 200;
    } catch (e, st) {
      discordLog('test access token failed: $e', level: LogLevel.error);
      logError('TokenManager', e, st);
      return false;
    }
  }

  static const _chars =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

  String _randomString(int length) {
    final rnd = Random.secure();
    return List.generate(
      length,
      (_) => _chars[rnd.nextInt(_chars.length)],
    ).join();
  }

  String _codeChallenge(String verifier) {
    final bytes = sha256.convert(utf8.encode(verifier)).bytes;
    return base64UrlEncode(bytes).replaceAll("=", "");
  }

  Future<String> _createToken() async {
    final verifier = _randomString(128);
    final challenge = _codeChallenge(verifier);
    discordLog(
      'authorize: POST oauth2/authorize client_id=$clientId '
      'redirect_uri=$redirectUri scope=identify activities.write',
    );

    final authRes = await network.post(
      "https://discord.com/api/v9/oauth2/authorize",
      query: {
        "client_id": clientId,
        "response_type": "code",
        "redirect_uri": redirectUri,
        "code_challenge": challenge,
        "code_challenge_method": "S256",
        "scope": "identify activities.write",
        "state": "undefined",
      },
      headers: {
        "Authorization": authToken!,
        "Content-Type": "application/json",
      },
      data: const {"authorize": true},
    );

    discordLog(
      'authorize: HTTP ${authRes.statusCode} '
      'body=${discordSafe(authRes.data)}',
    );

    if (authRes.statusCode == 401) {
      discordLog(
        'authorize: Discord rejected the saved user token',
        level: LogLevel.error,
      );
      _rejectedToken = authToken;
      throw DiscordTokenRejected();
    }

    if (authRes.statusCode != 200) {
      discordLog(
        'authorize failed: HTTP ${authRes.statusCode} '
        'body=${discordSafe(authRes.data)}',
        level: LogLevel.error,
      );
      throw Exception("Discord OAuth authorize failed");
    }

    final location = authRes.data["location"];
    final code = Uri.parse(location).queryParameters["code"];
    discordLog(
      'authorize: redirect host=${Uri.parse(location).host} '
      'code present=${code != null}',
    );
    if (code == null) {
      discordLog('authorize: no code in redirect', level: LogLevel.error);
      throw Exception("OAuth code missing");
    }

    final tokenRes = await network.post(
      "https://discord.com/api/v10/oauth2/token",
      data: HttpBody.form({
        "client_id": clientId,
        "code": code,
        "code_verifier": verifier,
        "grant_type": "authorization_code",
        "redirect_uri": redirectUri,
      }),
    );

    discordLog(
      'token exchange: HTTP ${tokenRes.statusCode} '
      'body=${discordSafe(tokenRes.data)}',
    );
    final accessToken = tokenRes.data["access_token"];
    if (accessToken == null) {
      discordLog('token exchange: access_token missing', level: LogLevel.error);
      throw Exception("Access token missing");
    }

    return accessToken;
  }

  Future<void> clear() async {
    discordLog('clearing stored access token');
    _accessToken = null;
    removeCustomData("DiscordAccessToken");
  }
}
