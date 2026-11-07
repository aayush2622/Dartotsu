import 'dart:async';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Services/ServiceAuth.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Logger.dart';
import '../../../Screen/Webview/WebView.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'Client.dart';
import 'Data/Parser.dart';
import 'Data/User.dart';
import 'Mutations.dart';
import 'Prefs.dart';
import 'Queries.dart';

const animePlanetLoginUrl = 'https://www.anime-planet.com/login';

AnimePlanetAuth get animePlanetAuth => find<AnimePlanetAuth>();

class AnimePlanetAuth extends AppController
    with SharedRefresh
    implements ServiceAuth {
  final username = AnimePlanetPref.username.rx;

  @override
  final user = Live<ServiceUser?>(null);

  late final AnimePlanetClient client = AnimePlanetClient();

  late final AnimePlanetQueries queries = AnimePlanetQueries(
    client,
    username: () => username.value,
    onCounts: (episodes, chapters) {
      final current = user.value;
      if (current is AnimePlanetUser) {
        user.value = current.copyWith(
          episodesWatched: episodes < 0 ? null : episodes,
          chaptersRead: chapters < 0 ? null : chapters,
        );
      }
    },
  );

  late final AnimePlanetMutations mutations = AnimePlanetMutations(
    client,
    queries,
  );

  @override
  bool get isLoggedIn => username.value.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    if (isLoggedIn) {
      user.value = AnimePlanetUser(name: username.value);
      unawaited(refreshUser());
    }
  }

  @override
  String? get tokenLoginUrl => null;

  @override
  bool get supportsTokenLogin => false;

  @override
  Future<bool> loginWithToken(String token) async => false;

  @override
  Future<bool> login() async {
    final context = appContext;
    if (context == null || !context.mounted) return false;
    await navigateToPage<void>(
      context,
      const WebView(url: animePlanetLoginUrl),
    );
    client.clear();
    final name = await _detect();
    if (name == null) {
      snackString(getString.loginCancelled);
      return false;
    }
    username.value = name;
    user.value = AnimePlanetUser(name: name);
    queries.clearLibrary();
    snackString('${getString.loggedIn}: $name');
    logger('Signed in to Anime-Planet as $name', tag: 'ANIMEPLANET');
    return true;
  }

  Future<String?> _detect() async {
    try {
      final body = await client.page('/', cache: Duration.zero);
      return parseAnimePlanetUser(body);
    } catch (e, st) {
      logError('AnimePlanetAuth', e, st);
      return null;
    }
  }

  @override
  Future<void> logout() async {
    await find<NetworkManager>().cookieManager.deleteCookiesForDomain(
      'anime-planet.com',
    );
    client.clear();
    username.value = '';
    user.value = null;
    queries.clearLibrary();
  }

  @override
  Future<void> refreshUser() => shareRefresh(() async {
    if (!isLoggedIn) return;
    final name = await _detect();
    if (name == null) {
      logger(
        'The Anime-Planet session is no longer signed in',
        tag: 'ANIMEPLANET',
        logLevel: LogLevel.warning,
      );
      username.value = '';
      user.value = null;
      queries.clearLibrary();
      return;
    }
    if (name != username.value) username.value = name;
    final current = user.value;
    user.value = current is AnimePlanetUser && current.name == name
        ? current
        : AnimePlanetUser(name: name);
  }, key: username.value);
}
