import 'dart:async';
import 'dart:io';

import 'package:rhttp/rhttp.dart';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Api/BrowserAuth.dart';
import '../../../Core/Services/Api/Pkce.dart';
import '../../../Core/Services/ServiceAuth.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Logger.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Data/User.dart';
import 'Mutations.dart';
import 'Prefs.dart';
import 'Queries.dart';

const _defaultClientId = 'SGrUojDvbgqfhSCQbwfCjUPIccYMJdBH';

String get _clientId {
  final custom = ComickPref.clientId.value.trim();
  return custom.isNotEmpty ? custom : _defaultClientId;
}

String get _redirect => (Platform.isLinux || Platform.isWindows)
    ? 'http://127.0.0.1:$kAuthPort/comick'
    : 'app.dartotsu:/comick-auth';

ComickAuth get comickAuth => find<ComickAuth>();

class ComickAuth extends AppController
    with SharedRefresh
    implements ServiceAuth {
  static const _userCacheKey = 'comickUser';

  final token = ComickPref.token.rx;

  @override
  final user = Live<ServiceUser?>(null);

  late final ComickClient client = ComickClient(
    () => token.value,
    _refresh,
  );

  late final ComickQueries queries = ComickQueries(client);

  late final ComickMutations mutations = ComickMutations(client, queries);

  Completer<bool>? _refreshing;

  @override
  bool get isLoggedIn => token.value.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    final cached = PrefManager.getCustomType(
      _userCacheKey,
      ComickUser.fromJson,
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
      final verifier = randomToken(64);
      final challenge = pkceChallenge(verifier);
      final state = randomToken(16);
      final redirect = _redirect;
      final result = await browserAuthenticate(
        url: Uri.parse('$comickOAuth/authorize')
            .replace(
              queryParameters: {
                'client_id': _clientId,
                'redirect_uri': redirect,
                'response_type': 'code',
                'code_challenge': challenge,
                'code_challenge_method': 'S256',
                'scope': 'library:read library:write offline_access',
                'resource': comickResource,
                'state': state,
              },
            )
            .toString(),
        redirect: redirect,
      );
      final query = Uri.parse(result).queryParameters;
      final code = query['code'];
      if (code == null || code.isEmpty || query['state'] != state) {
        snackString(getString.loginCancelled);
        return false;
      }
      final ok = await _exchange({
        'client_id': _clientId,
        'code': code,
        'code_verifier': verifier,
        'grant_type': 'authorization_code',
        'redirect_uri': redirect,
        'resource': comickResource,
      });
      if (!ok) {
        snackString(getString.comickLoginFailed);
        return false;
      }
      await refreshUser();
      return user.value != null;
    } catch (e, st) {
      logError('ComickAuth', e, st);
      snackString(getString.loginFailed(e.toString()));
      return false;
    }
  }

  Future<bool> _exchange(Map<String, String> form) async {
    final res = await find<NetworkManager>().post(
      '$comickOAuth/token',
      data: HttpBody.form(form),
      headers: {'Accept': 'application/json'},
    );
    final data = res.data;
    if (res.statusCode != 200 || data is! Map) return false;
    final access = data['access_token'] as String?;
    if (access == null || access.isEmpty) return false;
    token.value = access;
    final refresh = data['refresh_token'] as String?;
    if (refresh != null && refresh.isNotEmpty) {
      ComickPref.refresh.value = refresh;
    }
    final seconds = (data['expires_in'] as num?)?.toInt() ?? 900;
    ComickPref.expiresAt.value =
        DateTime.now().millisecondsSinceEpoch + seconds * 1000;
    return true;
  }

  Future<bool> _refresh() async {
    final pending = _refreshing;
    if (pending != null) return pending.future;
    final refresh = ComickPref.refresh.value;
    if (refresh.isEmpty) return false;
    final done = _refreshing = Completer<bool>();
    try {
      final ok = await _exchange({
        'client_id': _clientId,
        'refresh_token': refresh,
        'grant_type': 'refresh_token',
        'resource': comickResource,
      });
      done.complete(ok);
      return ok;
    } catch (e, st) {
      logError('ComickAuth', e, st);
      done.complete(false);
      return false;
    } finally {
      _refreshing = null;
    }
  }

  @override
  Future<void> refreshUser() =>
      shareRefresh(_loadUser, key: ComickPref.token.value);

  Future<void> _loadUser() async {
    if (!isLoggedIn) return;
    final expires = ComickPref.expiresAt.value;
    if (expires > 0 && DateTime.now().millisecondsSinceEpoch > expires) {
      await _refresh();
    }
    try {
      final info = await client.get('/me');
      if (info is! Map) return;
      final uuid = info['id']?.toString() ?? '';
      final username = info['username'] as String? ?? 'ComickReader';
      final avatar = info['avatar_url'] as String?;

      final previous = user.value is ComickUser ? user.value as ComickUser : null;
      final parsed = ComickUser(
        id: uuid.hashCode.abs(),
        uuid: uuid,
        name: username,
        avatar: avatar ?? previous?.avatar,
        chaptersRead: previous?.chaptersRead ?? 0,
        episodesWatched: previous?.episodesWatched ?? 0,
      );
      user.value = parsed;
      PrefManager.setCustomType(
        _userCacheKey,
        parsed,
        (v) => v.toJson(),
        location: PrefLocation.CACHE,
      );
    } on ComickException catch (e, st) {
      logError('ComickAuth', e, st);
    }
  }

  @override
  void logout() {
    token.value = '';
    ComickPref.refresh.value = '';
    ComickPref.expiresAt.value = 0;
    user.value = null;
    queries.clearLibrary();
    PrefManager.removeCustomVal(_userCacheKey, location: PrefLocation.CACHE);
  }
}
