import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/ServiceAuth.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Data/User.dart';
import 'Mutations.dart';
import 'Prefs.dart';
import 'Queries.dart';
import '../../../Core/State/State.dart';

SimklAuth get simklAuth => find<SimklAuth>();

const _clientId =
    '9730a58f3b4fbdb233fd07cead1a042f105e1cf69a802e99e131b8586ee0bfff';
const _redirect = 'dantotsu://simkl';

class SimklAuth extends AppController implements ServiceAuth {
  static const _userCacheKey = 'simklUser';

  final token = SimklPref.token.rx;

  @override
  final user = Live<ServiceUser?>(null);

  late final SimklClient client = SimklClient(
    () async => _clientId,
    () => token.value,
    _refresh,
  );

  late final SimklQueries queries = SimklQueries(
    client,
    refreshUser: () async {
      await refreshUser();
      return user.value != null;
    },
    onEpisodes: (episodes) {
      final current = user.value;
      if (current is SimklUser && current.episodesWatched != episodes) {
        user.value = current.copyWith(episodesWatched: episodes);
      }
    },
  );

  late final SimklMutations mutations = SimklMutations(client, queries);

  Completer<bool>? _refreshing;

  @override
  bool get isLoggedIn => token.value.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    final cached = PrefManager.getCustomType(
      _userCacheKey,
      SimklUser.fromJson,
      location: PrefLocation.CACHE,
    );
    if (cached != null) user.value = cached;
    if (isLoggedIn) unawaited(refreshUser());
  }

  @override
  String? get tokenLoginUrl => null;

  @override
  Future<bool> login() async {
    try {
      return await _login();
    } catch (e) {
      snackString('Login failed: $e');
      return false;
    }
  }

  Future<bool> _login() async {
    final verifier = _random(64);
    final challenge = base64UrlEncode(
      sha256.convert(utf8.encode(verifier)).bytes,
    ).replaceAll('=', '');
    final state = _random(24);
    final result = await FlutterWebAuth2.authenticate(
      url: Uri.parse('$simklWeb/oauth2/authorize')
          .replace(
            queryParameters: {
              'client_id': _clientId,
              'redirect_uri': _redirect,
              'response_type': 'code',
              'scope': 'media:read media:write',
              'state': state,
              'code_challenge': challenge,
              'code_challenge_method': 'S256',
            },
          )
          .toString(),
      callbackUrlScheme: Uri.parse(_redirect).scheme,
      options: const FlutterWebAuth2Options(
        windowName: 'Dartotsu',
        useWebview: true,
      ),
    );
    final params = Uri.parse(result).queryParameters;
    if (params['state'] != state || (params['code'] ?? '').isEmpty) {
      snackString('Login cancelled');
      return false;
    }
    final data = await client.token('/oauth2/token', {
      'grant_type': 'authorization_code',
      'code': params['code']!,
      'code_verifier': verifier,
      'redirect_uri': _redirect,
      'client_id': _clientId,
    });
    if (!_store(data)) return false;
    if (!'${data['scope']}'.contains('media:write')) {
      snackString('Simkl granted read-only access');
    }
    await refreshUser();
    return user.value != null;
  }

  @override
  Future<bool> loginWithToken(String newToken) async {
    token.value = newToken.trim();
    SimklPref.expiresAt.value = 0;
    await refreshUser();
    final ok = user.value != null;
    if (!ok) {
      token.value = '';
      snackString('Invalid token');
    }
    return ok;
  }

  bool _store(Map<String, dynamic> data) {
    final access = data['access_token'] as String? ?? '';
    if (access.isEmpty) return false;
    token.value = access;
    SimklPref.refresh.value = data['refresh_token'] as String? ?? '';
    final seconds = (data['expires_in'] as num?)?.toInt();
    SimklPref.expiresAt.value = seconds == null
        ? 0
        : DateTime.now().millisecondsSinceEpoch + seconds * 1000;
    return true;
  }

  Future<bool> _refresh() async {
    final pending = _refreshing;
    if (pending != null) return pending.future;
    final refresh = SimklPref.refresh.value;
    if (refresh.isEmpty) return false;
    final done = _refreshing = Completer<bool>();
    try {
      final data = await client.token('/oauth2/token', {
        'grant_type': 'refresh_token',
        'refresh_token': refresh,
        'client_id': _clientId,
      });
      final ok = _store(data);
      done.complete(ok);
      return ok;
    } catch (_) {
      done.complete(false);
      return false;
    } finally {
      _refreshing = null;
    }
  }

  @override
  Future<void> refreshUser() async {
    if (!isLoggedIn) return;
    final expires = SimklPref.expiresAt.value;
    if (expires > 0 && DateTime.now().millisecondsSinceEpoch > expires) {
      await _refresh();
    }
    try {
      final data = await client.get('/users/settings') as Map<String, dynamic>;
      final u = (data['user'] as Map?) ?? const {};
      final account = (data['account'] as Map?) ?? const {};
      final parsed = SimklUser(
        id: (account['id'] as num?)?.toInt() ?? 0,
        name: u['name'] as String? ?? 'Simkl',
        avatar: u['avatar'] as String?,
        episodesWatched: user.value is SimklUser
            ? (user.value as SimklUser).episodesWatched
            : 0,
      );
      user.value = parsed;
      PrefManager.setCustomType(
        _userCacheKey,
        parsed,
        (v) => v.toJson(),
        location: PrefLocation.CACHE,
      );
    } on SimklException {
      // keep the cached user
    }
  }

  @override
  void logout() {
    token.value = '';
    SimklPref.refresh.value = '';
    SimklPref.expiresAt.value = 0;
    user.value = null;
    queries.clearLibrary();
    PrefManager.removeCustomVal(_userCacheKey, location: PrefLocation.CACHE);
  }

  static String _random(int length) {
    final random = Random.secure();
    return base64UrlEncode(
      List<int>.generate(length, (_) => random.nextInt(256)),
    ).replaceAll('=', '').substring(0, length);
  }
}
