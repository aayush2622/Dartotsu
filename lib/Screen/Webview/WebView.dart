import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_all/webview_all.dart';

import '../../Core/NetworkManager/NetworkManager.dart';
import '../../Core/Preferences/PrefManager.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Function.dart';
import '../../Core/State/State.dart';

class WebView extends StatefulWidget {
  final String url;

  const WebView({super.key, required this.url});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late final WebViewController _controller = WebViewController();

  final _url = ''.live;
  final _title = ''.live;
  final _canGoBack = false.live;
  final _canGoForward = false.live;
  final _isEditing = false.live;
  final _progress = 0.0.live;
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _addressFocus = FocusNode();

  final cookieManager = find<NetworkManager>().cookieManager;

  Future<void> _captureRealUserAgent() async {
    if (PrefName.fetchedUserAgent.value.isNotEmpty) return;
    try {
      final ua = await _controller.getUserAgent();
      if (ua == null || ua.isEmpty) return;
      PrefName.fetchedUserAgent.value = ua;
      find<NetworkManager>().reinitialize();
    } catch (_) {}
  }

  @override
  void initState() {
    super.initState();
    _url.value = widget.url;
    _searchController.text = widget.url;
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
    final c = _controller;
    await c.setJavaScriptMode(JavaScriptMode.unrestricted);
    await c.setBackgroundColor(Colors.transparent);
    await c.setNavigationDelegate(
      NavigationDelegate(
        onNavigationRequest: (_) => NavigationDecision.navigate,
        onPageStarted: (_) => unawaited(cookieManager.applyCookiesToWebView()),
        onProgress: (progress) => _progress.value = progress / 100,
        onPageFinished: (url) async {
          _progress.value = 1;
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
    await _injectFont();
    await cookieManager.applyCookiesToWebView();
    await c.loadRequest(Uri.parse(widget.url));
  }

  Future<void> _injectFont() async {
    try {
      final fontData = await rootBundle.load('assets/fonts/poppins.ttf');
      final base64Font = base64Encode(fontData.buffer.asUint8List());
      await _controller.addUserScript(
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
    } catch (_) {}
  }

  Future<void> _updateNavState() async {
    if (!mounted) return;
    final c = _controller;
    final results = await Future.wait([
      c.canGoBack(),
      c.canGoForward(),
      c.currentUrl(),
      c.getTitle(),
    ]);

    _canGoBack.value = results[0] as bool;
    _canGoForward.value = results[1] as bool;
    _title.value = (results[3] as String?) ?? '';

    final url = results[2] as String?;
    if (url != null && !_isEditing.value) {
      _url.value = url;
      _searchController.text = url;
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

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;

    return Scaffold(
      backgroundColor: scheme.surface,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: scheme.surface,
        foregroundColor: scheme.onSurface,
        leading: IconButton(
          icon: const Icon(Icons.close_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        title: _buildAddressSurface(),
        actions: [
          _buildNavigationButtons(),
          _buildPopupMenu(),
          const SizedBox(width: 8),
        ],
      ),
      body: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        child: Container(
          color: context.colorScheme.surface,
          child: _buildWebView(),
        ),
      ),
    );
  }

  Widget _buildAddressSurface() {
    final scheme = context.colorScheme;
    final uri = Uri.tryParse(_url.value);
    final isHttps = uri?.scheme == 'https';
    return Watch(() {
      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 180),
        child: Container(
          key: ValueKey(_isEditing.value),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 44,
          decoration: BoxDecoration(
            color: scheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(16),
          ),
          alignment: Alignment.center,
          child: _isEditing.value
              ? _buildAddressFieldInline()
              : MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      _isEditing.value = true;
                      _addressFocus.requestFocus();
                      _searchController.selection = TextSelection(
                        baseOffset: 0,
                        extentOffset: _searchController.text.length,
                      );
                    },
                    child: Row(
                      children: [
                        Icon(
                          isHttps ? Icons.lock_outline : Icons.info_outline,
                          size: 16,
                          color: isHttps
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.error,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            _title.value.isNotEmpty ? _title.value : _url.value,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: ContextExtensions(
                              context,
                            ).theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      );
    });
  }

  Widget _buildAddressFieldInline() {
    return Focus(
      onFocusChange: (hasFocus) {
        if (!hasFocus) {
          _isEditing.value = false;
        }
      },
      child: TextField(
        controller: _searchController,
        focusNode: _addressFocus,
        style: ContextExtensions(context).textTheme.bodyMedium,
        autofocus: true,
        textInputAction: TextInputAction.go,
        decoration: const InputDecoration(
          hintText: 'Search or enter URL',
          border: InputBorder.none,
          isDense: true,
        ),
        onSubmitted: (value) async {
          final url = normalizeUrl(value);
          _searchController.text = url;
          await _controller.loadRequest(Uri.parse(url));
          FocusManager.instance.primaryFocus?.unfocus();
        },
      ),
    );
  }

  Widget _buildNavigationButtons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Watch(
          () => IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            onPressed: _canGoBack.value
                ? () async {
                    await _controller.goBack();
                    await _updateNavState();
                  }
                : null,
          ),
        ),
        Watch(
          () => IconButton(
            icon: const Icon(Icons.arrow_forward_ios_rounded),
            onPressed: _canGoForward.value
                ? () async {
                    await _controller.goForward();
                    await _updateNavState();
                  }
                : null,
          ),
        ),
      ],
    );
  }

  Widget _buildPopupMenu() {
    return PopupMenuButton<int>(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      icon: const Icon(Icons.more_vert),
      onSelected: (value) async {
        switch (value) {
          case 0:
            await _controller.reload();
            break;
          case 1:
            shareLink(_url.value);
            break;
          case 2:
            await openLinkInBrowser(_url.value);
            break;
          case 3:
            final uri = Uri.tryParse(await _controller.currentUrl() ?? '');
            if (uri != null) {
              await cookieManager.deleteCookiesForDomain(uri.host);
              await _controller.reload();
            }
            break;
        }
      },
      itemBuilder: (_) => const [
        PopupMenuItem(value: 0, child: Text('Refresh')),
        PopupMenuItem(value: 1, child: Text('Share')),
        PopupMenuItem(value: 2, child: Text('Open in browser')),
        PopupMenuItem(value: 3, child: Text('Clear cookies')),
      ],
    );
  }

  Widget _buildWebView() {
    return Stack(
      children: [
        WebViewWidget(controller: _controller),
        Watch(
          () => _progress.value < 1.0
              ? AnimatedOpacity(
                  opacity: _progress.value < 1.0 ? 1 : 0,
                  duration: const Duration(milliseconds: 300),
                  child: LinearProgressIndicator(
                    value: _progress.value,
                    minHeight: 2,
                  ),
                )
              : const SizedBox(),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _addressFocus.dispose();
    _searchController.dispose();
    _cookieSyncTimer?.cancel();
    _cookieSyncRetryTimer?.cancel();
    _url.close();
    _title.close();
    _canGoBack.close();
    _canGoForward.close();
    _isEditing.close();
    _progress.close();
    super.dispose();
  }
}
