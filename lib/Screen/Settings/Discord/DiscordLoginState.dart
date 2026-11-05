import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_all/webview_all.dart';

import '../../../Api/Discord/Mobile/TokenManager.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Logger.dart';
import '../../../Utils/Functions/SnackBar.dart';
import '../../../Widgets/Components/ScreenState.dart';

class DiscordLoginState extends ScreenState {
  static const loginUrl = 'https://discord.com/login';

  final controller = WebViewController();
  final progress = 0.0.live;

  bool _done = false;
  bool _checking = false;
  Timer? _poll;
  String _url = '';

  @override
  void onInit() {
    unawaited(_setUp());
  }

  Future<void> _setUp() async {
    final c = controller;
    await c.setJavaScriptMode(JavaScriptMode.unrestricted);
    await c.setBackgroundColor(Colors.transparent);
    try {
      await c.clearLocalStorage();
      await c.clearCache();
    } catch (e, st) {
      logError('DiscordLogin', e, st);
    }
    await c.addUserScript(const WebViewUserScript(source: _guardScript));
    await c.setNavigationDelegate(
      NavigationDelegate(
        onProgress: (percent) => progress.value = percent / 100,
        onPageFinished: (url) {
          progress.value = 1;
          unawaited(_check(url));
        },
        onUrlChange: (change) {
          final url = change.url;
          if (url != null) unawaited(_check(url));
        },
      ),
    );
    await c.loadRequest(Uri.parse(loginUrl));
  }

  @override
  void onClose() {
    _poll?.cancel();
    super.onClose();
  }

  Future<void> _check(String url) async {
    _url = url;
    _poll ??= Timer.periodic(const Duration(seconds: 3), (_) {
      if (_url.isNotEmpty) unawaited(_check(_url));
    });
    if (_done || _checking || !mounted) return;
    final uri = Uri.tryParse(url);
    if (uri == null || uri.host != 'discord.com') return;
    if (uri.path.startsWith('/login') || uri.path.startsWith('/register')) {
      return;
    }
    _checking = true;
    try {
      final token = await _readToken();
      if (token == null || token.isEmpty) return;
      _done = true;
      MobileTokenManager.saveAuthToken(token);
      await MobileTokenManager().clear();
      snackString(getString.discordTokenSavedSnack);
      if (mounted) pop();
    } catch (e, st) {
      logError('DiscordLogin', e, st);
    } finally {
      _checking = false;
    }
  }

  Future<String?> _readToken() async {
    for (final source in _readScripts) {
      try {
        final result = await controller.runJavaScriptReturningResult(source);
        final token = _clean('$result');
        if (token.isNotEmpty) return token;
      } catch (_) {}
    }
    return null;
  }

  static String _clean(String raw) {
    var t = raw.trim();
    while (t.length >= 2 && (t.startsWith('"') || t.startsWith("'"))) {
      t = t.substring(1, t.length - 1).trim();
    }
    t = t.replaceAll(r'\"', '');
    if (t == 'null' || t == 'undefined' || t == 'false' || t == 'true') {
      return '';
    }
    return t;
  }

  static const _guardScript = '''
try {
  window.__dartotsuStorage = window.localStorage;
  var remove = Storage.prototype.removeItem;
  Storage.prototype.removeItem = function (k) {
    if (k === 'token') return;
    return remove.apply(this, arguments);
  };
} catch (e) {}
''';

  static const _readScripts = [
    "(function(){try{var t=window.__dartotsuStorage&&window.__dartotsuStorage.getItem('token');return t?String(t):'';}catch(e){return '';}})()",
    "(function(){try{var f=document.createElement('iframe');document.body.appendChild(f);var v=f.contentWindow.localStorage.getItem('token');f.remove();return v?String(v):'';}catch(e){return '';}})()",
    "(function(){try{var r;window.webpackChunkdiscord_app.push([[Symbol()],{},function(q){r=q;}]);var t='';for(var k in r.c){var m=r.c[k].exports;if(m&&m.default&&typeof m.default.getToken==='function'){t=m.default.getToken();if(t)break;}if(m&&typeof m.getToken==='function'){t=m.getToken();if(t)break;}}return t?String(t):'';}catch(e){return '';}})()",
  ];
}
