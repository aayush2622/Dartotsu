import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openLinkInBrowser(String url) async {
  var uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
    debugPrint('Opening $url in your browser!');
  } else {
    debugPrint('Oops! I couldn\'t open $url. Maybe it\'s broken?');
  }
}

void shareLink(String link) => SharePlus.instance.share(
      ShareParams(uri: Uri.parse(link), downloadFallbackEnabled: true),
    );

void shareFile(String path, String text) => SharePlus.instance.share(
      ShareParams(
          text: text, files: [XFile(path)], downloadFallbackEnabled: true),
    );

Future<String?> loadEnv(String prop) async {
  try {
    final envString = await rootBundle.loadString('.env');
    final env = envString
        .split('\n')
        .firstWhereOrNull((element) => element.startsWith(prop));
    return env?.split('=')[1].trim();
  } catch (e) {
    return null;
  }
}

extension KotlinStd<T> on T {
  R let<R>(R Function(T it) block) => block(this);

  T also(void Function(T it) block) {
    block(this);
    return this;
  }
}
