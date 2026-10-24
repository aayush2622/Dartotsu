import '../../../Logger.dart';
import 'dart:async';

import 'package:flutter/material.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Core/Services/ServiceAuth.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/AlertDialogBuilder.dart';
import 'Client.dart';
import 'Data/User.dart';
import 'Mutations.dart';
import 'Prefs.dart';
import 'Queries.dart';

MangaUpdatesAuth get mangaUpdatesAuth => find<MangaUpdatesAuth>();

class MangaUpdatesAuth extends AppController
    with SharedRefresh
    implements ServiceAuth {
  static const _userCacheKey = 'mangaUpdatesUser';

  final token = MangaUpdatesPref.token.rx;

  @override
  final user = Live<ServiceUser?>(null);

  late final MangaUpdatesClient client = MangaUpdatesClient(() => token.value);

  late final MangaUpdatesQueries queries = MangaUpdatesQueries(
    client,
    refreshUser: () async {
      await refreshUser();
      return user.value != null;
    },
    onChapters: (chapters) {
      final current = user.value;
      if (current is MangaUpdatesUser && current.chaptersRead != chapters) {
        user.value = current.copyWith(chaptersRead: chapters);
      }
    },
  );

  late final MangaUpdatesMutations mutations = MangaUpdatesMutations(
    client,
    queries,
  );

  @override
  bool get isLoggedIn => token.value.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    final cached = PrefManager.getCustomType(
      _userCacheKey,
      MangaUpdatesUser.fromJson,
      location: PrefLocation.CACHE,
    );
    if (cached != null) user.value = cached;
    if (isLoggedIn) unawaited(refreshUser());
  }

  @override
  String? get tokenLoginUrl => null;

  @override
  bool get supportsTokenLogin => true;

  @override
  Future<bool> loginWithToken(String tokenStr) async {
    final clean = tokenStr.trim();
    if (clean.isEmpty) return false;
    token.value = clean;
    await refreshUser();
    return user.value != null;
  }

  @override
  Future<bool> login() async {
    final credentials = await _askCredentials();
    if (credentials == null) {
      snackString(getString.loginCancelled);
      return false;
    }
    try {
      final sessionToken = await client.login(
        credentials.$1,
        credentials.$2,
      );
      token.value = sessionToken;
      MangaUpdatesPref.username.value = credentials.$1;
      await refreshUser();
      return user.value != null;
    } on MangaUpdatesException catch (e) {
      snackString(getString.serviceError(getString.mangaUpdates, e.message));
      return false;
    } catch (e) {
      snackString(getString.loginFailed(e.toString()));
      return false;
    }
  }

  Future<(String, String)?> _askCredentials() {
    final context = appContext;
    if (context == null) return Future.value();
    final done = Completer<(String, String)?>();
    final name = TextEditingController(text: MangaUpdatesPref.username.value);
    final password = TextEditingController();

    AlertDialogBuilder(context)
      ..setTitle(getString.mangaUpdatesLoginTitle)
      ..setCustomView(
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: name,
              autofocus: true,
              keyboardType: TextInputType.text,
              autofillHints: const [AutofillHints.username],
              decoration: InputDecoration(hintText: getString.usernameOnly),
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
        final u = name.text.trim();
        if (u.isEmpty || password.text.isEmpty) return;
        if (!done.isCompleted) done.complete((u, password.text));
      })
      ..setNegativeButton(getString.cancel, null)
      ..show();

    return done.future;
  }

  @override
  Future<void> logout() async {
    await client.logout();
    token.value = '';
    user.value = null;
    PrefManager.deleteKey(_userCacheKey, location: PrefLocation.CACHE);
    queries.invalidateLibrary();
  }

  @override
  Future<void> refreshUser() async {
    if (!isLoggedIn) return;
    try {
      final res = await client.get('/account/profile');
      if (res['user_id'] == null) return;
      final avatarObj = res['avatar'];
      final avatarUrl = avatarObj is Map ? avatarObj['url'] as String? : null;

      final u = MangaUpdatesUser(
        id: (res['user_id'] as num).toInt(),
        name: '${res['username'] ?? ''}',
        avatar: avatarUrl,
        gender: res['gender'] as String?,
        profileUrl: res['url'] as String?,
      );

      user.value = u;
      PrefManager.setCustomType(
        _userCacheKey,
        u.toJson(),
        location: PrefLocation.CACHE,
      );
    } catch (e, st) {
      logError('Auth', e, st);
    }
  }
}
