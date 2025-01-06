import 'package:dantotsu/api/Discord/Discord.dart';
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
    await Future.delayed(const Duration(seconds: 2));
    try {
      final result = await _controller.evaluateJavascript(source: '''
        (function() {
          const wreq = (webpackChunkdiscord_app.push([[''], {}, e => { m = []; for (let c in e.c) m.push(e.c[c]) }]), m)
            .find(m => m?.exports?.default?.getToken !== void 0).exports.default.getToken();
          return wreq;
        })();
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
      appBar: AppBar(title: const Text('Discord Login'),backgroundColor: Colors.transparent,),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
          url: WebUri('https://discord.com/login'),
        ),
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
            javaScriptEnabled: true,
          ),
        ),
        onWebViewCreated: (controller) {
          _controller = controller;
          _clearDiscordData();
        },
        onUpdateVisitedHistory: (controller, url,isReload) async {
          if (url.toString() != 'https://discord.com/login') {
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
      )

    );
  }
  Future<void> _clearDiscordData() async {
    await _controller.evaluateJavascript(source: '''
      if (window.location.hostname === 'discord.com') {
        window.localStorage.clear();
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
