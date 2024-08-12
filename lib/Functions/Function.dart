import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Main.dart';

Future<void> snackString(
    String? s, {
      String? clipboard,
    }) async {
  var context = navigatorKey.currentContext;
  var theme = Theme.of(context!).colorScheme;
  try {
    if (s != null) {
      final snackBar = SnackBar(
        content: GestureDetector(
          onTap: () {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
          },
          onLongPress: () {
            copyToClipboard(clipboard ?? s);
          },
          child: Text(
            s,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: theme.onSurface,
            ),
          ),
        ),
        backgroundColor: theme.surface,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 32,
          left: 32,
          right: 32,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        duration: const Duration(seconds: 2),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  } catch (e, stackTrace) {
    debugPrint(e.toString());
    debugPrint(stackTrace.toString());
  }
}

void copyToClipboard(String text) {
  var context = navigatorKey.currentContext;
  var theme = Theme.of(context!).colorScheme;
  Clipboard.setData(ClipboardData(text: text));
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        'Copied to clipboard',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: theme.onSurface,
        ),
      ),
      backgroundColor: theme.surface,
      duration: const Duration(milliseconds: 45),
    ),
  );
}

Future<void> openLinkInBrowser(String url) async {
  var uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
    debugPrint('Opening $url in your browser!');
  } else {
    debugPrint('Oops! I couldn\'t open $url. Maybe it\'s broken?');
  }
}

void navigateToPage(BuildContext context, Widget page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

Future<bool> imageLoaded(String? imageUrl) async {
  // to render images then remove progress bar

  if (imageUrl == null) return false;
  final Completer<bool> completer = Completer();
  final Image image = Image.network(imageUrl);
  final ImageStreamListener listener =
      ImageStreamListener((ImageInfo info, bool syncCall) {
    completer.complete(true);
  }, onError: (dynamic exception, StackTrace? stackTrace) {
    completer.complete(false);
  });
  image.image.resolve(const ImageConfiguration()).addListener(listener);
  return completer.future;
}
