import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

import '../../Functions/Extensions/ContextExtensions.dart';
import '../../Functions/Function.dart';
import '../../NetworkManager/NetworkManager.dart';

class WebView extends StatefulWidget {
  final String url;

  const WebView({super.key, required this.url});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  InAppWebViewController? _controller;

  final _url = ''.obs;
  final _title = ''.obs;
  final _canGoBack = false.obs;
  final _canGoForward = false.obs;
  final _isEditing = false.obs;
  final _progress = 0.0.obs;
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _addressFocus = FocusNode();

  final cookieManager = Get.find<NetworkManager>().cookieManager;
  PullToRefreshController? _pullToRefreshController;
  @override
  void initState() {
    super.initState();
    _url.value = widget.url;
    _searchController.text = widget.url;
    if (Platform.isAndroid || Platform.isIOS) {
      _pullToRefreshController = PullToRefreshController(
        onRefresh: () async {
          await _controller?.reload();
        },
      );
    } else {
      _pullToRefreshController = null;
    }
  }

  Timer? _cookieSyncTimer;

  Future<void> _syncCookies(WebUri url) async {
    _cookieSyncTimer?.cancel();

    _cookieSyncTimer = Timer(const Duration(milliseconds: 200), () async {
      await cookieManager.readCookiesFromWebView(url, _controller);
    });
  }

  Future<void> _updateNavState() async {
    final c = _controller;
    if (c == null) return;

    final results = await Future.wait([
      c.canGoBack(),
      c.canGoForward(),
      c.getUrl(),
    ]);

    _canGoBack.value = results[0] as bool;
    _canGoForward.value = results[1] as bool;

    final url = results[2] as WebUri?;
    if (url != null && !_isEditing.value) {
      _url.value = url.toString();
      _searchController.text = _url.value;
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
    return Obx(() {
      return AnimatedSwitcher(
        duration: const Duration(milliseconds: 180),
        child: Container(
          key: ValueKey(_isEditing.value),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 44,
          decoration: BoxDecoration(
            color: scheme.surfaceVariant,
            borderRadius: BorderRadius.circular(16),
          ),
          alignment: Alignment.center,
          child: _isEditing.value
              ? _buildAddressFieldInline()
              : GestureDetector(
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
          await _controller?.loadUrl(urlRequest: URLRequest(url: WebUri(url)));
          FocusManager.instance.primaryFocus?.unfocus();
        },
      ),
    );
  }

  Widget _buildNavigationButtons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Obx(
          () => IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            onPressed: _canGoBack.value
                ? () async {
                    await _controller?.goBack();
                    await _updateNavState();
                  }
                : null,
          ),
        ),
        Obx(
          () => IconButton(
            icon: const Icon(Icons.arrow_forward_ios_rounded),
            onPressed: _canGoForward.value
                ? () async {
                    await _controller?.goForward();
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
            await _controller?.reload();
            break;
          case 1:
            shareLink(_url.value);
            break;
          case 2:
            await openLinkInBrowser(_url.value);
            break;
          case 3:
            final uri = await _controller?.getUrl();
            if (uri != null) {
              await cookieManager.deleteCookiesForDomain(uri.host);
              await _controller?.reload();
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
        InAppWebView(
          initialUrlRequest: URLRequest(url: WebUri(widget.url)),
          initialSettings: InAppWebViewSettings(
            javaScriptEnabled: true,
            domStorageEnabled: true,
            useShouldOverrideUrlLoading: true,
            mediaPlaybackRequiresUserGesture: false,
            allowsInlineMediaPlayback: true,
            darkMode: true,
            algorithmicDarkeningAllowed: true,
            thirdPartyCookiesEnabled: true,
            cacheEnabled: true,
          ),
          pullToRefreshController: _pullToRefreshController,
          onWebViewCreated: (controller) async {
            _controller = controller;

            await cookieManager.applyCookiesToWebView(controller);

            await _updateNavState();
            final fontData = await rootBundle.load('assets/fonts/poppins.ttf');
            final base64Font = base64Encode(fontData.buffer.asUint8List());

            await controller.addUserScript(
              userScript: UserScript(
                injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
                source:
                    '''
        (function () {
          const style = document.createElement('style');
          style.innerHTML = `
            @font-face {
              font-family: 'AppFont';
              src: url(data:font/ttf;base64,$base64Font) format('truetype');
              font-weight: normal;
              font-style: normal;
            }

            * {
              font-family: 'AppFont', system-ui, -apple-system, BlinkMacSystemFont, sans-serif !important;
            }
          `;
          document.documentElement.appendChild(style);
        })();
      ''',
              ),
            );
          },
          onLoadResource: (_, _) async {
            final url = await _controller?.getUrl();
            if (url != null) {
              await _syncCookies(url);
            }
          },
          shouldInterceptFetchRequest: (controller, fetchRequest) async {
            final res = await Get.find<NetworkManager>().get(
              fetchRequest.url.toString(),
              headers: {
                for (final e in (fetchRequest.headers ?? {}).entries)
                  e.key: e.value,
              },
            );

            return FetchRequest(
              url: fetchRequest.url,
              method: fetchRequest.method,
              headers: {
                for (final e in res.headers.entries) e.key: e.value.join(','),
              },
              body: res.rawBytes,
            );
          },
          shouldInterceptRequest: (controller, request) async {
            final res = await Get.find<NetworkManager>().get(
              request.url.toString(),
              headers: request.headers,
            );

            return WebResourceResponse(
              data: res.rawBytes,
              statusCode: res.statusCode,
              reasonPhrase: res.statusMessage,
              headers: {
                for (final e in res.headers.entries) e.key: e.value.join(','),
              },
              contentType: res.headers['content-type']?.first,
            );
          },
          onReceivedHttpAuthRequest: (_, _) async {
            final url = await _controller?.getUrl();
            if (url != null) {
              await _syncCookies(url);
            }
            return null;
          },
          onLoadStart: (_, url) async {
            if (url != null) {
              await cookieManager.applyCookiesToWebView(_controller);
            }
          },
          onProgressChanged: (_, progress) => _progress.value = progress / 100,
          onLoadStop: (_, url) async {
            if (url != null) {
              await _syncCookies(url);
            }
            await _updateNavState();
          },
          shouldOverrideUrlLoading: (_, action) async {
            return NavigationActionPolicy.ALLOW;
          },
          onUpdateVisitedHistory: (_, url, _) async {
            if (url != null) {
              await _syncCookies(url);
            }
            await _updateNavState();
          },
          onTitleChanged: (_, title) => _title.value = title ?? '',
        ),
        Obx(
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
    _controller = null;
    _cookieSyncTimer?.cancel();
    super.dispose();
  }
}
