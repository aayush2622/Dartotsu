import 'dart:async';

import '../../Logger.dart';
import '../../Utils/Function.dart';
import '../NetworkManager/NetworkManager.dart';
import '../Preferences/PrefManager.dart';
import '../State/State.dart';

const githubClientId = 'Ov23limEfTHzQBkbUqy4';

const githubApiHeaders = {
  'Accept': 'application/vnd.github+json',
  'X-GitHub-Api-Version': '2022-11-28',
  'User-Agent': 'Dartotsu',
};

class DeviceCode {
  final String userCode;
  final String url;

  const DeviceCode(this.userCode, this.url);
}

class GithubAuth extends AppController {
  static const _deviceUrl = 'https://github.com/login/device/code';
  static const _tokenUrl = 'https://github.com/login/oauth/access_token';
  static const _jsonHeaders = {'Accept': 'application/json'};

  final pending = Live<DeviceCode?>(null);
  final busy = false.live;

  bool _cancelled = false;

  NetworkManager get _network => find<NetworkManager>();

  bool get canDeviceFlow => githubClientId.isNotEmpty;

  bool get signedIn => PrefName.githubToken.value.isNotEmpty;

  Future<bool> signInWithToken(String token) async {
    token = token.trim();
    if (token.isEmpty) return false;
    busy.value = true;
    try {
      final res = await _network.get(
        'https://api.github.com/user',
        headers: {...githubApiHeaders, 'Authorization': 'Bearer $token'},
      );
      if (res.statusCode != 200 || res.data is! Map) {
        throw Exception('GitHub answered ${res.statusCode}');
      }
      PrefName.settingsSyncUser.value = (res.data as Map)['login'] as String;
      PrefName.githubToken.value = token;
      return true;
    } catch (e) {
      logger('GitHub sign-in failed: $e', logLevel: LogLevel.error);
      return false;
    } finally {
      busy.value = false;
    }
  }

  Future<bool> signInWithDevice() async {
    if (!canDeviceFlow || busy.value) return false;
    busy.value = true;
    _cancelled = false;
    try {
      final start = await _network.post(
        _deviceUrl,
        data: {'client_id': githubClientId, 'scope': 'gist'},
        headers: _jsonHeaders,
      );
      final info = start.data as Map;
      final deviceCode = info['device_code'] as String;
      var interval = (info['interval'] as num?)?.toInt() ?? 5;
      final deadline = DateTime.now().add(
        Duration(seconds: (info['expires_in'] as num?)?.toInt() ?? 900),
      );
      final url = info['verification_uri'] as String;
      pending.value = DeviceCode(info['user_code'] as String, url);
      unawaited(openLinkInBrowser(url));

      while (!_cancelled && DateTime.now().isBefore(deadline)) {
        await Future<void>.delayed(Duration(seconds: interval));
        if (_cancelled) break;
        final poll = await _network.post(
          _tokenUrl,
          data: {
            'client_id': githubClientId,
            'device_code': deviceCode,
            'grant_type': 'urn:ietf:params:oauth:grant-type:device_code',
          },
          headers: _jsonHeaders,
        );
        final body = poll.data is Map ? poll.data as Map : const {};
        final token = body['access_token'] as String?;
        if (token != null) {
          pending.value = null;
          busy.value = false;
          return await signInWithToken(token);
        }
        switch (body['error']) {
          case 'authorization_pending':
            break;
          case 'slow_down':
            interval += 5;
          default:
            throw Exception('${body['error'] ?? poll.statusCode}');
        }
      }
      return false;
    } catch (e) {
      logger('GitHub device sign-in failed: $e', logLevel: LogLevel.error);
      return false;
    } finally {
      pending.value = null;
      busy.value = false;
    }
  }

  void cancel() => _cancelled = true;

  void signOut() {
    cancel();
    PrefName.githubToken.value = '';
    PrefName.settingsSyncUser.value = '';
    PrefName.settingsSyncGist.value = '';
  }
}
