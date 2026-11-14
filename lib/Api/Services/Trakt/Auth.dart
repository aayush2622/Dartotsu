import 'dart:async';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/Api/BrowserAuth.dart';
import '../../../Core/Services/Api/Pkce.dart';
import '../../../Core/Services/Api/SharedRequests.dart';
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

TraktAuth get traktAuth => find<TraktAuth>();

class TraktAuth extends AppController
    with SharedRefresh
    implements ServiceAuth {
  static const _userCacheKey = 'traktUser';

  final token = TraktPref.token.rx;

  @override
  final user = Live<ServiceUser?>(null);

  late final TraktClient client = TraktClient(() => token.value, _refresh);

  late final TraktQueries queries = TraktQueries(
    client,
    onEpisodes: (episodes) {
      final current = user.value;
      if (current is TraktUser && current.episodesWatched != episodes) {
        user.value = current.copyWith(episodesWatched: episodes);
      }
    },
  );

  late final TraktMutations mutations = TraktMutations(client, queries);

  final _refreshing = SingleFlight<bool>();

  @override
  bool get isLoggedIn => token.value.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    final cached = PrefManager.getCustomType(
      _userCacheKey,
      TraktUser.fromJson,
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
      return await _login();
    } catch (e, st) {
      logError('TraktAuth', e, st);
      snackString(getString.loginFailed(e.toString()));
      return false;
    }
  }

  Future<bool> _login() async {
    final verifier = randomToken(64);
    final challenge = pkceChallenge(verifier);
    final state = randomToken(24);
    final redirect = authRedirect('trakt');

    final authUrl = Uri.parse('$traktAuthUrl/oauth/authorize')
        .replace(
          queryParameters: {
            'client_id': traktClientId,
            'redirect_uri': redirect,
            'response_type': 'code',
            'state': state,
            'code_challenge': challenge,
            'code_challenge_method': 'S256',
          },
        )
        .toString();

    final result = await browserAuthenticate(url: authUrl, redirect: redirect);

    final params = Uri.parse(result).queryParameters;
    if (params['state'] != state || (params['code'] ?? '').isEmpty) {
      snackString(getString.loginCancelled);
      return false;
    }

    final data = await client.token('/oauth/token', {
      'code': params['code']!,
      'client_id': traktClientId,
      'code_verifier': verifier,
      'grant_type': 'authorization_code',
      'redirect_uri': redirect,
    });

    if (!_store(data)) return false;
    await refreshUser();
    return user.value != null;
  }

  bool _store(Map<String, dynamic> data) {
    final access = data['access_token'] as String? ?? '';
    if (access.isEmpty) return false;
    token.value = access;
    TraktPref.refresh.value = data['refresh_token'] as String? ?? '';
    final seconds = (data['expires_in'] as num?)?.toInt();
    TraktPref.expiresAt.value = seconds == null
        ? 0
        : DateTime.now().millisecondsSinceEpoch + seconds * 1000;
    return true;
  }

  Future<bool> _refresh() => _refreshing.run(() async {
    final refresh = TraktPref.refresh.value;
    if (refresh.isEmpty) return false;
    try {
      return _store(
        await client.token('/oauth/token', {
          'refresh_token': refresh,
          'client_id': traktClientId,
          'grant_type': 'refresh_token',
          'redirect_uri': authRedirect('trakt'),
        }),
      );
    } catch (e, st) {
      logError('TraktAuth', e, st);
      return false;
    }
  });

  @override
  Future<void> refreshUser() =>
      shareRefresh(_loadUser, key: TraktPref.token.value);

  Future<void> _loadUser() async {
    if (!isLoggedIn) return;
    try {
      final data = await client.get('/users/me', query: {'extended': 'full'});
      if (data is! Map) return;
      Object? stats;
      try {
        stats = await client.get('/users/me/stats');
      } catch (_) {}
      final traktUser = TraktUser.fromApi(
        data.cast<String, dynamic>(),
        stats is Map ? stats.cast<String, dynamic>() : null,
      );
      user.value = traktUser;
      PrefManager.setCustomType(
        _userCacheKey,
        traktUser,
        (v) => v.toJson(),
        location: PrefLocation.CACHE,
      );
    } catch (e, st) {
      logError('TraktAuth', e, st);
    }
  }

  @override
  void logout() {
    token.value = '';
    TraktPref.refresh.value = '';
    TraktPref.expiresAt.value = 0;
    user.value = null;
    queries.clearLibrary();
    PrefManager.removeCustomVal(_userCacheKey, location: PrefLocation.CACHE);
  }
}
