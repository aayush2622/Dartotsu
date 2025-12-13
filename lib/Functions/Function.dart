import 'dart:async';
import 'dart:ui';

import 'package:dartotsu/Theme/ThemeManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

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
  debugPrint('Showing SnackBar with message: $s');
  if (context != null && s != null && s.isNotEmpty) {
    var theme = Theme.of(context).colorScheme;
    try {
      final scaffoldMessenger = ScaffoldMessenger.of(context);
      scaffoldMessenger.hideCurrentSnackBar();
      final snackBar = SnackBar(
        backgroundColor: Colors.transparent,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.symmetric(horizontal: 12),
        elevation: 0,
        content: ThemedContainer(
          context: context,
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
        ).animate(
          effects: [
            const SlideEffect(
              begin: Offset(0, 1),
              end: Offset.zero,
              duration: Duration(milliseconds: 200),
            ),
          ],
        ),
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

void copyToClipboard(String text, {String? message}) {
  var context = Get.overlayContext;
  var theme = Theme.of(context!).colorScheme;
  Clipboard.setData(ClipboardData(text: text));
  debugPrint("Copied to clipboard: $text");
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message ?? 'Copied to clipboard',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: theme.onSurface,
        ),
      ),
      backgroundColor: theme.surface,
      duration: const Duration(milliseconds: 600),
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
  Navigator.of(context).push(
    PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 580),
      reverseTransitionDuration: const Duration(milliseconds: 480),
      pageBuilder: (_, animation, secondaryAnimation) => page,
      transitionsBuilder: (_, animation, secondaryAnimation, child) {
        final curved = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutExpo,
          reverseCurve: Curves.easeInExpo,
        );

        return AnimatedBuilder(
          animation: curved,
          builder: (context, _) {
            final blur = (1 - curved.value) * 8;
            final slideX = (1 - curved.value) * 80;
            final angle = (1 - curved.value) * 0.12;
            final opacity = curved.value;
            return Opacity(
              opacity: opacity,
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()
                  ..translate(slideX)
                  ..rotateY(angle),
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: blur,
                    sigmaY: blur,
                  ),
                  child: child,
                ),
              ),
            );
          },
        );
      },
    ),
  );
}

void shareLink(String link) => SharePlus.instance.share(
      ShareParams(uri: Uri.parse(link), downloadFallbackEnabled: true),
    );

void shareFile(String path, String text) => SharePlus.instance.share(
      ShareParams(
          text: text, files: [XFile(path)], downloadFallbackEnabled: true),
    );

List<T> mergeMapValues<T>(Map<String, List<T>> dataMap) {
  final Set<T> uniqueItems = {};

  for (var itemList in dataMap.values) {
    uniqueItems.addAll(itemList);
  }

  return uniqueItems.toList();
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

extension KotlinStd<T> on T {
  R let<R>(R Function(T it) block) => block(this);

  T also(void Function(T it) block) {
    block(this);
    return this;
  }
}
