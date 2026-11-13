import '../../../Core/Services/Api/Pkce.dart';
import '../../../Logger.dart';

import 'dart:async';

import 'package:rhttp/rhttp.dart';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Api/BrowserAuth.dart';
import '../../../Core/Services/ServiceAuth.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Community.dart';
import 'Data/User.dart';
import 'Mutations.dart';
import 'Prefs.dart';
import 'Queries.dart';

const _mobileClientId = 'pCyAfgTOmhYNkqMEsSuuUApvEiyNzpRc';
const _desktopClientId = '';

String get _clientId =>
    authClientId(mobile: _mobileClientId, desktop: _desktopClientId);

String get _redirect {
  return authRedirect('mangabaka');
}

MangaBakaAuth get mangaBakaAuth => find<MangaBakaAuth>();

class MangaBakaAuth extends AppController
    with SharedRefresh
    implements ServiceAuth {
  static const _userCacheKey = 'mangaBakaUser';

  final token = MangaBakaPref.token.rx;

  @override
  final user = Live<ServiceUser?>(null);

  final rawProfile = Live<Map<String, dynamic>>(const {});

  late final MangaBakaClient client = MangaBakaClient(
    () => token.value,
    _refresh,
  );

  late final MangaBakaQueries queries = MangaBakaQueries(
    client,
    onChapters: (chapters) {
      final current = user.value;
      if (current is MangaBakaUser && current.chaptersRead != chapters) {
        user.value = current.copyWith(chaptersRead: chapters);
      }
    },
  );

  MangaBakaCommunity get community => queries.community;

  late final MangaBakaMutations mutations = MangaBakaMutations(client, queries);

  Completer<bool>? _refreshing;

  @override
  bool get isLoggedIn => token.value.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    final cached = PrefManager.getCustomType(
      _userCacheKey,
      MangaBakaUser.fromJson,
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
        url: Uri.parse('$mangaBakaOAuth/authorize')
            .replace(
              queryParameters: {
                'client_id': _clientId,
                'redirect_uri': redirect,
                'response_type': 'code',
                'code_challenge': challenge,
                'code_challenge_method': 'S256',
                'scope': 'openid profile library.read library.write stack.read stack.write offline_access',
                'state': state,
                'prompt': 'consent',
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
      });
      if (!ok) {
        snackString(getString.mangaBakaLoginFailed);
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
      '$mangaBakaOAuth/token',
      data: HttpBody.form(form),
    );
    final data = res.data;
    if (res.statusCode != 200 || data is! Map) return false;
    token.value = data['access_token'] as String? ?? '';
    final refresh = data['refresh_token'] as String?;
    if (refresh != null && refresh.isNotEmpty) {
      MangaBakaPref.refresh.value = refresh;
    }
    final seconds = (data['expires_in'] as num?)?.toInt() ?? 3600;
    MangaBakaPref.expiresAt.value =
        DateTime.now().millisecondsSinceEpoch + seconds * 1000;
    return token.value.isNotEmpty;
  }

  Future<bool> _refresh() async {
    final pending = _refreshing;
    if (pending != null) return pending.future;
    final refresh = MangaBakaPref.refresh.value;
    if (refresh.isEmpty) return false;
    final done = _refreshing = Completer<bool>();
    try {
      final ok = await _exchange({
        'client_id': _clientId,
        'refresh_token': refresh,
        'grant_type': 'refresh_token',
        'redirect_uri': _redirect,
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
      shareRefresh(_loadUser, key: MangaBakaPref.token.value);

  Future<void> _loadUser() async {
    if (!isLoggedIn) return;
    final expires = MangaBakaPref.expiresAt.value;
    if (expires > 0 && DateTime.now().millisecondsSinceEpoch > expires) {
      await _refresh();
    }
    try {
      final profile =
          ((await client.get('/my/profile'))['data'] as Map?)
              ?.cast<String, dynamic>() ??
          const {};
      String? avatar;
      try {
        final info = await find<NetworkManager>().get(
          '$mangaBakaOAuth/userinfo',
          headers: {'Authorization': 'Bearer ${token.value}'},
        );
        final data = info.data;
        if (data is Map) avatar = data['picture'] as String?;
      } catch (e, st) {
        logError('Auth', e, st);
      }
      final sub = '${profile['id'] ?? ''}';
      final previous = user.value is MangaBakaUser
          ? user.value as MangaBakaUser
          : null;
      final parsed = MangaBakaUser(
        id: int.tryParse(sub) ?? 0,
        sub: sub,
        name:
            (profile['nickname'] ?? profile['preferred_username'] ?? sub)
                as String,
        avatar: avatar ?? previous?.avatar,
        chaptersRead: previous?.chaptersRead ?? 0,
        ratingSteps: (profile['rating_steps'] as num?)?.toInt() ?? 1,
      );
      rawProfile.value = Map.unmodifiable(profile);
      user.value = parsed;
      PrefManager.setCustomType(
        _userCacheKey,
        parsed,
        (v) => v.toJson(),
        location: PrefLocation.CACHE,
      );
    } on MangaBakaException {
      // keep the cached user
    }
  }

  @override
  void logout() {
    token.value = '';
    MangaBakaPref.refresh.value = '';
    MangaBakaPref.expiresAt.value = 0;
    user.value = null;
    rawProfile.value = const {};
    queries.clearLibrary();
    PrefManager.removeCustomVal(_userCacheKey, location: PrefLocation.CACHE);
  }
}
