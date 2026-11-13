import '../../../Logger.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rhttp/rhttp.dart';

import '../../../Core/NetworkManager/NetworkManager.dart';
import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/ServiceAuth.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';
import 'Client.dart';
import 'Data/Mapper.dart';
import 'Data/User.dart';
import 'Mutations.dart';
import 'Prefs.dart';
import 'Queries.dart';

KitsuAuth get kitsuAuth => find<KitsuAuth>();

class KitsuAuth extends AppController
    with SharedRefresh
    implements ServiceAuth {
  static const _userCacheKey = 'kitsuUser';

  final token = KitsuPref.token.rx;

  @override
  final user = Live<ServiceUser?>(null);

  late final KitsuClient client = KitsuClient(() => token.value, _refresh);

  int? get _userId => user.value?.id;

  late final KitsuQueries queries = KitsuQueries(client, userId: () => _userId);

  late final KitsuMutations mutations = KitsuMutations(
    client,
    userId: () => _userId,
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
      KitsuUser.fromJson,
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
    final credentials = await _askCredentials();
    if (credentials == null) {
      snackString(getString.loginCancelled);
      return false;
    }
    try {
      final ok = await _exchange({
        'grant_type': 'password',
        'username': credentials.$1,
        'password': credentials.$2,
      });
      if (!ok) {
        snackString(getString.kitsuLoginFailed);
        return false;
      }
      await refreshUser();
      return user.value != null;
    } catch (e) {
      snackString(getString.loginFailed(e.toString()));
      return false;
    }
  }

  Future<(String, String)?> _askCredentials() {
    final context = appContext;
    if (context == null) return Future.value();
    final done = Completer<(String, String)?>();
    final name = TextEditingController();
    final password = TextEditingController();
    AlertDialogBuilder(context)
      ..setTitle(getString.kitsuLoginTitle)
      ..setCustomView(
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: name,
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              autofillHints: const [AutofillHints.username],
              decoration: InputDecoration(hintText: getString.emailOrUsername),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: password,
              obscureText: true,
              autofillHints: const [AutofillHints.password],
              decoration: InputDecoration(hintText: getString.password),
            ),
          ],
        ),
      )
      ..setOnDismissListener(() {
        if (!done.isCompleted) done.complete();
        name.dispose();
        password.dispose();
      })
      ..setPositiveButton(getString.login, () {
        final user = name.text.trim();
        if (user.isEmpty || password.text.isEmpty) return;
        if (!done.isCompleted) done.complete((user, password.text));
      })
      ..setNegativeButton(getString.cancel, null)
      ..show();
    return done.future;
  }

  Future<bool> _exchange(Map<String, String> form) async {
    final res = await find<NetworkManager>().post(
      kitsuTokenUrl,
      data: HttpBody.form(form),
    );
    final data = res.data;
    if (res.statusCode != 200 || data is! Map) return false;
    token.value = data['access_token'] as String? ?? '';
    KitsuPref.refresh.value = data['refresh_token'] as String? ?? '';
    final seconds = (data['expires_in'] as num?)?.toInt() ?? 2592000;
    KitsuPref.expiresAt.value =
        DateTime.now().millisecondsSinceEpoch + seconds * 1000;
    return token.value.isNotEmpty;
  }

  Future<bool> _refresh() async {
    final pending = _refreshing;
    if (pending != null) return pending.future;
    final refresh = KitsuPref.refresh.value;
    if (refresh.isEmpty) return false;
    final done = _refreshing = Completer<bool>();
    try {
      final ok = await _exchange({
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
      shareRefresh(_loadUser, key: KitsuPref.token.value);

  Future<void> _loadUser() async {
    if (!isLoggedIn) return;
    if (DateTime.now().millisecondsSinceEpoch > KitsuPref.expiresAt.value) {
      await _refresh();
    }
    try {
      final doc = JsonApi(
        await client.get('/users', query: {'filter[self]': 'true'}),
      );
      final node = doc.data.firstOrNull;
      if (node == null) return;
      final a = attrs(node);
      final previous = user.value is KitsuUser ? user.value as KitsuUser : null;
      var parsed = KitsuUser(
        id: int.parse('${node['id']}'),
        name: a['name'] as String? ?? '',
        slug: a['slug'] as String? ?? '',
        avatar: kitsuImage(a['avatar'], const ['large', 'original', 'medium']),
        banner: kitsuImage(a['coverImage'], const ['large', 'original']),
        episodesWatched: previous?.episodesWatched ?? 0,
        chaptersRead: previous?.chaptersRead ?? 0,
        titleLanguage: a['titleLanguagePreference'] as String? ?? 'canonical',
        ratingSystem: a['ratingSystem'] as String? ?? 'regular',
        contentFilter: a['sfwFilterPreference'] as String? ?? 'sfw',
        shareToGlobal: a['shareToGlobal'] as bool? ?? true,
        timeZone: a['timeZone'] as String?,
        country: a['country'] as String?,
        language: a['language'] as String?,
      );
      user.value = parsed;
      _cache(parsed);
      parsed = parsed.withCounts(
        episodes: await queries.consumed(true),
        chapters: await queries.consumed(false),
      );
      user.value = parsed;
      _cache(parsed);
    } on KitsuException {
      // keep the cached user
    }
  }

  Future<bool> updateSettings(Map<String, dynamic> attributes) async {
    final id = user.value?.id;
    if (id == null) return false;
    try {
      await client.patch('/users/$id', {
        'data': {'type': 'users', 'id': '$id', 'attributes': attributes},
      });
      await refreshUser();
      return true;
    } on KitsuException {
      return false;
    }
  }

  void _cache(KitsuUser u) => PrefManager.setCustomType(
    _userCacheKey,
    u,
    (v) => v.toJson(),
    location: PrefLocation.CACHE,
  );

  @override
  void logout() {
    token.value = '';
    KitsuPref.refresh.value = '';
    KitsuPref.expiresAt.value = 0;
    user.value = null;
    queries.clearLibrary();
    PrefManager.removeCustomVal(_userCacheKey, location: PrefLocation.CACHE);
  }
}
