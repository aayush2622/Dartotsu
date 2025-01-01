import 'package:dartotsu/api/Discord/Discord.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_windows/webview_windows.dart';

import '../../Functions/Function.dart';
import 'DiscordService.dart';

class WindowsLogin extends StatefulWidget {
  const WindowsLogin({super.key});

  @override
  WindowsLoginState createState() => WindowsLoginState();
}

class WindowsLoginState extends State<WindowsLogin> {
  final WebviewController _controller = WebviewController();
  bool _isWebViewReady = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _initializeWebView();
  }

  Future<void> _initializeWebView() async {
    try {
      await _controller.initialize();
      _controller.url.listen((url) {
        if (url != 'https://discord.com/login') {
          _extractToken();
        }
      });
      await _controller.loadUrl('https://discord.com/login');
      setState(() => _isWebViewReady = true);
    } catch (e) {
      _handleError('WebView initialization failed: $e');
    }
  }

  Future<void> _extractToken() async {
    final result = await _controller.executeScript("""
      (function() {
        const wreq = (webpackChunkdiscord_app.push([[''],{},e=>{m=[];for(let c in e.c)m.push(e.c[c])}]),m)
          .find(m=>m?.exports?.default?.getToken!==void 0).exports.default.getToken();
        return wreq;
      })();
    """);

    if (result != null && result != 'null') {
      _login(result);
    } else {
      _handleError('Failed to retrieve token');
    }
  }

  bool _gotToken = false;

  void _login(String token) async {
    if (_gotToken) return;
    _gotToken = true;
    Discord.saveToken(token);
    snackString("Getting Data");
    DiscordService.testRpc();
    Navigator.of(context).pop();
  }

  void _handleError(String message) {
    setState(() => _errorMessage = message);
    snackString(message);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isWebViewReady
          ? Webview(_controller)
          : Center(
              child: _errorMessage != null
                  ? Text(_errorMessage!)
                  : const CircularProgressIndicator(),
            ),
    );
  }
}

class MobileLogin extends StatefulWidget {
  const MobileLogin({super.key});

  @override
  MobileLoginState createState() => MobileLoginState();
}

class MobileLoginState extends State<MobileLogin> {
  late final WebViewController _controller;
  bool _isWebViewReady = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _initializeWebView();
  }

  Future<void> _initializeWebView() async {
    try {
      _controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..setNavigationDelegate(
          NavigationDelegate(
            onPageFinished: (String url) async {
              if (url != 'https://discord.com/login') {
                _extractToken();
              }
            },
            onNavigationRequest: (NavigationRequest request) {
              if (request.url.startsWith('https://discord.com/login')) {
                return NavigationDecision.prevent;
              }
              return NavigationDecision.navigate;
            },
          ),
        )
        ..loadRequest(Uri.parse('https://discord.com/login'));
      setState(() => _isWebViewReady = true);
    } catch (e) {
      _handleError('WebView initialization failed: $e');
    }
  }

  Future<void> _extractToken() async {
    await Future.delayed(const Duration(seconds: 2));
    final result = (await _controller.runJavaScriptReturningResult('''
                  (function() {
                    const wreq = (webpackChunkdiscord_app.push([[''],{},e=>{m=[];for(let c in e.c)m.push(e.c[c])}]),m)
                      .find(m=>m?.exports?.default?.getToken!==void 0).exports.default.getToken();
                    return wreq;
                  })();
                ''')).toString();

    if (result.isNotEmpty && result != 'null') {
      _login(result.trim().replaceAll('"', ''));
    } else {
      _handleError('Failed to retrieve token');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isWebViewReady
          ? WebViewWidget(controller: _controller)
          : Center(
              child: _errorMessage != null
                  ? Text(_errorMessage!)
                  : const CircularProgressIndicator()),
    );
  }

  void _handleError(String message) {
    setState(() => _errorMessage = message);
    snackString(message);
    Navigator.of(context).pop();
  }

  void _login(String token) async {
    snackString("Logged in successfully");
    Discord.saveToken(token);
    snackString("Getting Data");
    DiscordService.testRpc();
    Navigator.of(context).pop();
  }
}
