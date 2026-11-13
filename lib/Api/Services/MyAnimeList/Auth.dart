import '../../../Logger.dart';

import 'dart:async';
import 'dart:convert';
import 'dart:math';

import '../../../Core/Services/Api/BrowserAuth.dart';

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
import '../../../Core/ThemeManager/LanguageSwitcher.dart';

MalAuth get malAuth => find<MalAuth>();

class MalAuth extends AppController with SharedRefresh implements ServiceAuth {
  static const _tokenUrl = '$malWeb/v1/oauth2/token';
  static const _userCacheKey = 'malUser';

  final token = MalPref.token.rx;

  @override
  final user = Live<ServiceUser?>(null);

  final tenrai = TenraiClient();

  late final MalClient client = MalClient(() => token.value, _refresh);

  late final MalQueries queries = MalQueries(client, tenrai);

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
  bool get supportsTokenLogin => false;

  @override
  Future<bool> loginWithToken(String token) async => false;

  @override
  Future<bool> login() async {
    try {
      final verifier = _verifier();
      final redirect = authRedirect('mal');
      final result = await browserAuthenticate(
        url:
            '$malWeb/v1/oauth2/authorize?response_type=code'
            '&client_id=$malClientId&code_challenge=$verifier'
            '&code_challenge_method=plain'
            '&redirect_uri=${Uri.encodeComponent(redirect)}',
        redirect: redirect,
      );
      final code = Uri.parse(result).queryParameters['code'];
      if (code == null || code.isEmpty) {
        snackString(getString.loginCancelled);
        return false;
      }
      final ok = await _exchange({
        'client_id': malClientId,
        'code': code,
        'code_verifier': verifier,
        'grant_type': 'authorization_code',
        'redirect_uri': redirect,
      });
      if (!ok) {
        snackString(getString.malLoginFailed);
        return false;
      }
      await refreshUser();
      return user.value != null;
    } catch (e) {
      snackString(getString.loginFailed(e.toString()));
      return false;
    }
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
    } catch (e, st) {
      logError('Auth', e, st);
      done.complete(false);
      return false;
    } finally {
      _refreshing = null;
    }
  }

  @override
  Future<void> refreshUser() =>
      shareRefresh(_loadUser, key: MalPref.token.value);

  Future<void> _loadUser() async {
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
        joinedAt: me['joined_at'] as String?,
        timeZone: me['time_zone'] as String?,
        location: me['location'] as String?,
        supporter: me['is_supporter'] == true,
        meanScore: (stats?['mean_score'] as num?)?.toDouble() ?? 0,
        daysWatched: (stats?['num_days_watched'] as num?)?.toDouble() ?? 0,
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
