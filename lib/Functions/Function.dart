import 'dart:async';

import 'package:dartotsu/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Animation/SlideUpAnimation.dart';
import '../Theme/Colors.dart';
import '../Theme/ThemeProvider.dart';

class _RefreshController extends GetxController {
  var activity = <int, RxBool>{};

  void all() {
    activity.forEach((key, value) {
      activity[key]?.value = true;
    });
  }

  void refreshService(RefreshId group) {
    for (var id in group.ids) {
      activity[id]?.value = true;
    }
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

enum RefreshId {
  Anilist,
  Mal,
  Kitsu,
  Simkl,
  Extensions;

  List<int> get ids => List.generate(5, (index) => baseId + index);

  int get baseId {
    switch (this) {
      case RefreshId.Anilist:
        return 10;
      case RefreshId.Mal:
        return 20;
      case RefreshId.Kitsu:
        return 30;
      case RefreshId.Simkl:
        return 40;
      case RefreshId.Extensions:
        return 50;
    }
  }

  int get animePage => baseId;

  int get mangaPage => baseId + 1;

  int get homePage => baseId + 2;
}

var Refresh = Get.put(_RefreshController(), permanent: true);

Future<void> snackString(
  String? s, {
  String? clipboard,
  BuildContext? c,
}) async {
  var context = c ?? Get.context;
  Logger.log('Showing SnackBar with message: $s');
  if (context != null && s != null && s.isNotEmpty) {
    var theme = Theme.of(context).colorScheme;
    try {
      final scaffoldMessenger = ScaffoldMessenger.of(context);
      scaffoldMessenger.hideCurrentSnackBar();
      final themeNotifier = Provider.of<ThemeNotifier>(context, listen: false);
      final snackBar = SnackBar(
        backgroundColor: themeNotifier.isDarkMode ? greyNavDark : greyNavLight,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.zero,
        elevation: 0,
        content: SlideUpAnimation(
          child: GestureDetector(
            onTap: () => scaffoldMessenger.hideCurrentSnackBar(),
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
        ),
        duration: const Duration(seconds: 2),
      );

      scaffoldMessenger.showSnackBar(snackBar);
    } catch (e, stackTrace) {
      debugPrint('Error showing SnackBar: $e');
      debugPrint(stackTrace.toString());
    }
  } else {
    debugPrint('No valid context or string provided.');
  }
}

void copyToClipboard(String text) {
  var context = Get.overlayContext;
  var theme = Theme.of(context!).colorScheme;
  Clipboard.setData(ClipboardData(text: text));
  Logger.log("Copied to clipboard: $text");
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
      duration: const Duration(milliseconds: 300),
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

void navigateToPage(BuildContext context, Widget page, {bool header = true}) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

void shareLink(String link) => SharePlus.instance.share(
      ShareParams(
        uri: Uri.parse(link),
        downloadFallbackEnabled: true,
      ),
    );

void shareFile(String path, String text) => SharePlus.instance.share(
      ShareParams(
        text: text,
        files: [XFile(path)],
        downloadFallbackEnabled: true,
      ),
    );

List<T> mergeMapValues<T>(Map<String, List<T>> dataMap) {
  final Set<T> uniqueItems = {};

  for (var itemList in dataMap.values) {
    uniqueItems.addAll(itemList);
  }

  return uniqueItems.toList();
}
