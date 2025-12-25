import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';

import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:rhttp/rhttp.dart';
import '../../../Functions/Functions/GetXFunctions.dart';
import '../../../Functions/Network/NetworkManager.dart';

class MobileTokenManager {
  static const clientId = "503557087041683458";
  static const redirectUri = "https://login.premid.app";
  static const scopes = ["identify", "activities.write"];

  late final String? authToken;
  final NetworkManager network = find();

  String? _accessToken;
  Completer<String>? _refreshCompleter;

  MobileTokenManager() {
    authToken = loadCustomData<String>('DiscordToken');
  }

  Future<String> getToken() async {
    if (authToken == null) {
      throw Exception("Discord auth token is not set");
    }
    if (_accessToken != null) return _accessToken!;

    final cached = loadCustomData<String>("DiscordAccessToken");
    if (cached != null && await _testToken(cached)) {
      _accessToken = cached;
      return cached;
    }

    if (_refreshCompleter != null) {
      return _refreshCompleter!.future;
    }

    _refreshCompleter = Completer<String>();

    try {
      final token = await _createToken();
      _accessToken = token;
      saveCustomData("DiscordAccessToken", token);

      _refreshCompleter!.complete(token);
      return token;
    } catch (e) {
      _refreshCompleter!.completeError(e);
      rethrow;
    } finally {
      _refreshCompleter = null;
    }
  }

  Future<bool> _testToken(String token) async {
    try {
      final res = await network.head(
        "https://discord.com/api/v10/users/@me",
        headers: {
          "Authorization": "Bearer $token",
        },
      );

      return res.statusCode == 200;
    } catch (_) {
      return false;
    }
  }

  static const _chars =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

  String _randomString(int length) {
    final rnd = Random.secure();
    return List.generate(length, (_) => _chars[rnd.nextInt(_chars.length)])
        .join();
  }

  String _codeChallenge(String verifier) {
    final bytes = sha256.convert(utf8.encode(verifier)).bytes;
    return base64UrlEncode(bytes).replaceAll("=", "");
  }

  Future<String> _createToken() async {
    final verifier = _randomString(128);
    final challenge = _codeChallenge(verifier);

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

    if (authRes.statusCode != 200) {
      throw Exception("Discord OAuth authorize failed");
    }

    final location = authRes.data["location"];
    final code = Uri.parse(location).queryParameters["code"];
    if (code == null) {
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

    final accessToken = tokenRes.data["access_token"];
    if (accessToken == null) {
      throw Exception("Access token missing");
    }

    return accessToken;
  }

  Future<void> clear() async {
    _accessToken = null;
    removeCustomData("DiscordAccessToken");
  }
}
