
import 'package:dantotsu/Functions/Function.dart';
import 'package:dantotsu/api/Discord/Discord.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_windows/webview_windows.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
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
      setState(() {
        _isWebViewReady = true;
      });
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
    snackString("Logged in successfully");
    Discord.saveToken(token);
    Navigator.of(context).pop();
  }

  void _handleError(String message) {
    setState(() {
      _errorMessage = message;
    });
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
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

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    // Initialize the WebViewController and set up configuration
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
          },
          onPageStarted: (String url) {
          },
          onPageFinished: (String url) async {
            if (url != 'https://discord.com/login') {
              await Future.delayed(const Duration(seconds: 2));
              final result = await _controller.runJavaScriptReturningResult('''
                  (function() {
                    const wreq = (webpackChunkdiscord_app.push([[''],{},e=>{m=[];for(let c in e.c)m.push(e.c[c])}]),m).find(m=>m?.exports?.default?.getToken!==void 0).exports.default.getToken();
                    return wreq;
                  })();
                ''');
              final String? token = result as String?;
              if (token != null && token != 'null') {
                _login(token.trim().replaceAll('"', ''));
              } else {
                snackString("Failed to retrieve token");
              }
            }
          },
          onHttpError: (HttpResponseError error) {
          },
          onWebResourceError: (WebResourceError error) {
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: _controller),
    );
  }
  void _login(String token) async {
    snackString("Logged in successfully");
    Discord.saveToken(token);
    Navigator.of(context).pop();
  }
}
