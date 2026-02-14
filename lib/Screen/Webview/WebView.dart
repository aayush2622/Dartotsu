import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

import '../../Core/NetworkManager/NetworkManager.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Function.dart';
import '../../Utils/Functions/GetXFunctions.dart';

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

  final TextEditingController _searchController = TextEditingController();
  final FocusNode _addressFocus = FocusNode();

  final cookieManager = find<NetworkManager>().cookieManager;

  @override
  void initState() {
    super.initState();
    _url.value = widget.url;
    _searchController.text = widget.url;
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
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
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
                          style: ContextExtensions(context)
                              .theme
                              .textTheme
                              .bodyMedium,
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
          await _controller?.loadUrl(
            urlRequest: URLRequest(url: WebUri(url)),
          );
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
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

  Widget _buildWebView() {
    return InAppWebView(
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
      onWebViewCreated: (controller) async {
        _controller = controller;
        await cookieManager.applyCookiesToWebView(
          WebUri(widget.url),
          controller,
        );
        await _updateNavState();
        final fontData =
            await rootBundle.load('assets/fonts/poppins_semi_bold.ttf');
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
    );
  }

  @override
  void dispose() {
    _addressFocus.dispose();
    _searchController.dispose();
    _controller = null;
    super.dispose();
  }
}
