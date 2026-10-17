import '../../Logger.dart';
import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_all/webview_all.dart';

import '../../Core/NetworkManager/NetworkManager.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Core/State/State.dart';
import '../../Utils/Function.dart';
import '../../Widgets/Components/ScreenState.dart';

class WebViewState extends ScreenState {
  final String initialUrl;

  WebViewState(this.initialUrl);

  late final WebViewController controller = WebViewController();

  final url = ''.live;
  final title = ''.live;
  final canGoBack = false.live;
  final canGoForward = false.live;
  final isEditing = false.live;
  final progress = 0.0.live;
  final TextEditingController searchController = TextEditingController();
  final FocusNode addressFocus = FocusNode();

  final cookieManager = find<NetworkManager>().cookieManager;

  Future<void> _captureRealUserAgent() async {
    if (PrefName.fetchedUserAgent.value.isNotEmpty) return;
    try {
      final ua = await controller.getUserAgent();
      if (ua == null || ua.isEmpty) return;
      PrefName.fetchedUserAgent.value = ua;
      find<NetworkManager>().reinitialize();
    } catch (e, st) {
      logError('WebViewState', e, st);
    }
  }

  @override
  void onInit() {
    url.value = initialUrl;
    searchController.text = initialUrl;
    unawaited(_setUp());
  }

  Timer? _cookieSyncTimer;
  Timer? _cookieSyncRetryTimer;

  Future<void> _syncCookies(Uri url) async {
    _cookieSyncTimer?.cancel();
    _cookieSyncRetryTimer?.cancel();

    _cookieSyncTimer = Timer(const Duration(milliseconds: 200), () async {
      await cookieManager.readCookiesFromWebView(url);

      // Some native cookie stores haven't flushed a just-set cookie into
      // memory yet even 200ms after the triggering event - a second read
      // catches what the first one raced ahead of.
      _cookieSyncRetryTimer = Timer(const Duration(milliseconds: 500), () {
        cookieManager.readCookiesFromWebView(url);
      });
    });
  }

  Future<void> _setUp() async {
    final c = controller;
    await c.setJavaScriptMode(JavaScriptMode.unrestricted);
    await c.setBackgroundColor(Colors.transparent);
    await c.setNavigationDelegate(
      NavigationDelegate(
        onNavigationRequest: (_) => NavigationDecision.navigate,
        onPageStarted: (_) => unawaited(cookieManager.applyCookiesToWebView()),
        onProgress: (percent) => progress.value = percent / 100,
        onPageFinished: (url) async {
          progress.value = 1;
          await _syncCookies(Uri.parse(url));
          await _updateNavState();
        },
        onUrlChange: (change) async {
          final url = change.url;
          if (url == null) return;
          await _syncCookies(Uri.parse(url));
          await _updateNavState();
        },
      ),
    );
    unawaited(_captureRealUserAgent());
    final custom = PrefName.customUserAgent.value;
    if (custom.isNotEmpty) await c.setUserAgent(custom);
    await _injectFont();
    await cookieManager.applyCookiesToWebView();
    await c.loadRequest(Uri.parse(initialUrl));
  }

  Future<void> _injectFont() async {
    try {
      final fontData = await rootBundle.load('assets/fonts/poppins.ttf');
      final base64Font = base64Encode(fontData.buffer.asUint8List());
      await controller.addUserScript(
        WebViewUserScript(
          source:
              """
        const style = document.createElement('style');
        style.innerHTML = `
          @font-face {
            font-family: 'AppFont';
            src: url(data:font/ttf;base64,$base64Font) format('truetype');
          }
          * { font-family: 'AppFont', system-ui, -apple-system, sans-serif !important; }
        `;
        document.documentElement.appendChild(style);
      """,
        ),
      );
    } catch (e, st) {
      logError('WebViewState', e, st);
    }
  }

  Future<void> _updateNavState() async {
    if (!mounted) return;
    final c = controller;
    final results = await Future.wait([
      c.canGoBack(),
      c.canGoForward(),
      c.currentUrl(),
      c.getTitle(),
    ]);

    canGoBack.value = results[0] as bool;
    canGoForward.value = results[1] as bool;
    title.value = (results[3] as String?) ?? '';

    final current = results[2] as String?;
    if (current != null && !isEditing.value) {
      url.value = current;
      searchController.text = current;
    }
  }

  String normalizeUrl(String input) {
    final trimmed = input.trim();

    if (trimmed.startsWith('http://') || trimmed.startsWith('https://')) {
      return trimmed;
    }

    if (trimmed.contains('.') && !trimmed.contains(' ')) {
      return 'https://$trimmed';
    }

    final query = Uri.encodeComponent(trimmed);
    return 'https://www.google.com/search?q=$query';
  }

  Future<void> submitAddress(String value) async {
    final target = normalizeUrl(value);
    searchController.text = target;
    await controller.loadRequest(Uri.parse(target));
    FocusManager.instance.primaryFocus?.unfocus();
  }

  void startEditing() {
    isEditing.value = true;
    addressFocus.requestFocus();
    searchController.selection = TextSelection(
      baseOffset: 0,
      extentOffset: searchController.text.length,
    );
  }

  Future<void> goBack() async {
    await controller.goBack();
    await _updateNavState();
  }

  Future<void> goForward() async {
    await controller.goForward();
    await _updateNavState();
  }

  Future<void> reload() => controller.reload();

  void share() => shareLink(url.value);

  Future<void> openExternal() => openLinkInBrowser(url.value);

  Future<void> clearCookies() async {
    final uri = Uri.tryParse(await controller.currentUrl() ?? '');
    if (uri != null) {
      await cookieManager.deleteCookiesForDomain(uri.host);
      await controller.reload();
    }
  }

  @override
  void onClose() {
    addressFocus.dispose();
    searchController.dispose();
    _cookieSyncTimer?.cancel();
    _cookieSyncRetryTimer?.cancel();
    url.close();
    title.close();
    canGoBack.close();
    canGoForward.close();
    isEditing.close();
    progress.close();
  }
}
