import 'dart:async';

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

TraktAuth get traktAuth => find<TraktAuth>();

const _defaultClientId = 'gMkRIMvbNw8ie4wGwQtT101vsenOVV4R0VGQu_AH_mw';

String get _clientId => _defaultClientId;

class TraktAuth extends AppController
    with SharedRefresh
    implements ServiceAuth {
  static const _userCacheKey = 'traktUser';

  final token = TraktPref.token.rx;

  @override
  final user = Live<ServiceUser?>(null);

  late final TraktClient client = TraktClient(
    () async => _clientId,
    () => token.value,
    _refresh,
  );

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

  Completer<bool>? _refreshing;

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
            'client_id': _clientId,
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
      'client_id': _clientId,
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

  Future<bool> _refresh() async {
    final pending = _refreshing;
    if (pending != null) return pending.future;
    final refresh = TraktPref.refresh.value;
    if (refresh.isEmpty) return false;

    final done = _refreshing = Completer<bool>();
    try {
      final redirect = authRedirect('trakt');
      final data = await client.token('/oauth/token', {
        'refresh_token': refresh,
        'client_id': _clientId,
        'grant_type': 'refresh_token',
        'redirect_uri': redirect,
      });
      final ok = _store(data);
      done.complete(ok);
      return ok;
    } catch (e, st) {
      logError('TraktAuth', e, st);
      done.complete(false);
      return false;
    } finally {
      _refreshing = null;
    }
  }

  @override
  Future<void> refreshUser() =>
      shareRefresh(_loadUser, key: TraktPref.token.value);

  Future<void> _loadUser() async {
    if (!isLoggedIn) return;
    try {
      final data = await client.get('/users/me', query: {'extended': 'full'});
      if (data is! Map) return;
      final u = data.cast<String, dynamic>();

      Map<String, dynamic>? stats;
      try {
        final statsData = await client.get('/users/me/stats');
        if (statsData is Map) stats = statsData.cast<String, dynamic>();
      } catch (_) {}

      final traktUser = _mapUser(u, stats);
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

  TraktUser _mapUser(Map<String, dynamic> u, Map<String, dynamic>? stats) {
    final ids = (u['ids'] as Map?)?.cast<String, dynamic>() ?? const {};
    final id = (ids['trakt'] as num?)?.toInt() ?? 0;
    final username = u['username'] as String? ?? '$id';
    final name = (u['name'] as String?)?.isNotEmpty == true
        ? u['name'] as String
        : username;

    final images = u['images'] as Map?;
    final avatar = (images?['avatar'] as Map?)?['full'] as String?;

    final epStats = stats?['episodes'] as Map?;
    final movieStats = stats?['movies'] as Map?;
    final episodesWatched = (epStats?['watched'] as num?)?.toInt() ?? 0;
    final moviesWatched = (movieStats?['watched'] as num?)?.toInt() ?? 0;

    return TraktUser(
      id: id,
      name: name,
      username: username,
      avatar: avatar,
      episodesWatched: episodesWatched,
      moviesWatched: moviesWatched,
      joinedAt: u['joined_at'] as String?,
      location: u['location'] as String?,
      about: u['about'] as String?,
      vip: u['vip'] as bool? ?? false,
    );
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
