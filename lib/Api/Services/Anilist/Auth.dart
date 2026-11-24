import 'dart:async';

import '../../../Core/Services/Api/BrowserAuth.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/ServiceAuth.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Prefs.dart';
import 'Mutations.dart';
import 'Queries.dart';
import 'Data/User.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';

AnilistAuth get anilistAuth => find<AnilistAuth>();

class AnilistAuth extends AppController
    with SharedRefresh
    implements ServiceAuth {
  static const _mobileClientId = '14959';
  static const _desktopClientId = '53220';
  static String get _clientId =>
      authClientId(mobile: _mobileClientId, desktop: _desktopClientId);
  static String _authUrl(String redirect) =>
      'https://anilist.co/api/v2/oauth/authorize'
      '?client_id=$_clientId&response_type=token';
  static const _userCacheKey = 'anilistUser';

  final token = AnilistPref.token.rx;

  @override
  final user = Live<ServiceUser?>(null);

  final loading = false.live;

  late final AnilistClient client = AnilistClient(() => token.value);

  late final AnilistQueries queries = AnilistQueries(
    client,
    userId: () => user.value?.id,
    listPrefs: () {
      final current = user.value;
      return current is AnilistUser
          ? (rowOrder: current.rowOrder, titleLanguage: current.titleLanguage)
          : (rowOrder: 'updatedAt', titleLanguage: 'ENGLISH');
    },
    refreshUser: () async {
      await refreshUser();
      return user.value != null;
    },
  );

  late final AnilistMutations mutations = AnilistMutations(
    client,
    userId: () => user.value?.id,
  );

  @override
  bool get isLoggedIn => token.value.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    final cached = PrefManager.getCustomType(
      _userCacheKey,
      AnilistUser.fromJson,
      location: PrefLocation.CACHE,
    );
    if (cached != null) user.value = cached;
    if (isLoggedIn) unawaited(refreshUser());
  }

  @override
  Future<bool> login() async {
    try {
      final redirect = authRedirect(
        'anilist',
        scheme: _clientId == _mobileClientId ? 'dantotsu' : 'dartotsu',
      );
      final result = await browserAuthenticate(
        url: _authUrl(redirect),
        redirect: redirect,
      );
      final match = RegExp(r'access_token=([^&]+)').firstMatch(result);
      final token = match?.group(1);
      if (token == null || token.isEmpty) {
        snackString(getString.loginCancelled);
        return false;
      }
      return await loginWithToken(token);
    } catch (e) {
      snackString(getString.loginFailed(e.toString()));
      return false;
    }
  }

  @override
  String get tokenLoginUrl =>
      'https://anilist.co/api/v2/oauth/authorize?client_id=21003&response_type=token';

  @override
  bool get supportsTokenLogin => true;

  @override
  Future<bool> loginWithToken(String newToken) async {
    token.value = newToken.trim();
    await refreshUser();
    final ok = user.value != null;
    if (!ok) {
      token.value = '';
      snackString(getString.invalidToken);
    }
    return ok;
  }

  @override
  Future<void> refreshUser() => shareRefresh(_loadUser, key: token.value);

  Future<void> _loadUser() async {
    if (!isLoggedIn) return;
    loading.value = true;
    try {
      final data = await client.query(_viewerQuery, showErrors: false);
      final viewer = data['Viewer'] as Map<String, dynamic>?;
      if (viewer == null) return;
      final parsed = AnilistUser.fromViewer(viewer);
      user.value = parsed;
      AnilistPref.displayAdult.value = parsed.adultContent;
      PrefManager.setCustomType(
        _userCacheKey,
        parsed,
        (u) => u.toJson(),
        location: PrefLocation.CACHE,
      );
    } on AnilistException {
      // leave the cached user in place
    } finally {
      loading.value = false;
    }
  }

  Future<bool> updateSettings(Map<String, dynamic> changes) async {
    final ok = await mutations.updateSettings(changes);
    if (ok) await refreshUser();
    return ok;
  }

  @override
  void logout() {
    token.value = '';
    user.value = null;
    PrefManager.removeCustomVal(_userCacheKey, location: PrefLocation.CACHE);
  }

  static const _viewerQuery = '''
query {
  Viewer {
    id name about bannerImage
    avatar { large medium }
    unreadNotificationCount
    options {
      displayAdultContent titleLanguage staffNameLanguage activityMergeTime
      airingNotifications restrictMessagesToFollowing timezone
    }
    mediaListOptions {
      scoreFormat rowOrder
      animeList { customLists }
      mangaList { customLists }
    }
    statistics { anime { episodesWatched } manga { chaptersRead } }
  }
}
''';
}
