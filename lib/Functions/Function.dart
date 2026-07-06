import 'dart:async';

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

OverlayEntry? _snackOverlay;
void snackString(
  String? message, {
  String? clipboard,
  BuildContext? c,
  IconData? icon,
  bool simple = false,
  Widget? child,
}) {
  final context = c ?? Get.overlayContext ?? Get.context;
  if (context == null || message == null || message.isEmpty) return;

  final theme = Theme.of(context);

  _snackOverlay?.remove();
  _snackOverlay = null;

  _snackOverlay = OverlayEntry(
    builder: (_) => SafeArea(
      child:
          IgnorePointer(
                ignoring: false,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 12, 24),
                    child: IntrinsicWidth(
                      child: Material(
                        color: Colors.transparent,
                        child: ThemedContainer(
                          context: context,
                          borderRadius: BorderRadius.circular(18),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 14,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              icon == null
                                  ? ClipOval(
                                      child: Image.asset(
                                        'assets/images/logo.png',
                                        width: 20,
                                        height: 20,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : Icon(
                                      icon,
                                      size: 20,
                                      color: theme.colorScheme.primary,
                                    ),
                              const SizedBox(width: 12),
                              Flexible(
                                fit: FlexFit.loose,
                                child: Text(
                                  message,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: context.textTheme.bodyLarge?.copyWith(
                                    height: 1.25,
                                  ),
                                ),
                              ),
                              SizedBox(width: simple ? 0 : 8),
                              if (!simple) ...[
                                const SizedBox(width: 8),
                                IconButton(
                                  constraints: const BoxConstraints(),
                                  padding: EdgeInsets.zero,
                                  visualDensity: VisualDensity.compact,
                                  icon: Icon(
                                    Icons.copy_rounded,
                                    size: 18,
                                    color: theme.colorScheme.onSurface
                                        .withOpacity(0.5),
                                  ),
                                  onPressed: () {
                                    _snackOverlay?.remove();
                                    _snackOverlay = null;
                                    copyToClipboard(clipboard ?? message);
                                  },
                                ),
                                IconButton(
                                  constraints: const BoxConstraints(),
                                  padding: EdgeInsets.zero,
                                  visualDensity: VisualDensity.compact,
                                  icon: Icon(
                                    Icons.close_rounded,
                                    size: 18,
                                    color: theme.colorScheme.onSurface
                                        .withOpacity(0.5),
                                  ),
                                  onPressed: () {
                                    _snackOverlay?.remove();
                                    _snackOverlay = null;
                                  },
                                ),
                              ],
                              if (child != null) ...[
                                const SizedBox(width: 8),
                                child,
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
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
    ),
  );

  final overlayState =
      Get.key.currentState?.overlay ??
      Navigator.of(context, rootNavigator: true).overlay;

  if (overlayState == null) return;

  overlayState.insert(_snackOverlay!);

  Future.delayed(const Duration(seconds: 4), () {
    _snackOverlay?.remove();
    _snackOverlay = null;
  });
}

void copyToClipboard(String text) {
  var context = Get.overlayContext;
  var theme = Theme.of(context!).colorScheme;
  Clipboard.setData(ClipboardData(text: text));
  debugPrint("Copied to clipboard: $text");
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
  Navigator.push(context, MaterialPageRoute(builder: (context) => page));
}

void shareLink(String link) => SharePlus.instance.share(
  ShareParams(uri: Uri.parse(link), downloadFallbackEnabled: true),
);

void shareFile(String path, String text) => SharePlus.instance.share(
  ShareParams(text: text, files: [XFile(path)], downloadFallbackEnabled: true),
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
