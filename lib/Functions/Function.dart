import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Theme/ThemeManager.dart';
import 'Extensions/ContextExtensions.dart';

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
  String? message, {
  String? clipboard,
  BuildContext? c,
  IconData icon = Icons.info_rounded,
}) async {
  final context = c ?? Get.context;
  if (context == null || message == null || message.isEmpty) return;

  final theme = Theme.of(context);
  final scaffold = ScaffoldMessenger.of(context);

  scaffold.hideCurrentSnackBar();

  final snackBar = SnackBar(
    backgroundColor: Colors.transparent,
    behavior: SnackBarBehavior.floating,
    elevation: 0,
    margin: const EdgeInsets.fromLTRB(12, 0, 12, 24),
    duration: const Duration(seconds: 4),
    dismissDirection: DismissDirection.down,
    content: ThemedContainer(
      context: context,
      borderRadius: BorderRadius.circular(18),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: scaffold.hideCurrentSnackBar,
        onLongPress: () => copyToClipboard(clipboard ?? message),
        child: Row(
          children: [
            Icon(
              icon,
              size: 20,
              color: theme.colorScheme.primary,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                message,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: ContextExtensions(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(height: 1.25),
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              Icons.close_rounded,
              size: 18,
              color: theme.colorScheme.onSurface.withOpacity(0.5),
            ),
          ],
        ),
      ),
    )
        .animate()
        .fadeIn(duration: 150.ms)
        .slideY(begin: 0.4, curve: Curves.easeOutCubic)
        .scale(
          begin: const Offset(0.96, 0.96),
          curve: Curves.easeOutBack,
        ),
  );

  scaffold.showSnackBar(snackBar);
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
