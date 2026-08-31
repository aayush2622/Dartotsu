import 'dart:async';

import 'package:flutter_web_auth_2/flutter_web_auth_2.dart';
import 'package:get/get.dart';

import '../../../Core/Preferences/PrefManager.dart';
import '../../../Utils/Functions/SnackBar.dart';
import 'AnilistClient.dart';
import 'AnilistUser.dart';

class AnilistAuth extends GetxController {
  static const _clientId = '14959';
  static const _callbackScheme = 'dantotsu';
  static const _authUrl =
      'https://anilist.co/api/v2/oauth/authorize'
      '?client_id=$_clientId&response_type=token';

  static const _userCacheKey = 'anilistUser';

  final token = PrefName.anilistToken.rx;
  final user = Rxn<AnilistUser>();
  final loading = false.obs;

  late final AnilistClient client = AnilistClient(() => token.value);

  bool get isLoggedIn => token.value.isNotEmpty;

  @override
  void onInit() {
    super.onInit();
    final cached = PrefManager.getCustomType(_userCacheKey, AnilistUser.fromJson);
    if (cached != null) user.value = cached;
    if (isLoggedIn) unawaited(refreshUser());
  }

  Future<bool> login() async {
    try {
      final result = await FlutterWebAuth2.authenticate(
        url: _authUrl,
        callbackUrlScheme: _callbackScheme,
        options: const FlutterWebAuth2Options(
          windowName: 'Dartotsu',
          useWebview: true,
        ),
      );
      final match =
          RegExp(r'access_token=([^&]+)').firstMatch(result);
      final token = match?.group(1);
      if (token == null || token.isEmpty) {
        snackString('Login cancelled');
        return false;
      }
      return applyToken(token);
    } catch (e) {
      snackString('Login failed: $e');
      return false;
    }
  }

  Future<bool> applyToken(String newToken) async {
    token.value = newToken.trim();
    final ok = await refreshUser();
    if (!ok) {
      token.value = '';
      snackString('Invalid token');
    }
    return ok;
  }

  Future<bool> refreshUser() async {
    if (!isLoggedIn) return false;
    loading.value = true;
    try {
      final data = await client.query(_viewerQuery, showErrors: false);
      final viewer = data['Viewer'] as Map<String, dynamic>?;
      if (viewer == null) return false;
      final parsed = AnilistUser.fromViewer(viewer);
      user.value = parsed;
      PrefManager.setCustomType(_userCacheKey, parsed, (u) => u.toJson());
      return true;
    } on AnilistException {
      return false;
    } finally {
      loading.value = false;
    }
  }

  void logout() {
    token.value = '';
    user.value = null;
    PrefManager.removeCustomVal(_userCacheKey);
  }

  static const _viewerQuery = '''
query {
  Viewer {
    id
    name
    about
    bannerImage
    avatar { large medium }
    unreadNotificationCount
    options { displayAdultContent titleLanguage }
    mediaListOptions { scoreFormat }
    statistics {
      anime { episodesWatched }
      manga { chaptersRead }
    }
  }
}
''';
}
