import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Main.dart';

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
                duration: const Duration(seconds: 1),
              ),
            );
            Clipboard.setData(ClipboardData(text: clipboard ?? s));
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
          left: 16,
          right: 16,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  } catch (e, stackTrace) {
    debugPrint(e.toString());
    debugPrint(stackTrace.toString());
  }
}

Future<bool> imageLoaded(String? imageUrl) async {
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
