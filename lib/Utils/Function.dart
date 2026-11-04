import 'package:collection/collection.dart';

import 'dart:async';

import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Logger.dart';

Future<void> openLinkInBrowser(String url) async {
  var uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
    logger('Opening $url in your browser!');
  } else {
    logger(
      'Oops! I couldn\'t open $url. Maybe it\'s broken?',
      logLevel: LogLevel.error,
    );
  }
}

void shareLink(String link) => SharePlus.instance.share(
  ShareParams(uri: Uri.parse(link), downloadFallbackEnabled: true),
);

void shareText(String text) =>
    SharePlus.instance.share(ShareParams(text: text));

void shareFile(String path, String text) => SharePlus.instance.share(
  ShareParams(text: text, files: [XFile(path)], downloadFallbackEnabled: true),
);

String? webUrl(String? raw) {
  final value = raw?.trim();
  if (value == null || value.isEmpty) return null;
  final uri = Uri.tryParse(value);
  if (uri == null || !uri.hasAuthority || uri.host.isEmpty) return null;
  return uri.scheme == 'http' || uri.scheme == 'https' ? value : null;
}

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

const kDonateUrl = 'https://www.buymeacoffee.com/aayush262';
const kUpiId = 'aayush2622@ybl';
const kUpiPayUrl =
    'https://intradeus.github.io/http-protocol-redirector/?r=upi://pay?pa=$kUpiId&tn=Thanks%20for%20this%20amazing%20app!%20Much%20love%20to%20Dartotsu';

String formatBytes(int bytes) {
  if (bytes < 1024) return '$bytes B';
  if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
  return '${(bytes / 1024 / 1024).toStringAsFixed(1)} MB';
}

extension KotlinStd<T> on T {
  R let<R>(R Function(T it) block) => block(this);

  T also(void Function(T it) block) {
    block(this);
    return this;
  }
}
