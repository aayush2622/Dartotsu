import 'package:dartotsu/Api/Discord/Discord.dart';
import 'package:dartotsu_extension_bridge/extension_bridge.dart';
import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../../Functions/Function.dart';
import 'DiscordService.dart';

class MobileLogin extends StatefulWidget {
  const MobileLogin({super.key});

  @override
  MobileLoginState createState() => MobileLoginState();
}

class MobileLoginState extends State<MobileLogin> {
  late InAppWebViewController _controller;

  Future<void> _extractToken() async {
    if (!mounted) return;
    await Future.delayed(const Duration(seconds: 2));
    try {
      final result = await _controller.evaluateJavascript(source: '''
  (function() {
    return window.LOCAL_STORAGE.getItem('token');
  })()
''');

      if (result != null && result != 'null') {
        _login(result.trim().replaceAll('"', ''));
      } else {
        _handleError('Failed to retrieve token');
      }
    } catch (e) {
      _handleError('Error extracting token: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Discord Login'),
          backgroundColor: Colors.transparent,
        ),
        body: InAppWebView(
          webViewEnvironment: webViewEnvironment,
          initialUrlRequest: URLRequest(
            url: WebUri('https://discord.com/login'),
          ),
          initialOptions: InAppWebViewGroupOptions(
            crossPlatform: InAppWebViewOptions(
              javaScriptEnabled: true,
            ),
          ),
          onLoadStart: (controller, url) async {
            await controller.evaluateJavascript(source: '''
            try {
              window.LOCAL_STORAGE = localStorage;
            } catch (e) {}
          ''');
          },
          onWebViewCreated: (controller) {
            _controller = controller;
            _clearDiscordData();
          },
          onUpdateVisitedHistory: (controller, url, isReload) async {
            if (url.toString() != 'https://discord.com/login' &&
                url.toString() != 'about:blank') {
              await _extractToken();
            }
          },
          shouldOverrideUrlLoading: (controller, navigationAction) async {
            final url = navigationAction.request.url.toString();
            if (url.startsWith('https://discord.com/login')) {
              return NavigationActionPolicy.CANCEL;
            }
            return NavigationActionPolicy.ALLOW;
          },
        ));
  }

  Future<void> _clearDiscordData() async {
    await _controller.evaluateJavascript(source: '''
      if (window.location.hostname === 'discord.com') {
        window.LOCAL_STORAGE.clear();
        window.sessionStorage.clear();
      }
    ''');
  }

  void _handleError(String message) {
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

class LinuxLogin extends StatefulWidget {
  const LinuxLogin({super.key});

  @override
  LinuxLoginState createState() => LinuxLoginState();
}

class LinuxLoginState extends State<LinuxLogin> {
  late Webview _controller;

  @override
  void initState() {
    super.initState();
    _initializeWebview();
  }

  Future<void> _initializeWebview() async {
    _controller = await WebviewWindow.create();

    _controller
      ..setBrightness(Brightness.dark)
      ..launch('https://discord.com/login');

    await Future.delayed(const Duration(milliseconds: 1000));

    await _controller
        .evaluateJavaScript('''window.LOCAL_STORAGE = window.localStorage;
    Object.keys(window.localStorage);''');
    _controller.addOnUrlRequestCallback(
      (String url) async {
        if (url != 'https://discord.com/login' && url != 'about:blank') {
          await _extractToken();
        }
      },
    );
  }

  Future<void> _extractToken() async {
    try {
      final result = await _controller.evaluateJavaScript('''
  (function() {
    return window.LOCAL_STORAGE.getItem('token');
  })()
''');

      if (result != null && result != 'null') {
        _login(result.trim().replaceAll('"', ''));
      } else {
        _handleError('Failed to retrieve token');
      }
    } catch (e) {
      _handleError('Error extracting token: $e');
    }
  }

  void _handleError(String message) {
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

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discord Login'),
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Text('Launching webview for Discord Login...'),
      ),
    );
  }
}
