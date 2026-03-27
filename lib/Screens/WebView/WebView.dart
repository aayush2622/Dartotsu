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

  const WebView({
    super.key,
    required this.url,
  });

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

    final uri = Uri.tryParse(trimmed);

    if (uri != null && uri.hasScheme) return trimmed;

    if (trimmed.contains('.') && !trimmed.contains(' ')) {
      return 'https://$trimmed';
    }

    return 'https://www.google.com/search?q=${Uri.encodeComponent(trimmed)}';
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
          color: context.colorScheme.primary,
        ),
        title: _buildAddressSurface(),
        actions: [
          _buildNavigationButtons(),
          _buildPopupMenu(),
          const SizedBox(width: 8),
        ],
      ),
      body: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(24),
        ),
        child: Container(
          color: scheme.surface,
          child: _buildWebView(),
        ),
      ),
    );
  }

  Widget _buildWebView() {
    return Stack(
      children: [
        InAppWebView(
          initialUrlRequest: URLRequest(
            url: WebUri(widget.url),
          ),
          initialSettings: InAppWebViewSettings(
            javaScriptEnabled: true,
            domStorageEnabled: true,
            useShouldOverrideUrlLoading: true,
            mediaPlaybackRequiresUserGesture: false,
            allowsInlineMediaPlayback: true,
            darkMode: true,
            algorithmicDarkeningAllowed: true,
          ),
          pullToRefreshController: _pullToRefreshController,
          onWebViewCreated: (controller) async {
            _controller = controller;
            await cookieManager.applyCookiesToWebView(
              WebUri(widget.url),
              controller,
            );
            await _updateNavState();
            final fontData = await rootBundle.load('assets/fonts/poppins.ttf');
            final base64Font = base64Encode(fontData.buffer.asUint8List());

            await controller.addUserScript(
              userScript: UserScript(
                injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
                source: '''
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
          onLoadStart: (_, url) async {
            if (url != null) {
              await cookieManager.applyCookiesToWebView(url, _controller);
            }
          },
          onProgressChanged: (_, progress) => _progress.value = progress / 100,
          onLoadStop: (_, url) async {
            if (url != null) {
              await cookieManager.readCookiesFromWebView(url, _controller);
            }
            await _updateNavState();
          },
          shouldOverrideUrlLoading: (_, action) async {
            final url = action.request.url;
            if (url != null) {
              await cookieManager.applyCookiesToWebView(url, _controller);
            }
            return NavigationActionPolicy.ALLOW;
          },
          onUpdateVisitedHistory: (_, url, ___) async {
            if (url != null) {
              await cookieManager.readCookiesFromWebView(url, _controller);
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

  Widget _buildAddressSurface() {
    final uri = Uri.tryParse(_url.value);
    final isHttps = uri?.scheme == 'https';
    final host = uri?.host ?? _url.value;
    return Obx(
      () {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 44,
          decoration: BoxDecoration(
            color: context.colorScheme.surfaceVariant,
            borderRadius: BorderRadius.circular(16),
          ),
          alignment: Alignment.center,
          child: _isEditing.value
              ? TextField(
                  controller: _searchController,
                  focusNode: _addressFocus,
                  autofocus: true,
                  textInputAction: TextInputAction.go,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search or enter URL",
                  ),
                  onSubmitted: (value) async {
                    FocusScope.of(context).unfocus();

                    final url = normalizeUrl(value);
                    await _controller?.loadUrl(
                      urlRequest: URLRequest(url: WebUri(url)),
                    );

                    _isEditing.value = false;
                  },
                )
              : GestureDetector(
                  onTap: () {
                    _isEditing.value = true;
                    _addressFocus.requestFocus();
                  },
                  child: Row(
                    children: [
                      Icon(
                        isHttps ? Icons.lock_outline : Icons.info_outline,
                        size: 16,
                        color: context.colorScheme.primary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          style:
                              ContextExtensions(context).textTheme.titleMedium,
                          _title.value.isNotEmpty ? _title.value : host,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }

  Widget _buildNavigationButtons() {
    return Row(
      children: [
        Obx(
          () => IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: _canGoBack.value
                  ? context.colorScheme.primary
                  : context.colorScheme.onSurfaceVariant,
            ),
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
            icon: Icon(
              Icons.arrow_forward_ios_rounded,
              color: _canGoForward.value
                  ? context.colorScheme.primary
                  : context.colorScheme.onSurfaceVariant,
            ),
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
      iconColor: context.colorScheme.primary,
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
              cookieManager.deleteCookiesForDomain(uri.uriValue);
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

  @override
  void dispose() {
    _addressFocus.dispose();
    _searchController.dispose();
    super.dispose();
  }
}
