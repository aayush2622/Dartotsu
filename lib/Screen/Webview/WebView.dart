import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

import '../../Core/NetworkManager/NetworkManager.dart';
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
  final cookieManager = find<NetworkManager>().cookieManager;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _url.value = widget.url;
    _searchController.text = widget.url;
  }

  Future<void> _updateNavState() async {
    final controller = _controller;
    if (controller == null) return;

    _canGoBack.value = await controller.canGoBack();
    _canGoForward.value = await controller.canGoForward();

    final currentUrl = await controller.getUrl();
    if (currentUrl != null) {
      final url = currentUrl.toString();
      _url.value = url;
      if (!_isEditing.value) {
        _searchController.text = url;
      }
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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        title: Obx(() {
          if (_isEditing.value) {
            return TextField(
              controller: _searchController,
              autofocus: true,
              textInputAction: TextInputAction.go,
              decoration: const InputDecoration(
                hintText: 'Search or enter URL',
                border: InputBorder.none,
                isDense: true,
              ),
              style: const TextStyle(fontSize: 13),
              onSubmitted: (value) async {
                final url = normalizeUrl(value);
                _isEditing.value = false;
                _searchController.text = url;
                await _controller?.loadUrl(
                  urlRequest: URLRequest(url: WebUri(url)),
                );
              },
              onEditingComplete: () {
                _isEditing.value = false;
              },
            );
          }

          return GestureDetector(
            onTap: () {
              _searchController.text = _url.value;
              _isEditing.value = true;
            },
            child: Text(
              _title.value.isNotEmpty ? _title.value : _url.value,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 13),
            ),
          );
        }),
        actions: [
          Obx(
            () => IconButton(
              icon: const Icon(Icons.arrow_back),
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
              icon: const Icon(Icons.arrow_forward),
              onPressed: _canGoForward.value
                  ? () async {
                      await _controller?.goForward();
                      await _updateNavState();
                    }
                  : null,
            ),
          ),
          PopupMenuButton(
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
                  await CookieManager.instance().deleteAllCookies();
                  break;
              }
            },
            itemBuilder: (_) => const [
              PopupMenuItem(value: 0, child: Text('Refresh')),
              PopupMenuItem(value: 1, child: Text('Share')),
              PopupMenuItem(value: 2, child: Text('Open in browser')),
              PopupMenuItem(value: 3, child: Text('Clear cookies')),
            ],
          ),
        ],
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri(widget.url),
        ),
        initialSettings: InAppWebViewSettings(
          javaScriptEnabled: true,
          domStorageEnabled: true,
          useShouldOverrideUrlLoading: true,
          mediaPlaybackRequiresUserGesture: false,
          allowsInlineMediaPlayback: true,
          isInspectable: true,
        ),
        onWebViewCreated: (controller) async {
          _controller = controller;
          await cookieManager.applyCookiesToWebView(
              WebUri(widget.url), controller);
          await _updateNavState();
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
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _controller = null;
    super.dispose();
  }
}
