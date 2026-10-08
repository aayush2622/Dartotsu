import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:rhttp/rhttp.dart';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/ServiceAuth.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Data/User.dart';
import 'Mutations.dart';
import 'Prefs.dart';
import 'Queries.dart';
import '../../../Core/State/State.dart';

MalAuth get malAuth => find<MalAuth>();

class MalAuth extends AppController implements ServiceAuth {
  static const _callbackScheme = 'dantotsu';
  static const _tokenUrl = '$malWeb/v1/oauth2/token';
  static const _userCacheKey = 'malUser';

  final token = MalPref.token.rx;

  @override
  final user = Live<ServiceUser?>(null);

  final tenrai = TenraiClient();

  late final MalClient client = MalClient(() => token.value, _refresh);

  late final MalQueries queries = MalQueries(
    client,
    tenrai,
    refreshUser: () async {
      await refreshUser();
      return user.value != null;
    },
  );

  late final MalMutations mutations = MalMutations(
    client,
    onChanged: () => queries.invalidateLibrary(),
  );

  Completer<bool>? _refreshing;

  @override
  bool get isLoggedIn => token.value.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    final cached = PrefManager.getCustomType(
      _userCacheKey,
      MalUser.fromJson,
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
      final verifier = _verifier();
      final result = await FlutterWebAuth2.authenticate(
        url:
            '$malWeb/v1/oauth2/authorize?response_type=code'
            '&client_id=$malClientId&code_challenge=$verifier'
            '&code_challenge_method=plain',
        callbackUrlScheme: _callbackScheme,
        options: const FlutterWebAuth2Options(
          windowName: 'Dartotsu',
          useWebview: true,
        ),
      );
      final code = Uri.parse(result).queryParameters['code'];
      if (code == null || code.isEmpty) {
        snackString('Login cancelled');
        return false;
      }
      final ok = await _exchange({
        'client_id': malClientId,
        'code': code,
        'code_verifier': verifier,
        'grant_type': 'authorization_code',
      });
      if (!ok) {
        snackString('MyAnimeList login failed');
        return false;
      }
      await refreshUser();
      return user.value != null;
    } catch (e) {
      snackString('Login failed: $e');
      return false;
    }
  }

  @override
  Future<bool> loginWithToken(String newToken) async {
    token.value = newToken.trim();
    MalPref.expiresAt.value = DateTime.now().millisecondsSinceEpoch + 3600000;
    await refreshUser();
    final ok = user.value != null;
    if (!ok) {
      token.value = '';
      snackString('Invalid token');
    }
    return ok;
  }

  Future<bool> _exchange(Map<String, String> form) async {
    final res = await find<NetworkManager>().post(
      _tokenUrl,
      data: HttpBody.form(form),
    );
    final data = res.data;
    if (res.statusCode != 200 || data is! Map) return false;
    token.value = data['access_token'] as String? ?? '';
    MalPref.refresh.value = data['refresh_token'] as String? ?? '';
    final seconds = (data['expires_in'] as num?)?.toInt() ?? 2592000;
    MalPref.expiresAt.value =
        DateTime.now().millisecondsSinceEpoch + seconds * 1000;
    return token.value.isNotEmpty;
  }

  Future<bool> _refresh() async {
    final pending = _refreshing;
    if (pending != null) return pending.future;
    final refresh = MalPref.refresh.value;
    if (refresh.isEmpty) return false;
    final done = _refreshing = Completer<bool>();
    try {
      final ok = await _exchange({
        'client_id': malClientId,
        'grant_type': 'refresh_token',
        'refresh_token': refresh,
      });
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
    if (DateTime.now().millisecondsSinceEpoch > MalPref.expiresAt.value) {
      await _refresh();
    }
    try {
      final me = await client.get(
        '/users/@me',
        query: {'fields': 'anime_statistics'},
      );
      final name = me['name'] as String? ?? '';
      final stats = me['anime_statistics'] as Map<String, dynamic>?;
      var parsed = MalUser(
        id: (me['id'] as num).toInt(),
        name: name,
        avatar: me['picture'] as String?,
        episodesWatched: (stats?['num_episodes'] as num?)?.toInt() ?? 0,
      );
      user.value = parsed;
      _cache(parsed);
      final chapters = await queries.chaptersRead();
      if (chapters > 0) {
        parsed = parsed.copyWith(chaptersRead: chapters);
        user.value = parsed;
        _cache(parsed);
      }
    } on MalException {
      // keep the cached user
    }
  }

  void _cache(MalUser u) => PrefManager.setCustomType(
    _userCacheKey,
    u,
    (v) => v.toJson(),
    location: PrefLocation.CACHE,
  );

  @override
  void logout() {
    token.value = '';
    MalPref.refresh.value = '';
    MalPref.expiresAt.value = 0;
    user.value = null;
    queries.clearLibrary();
    PrefManager.removeCustomVal(_userCacheKey, location: PrefLocation.CACHE);
  }

  static String _verifier() {
    final random = Random.secure();
    final bytes = List<int>.generate(64, (_) => random.nextInt(256));
    return base64UrlEncode(bytes).replaceAll('=', '');
  }
}
