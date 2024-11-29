import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';

class _RefreshController extends GetxController {
  var activity = <int, RxBool>{};

  void all() {
    activity.forEach((key, value) {
      activity[key]?.value = true;
    });
  }

  void allButNot(int k) {
    activity.forEach((key, value) {
      if (k == key) return;
      activity[key]?.value = true;
    });
  }

  RxBool getOrPut(int key, bool initialValue) {
    return activity.putIfAbsent(key, () => RxBool(initialValue));
  }
}

var Refresh = Get.put(_RefreshController(), permanent: true);

Future<void> snackString(
  String? s, {
  String? clipboard,
}) async {
  var context = navigatorKey.currentContext ?? Get.context;

  if (context != null && s != null && s.isNotEmpty) {
    var theme = Theme.of(context).colorScheme;

    try {
      final snackBar = SnackBar(
        content: GestureDetector(
          onTap: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
          onLongPress: () => copyToClipboard(clipboard ?? s),
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
    } catch (e, stackTrace) {
      debugPrint('Error showing SnackBar: $e');
      debugPrint(stackTrace.toString());
    }
  } else {
    debugPrint('No valid context or string provided.');
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

void shareLink(String link) {
  Share.share(link, subject: link);
}
