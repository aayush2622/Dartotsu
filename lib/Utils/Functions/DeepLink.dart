import 'package:collection/collection.dart';

import 'dart:async';
import 'dart:io';

import 'package:app_links/app_links.dart';
import 'package:dartotsu_extension_bridge/ExtensionManager.dart';
import 'package:flutter/widgets.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

import '../../Core/Services/Api/BrowserAuth.dart';
import '../../Core/Security/AppLock.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../Extensions/StringExtensions.dart';
import 'DeepLinkHandlers.dart';
import 'SnackBar.dart';
import 'WindowProtocol.dart';

export 'DeepLinkHandlers.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';

class DeepLink {
  static final handlers = <DeepLinkHandler>[
    ExtensionRepoLinks(),
    ServiceLinks(),
  ];

  static void Function(List<String> paths)? playFiles;
  static void Function(List<String> paths)? readFiles;

  static void register(DeepLinkHandler handler) => handlers.insert(0, handler);

  static void init() {
    _initIntentListener();
    _initDeepLinkListener();
  }

  static void openFiles(List<String> paths) {
    if (paths.isEmpty) return;
    find<AppLock>().run(() {
      bool reads(String a) {
        final lower = a.toLowerCase();
        return lower.endsWith('.epub') || lower.endsWith('.pdf');
      }

      final books = paths.where(reads);
      final rest = paths.where((a) => !reads(a));
      if (books.isNotEmpty) readFiles?.call(books.toList());
      if (rest.isEmpty) return;
      final play = playFiles;
      if (play == null) return snackString(getString.playerNotAvailable);
      play(rest.toList());
    });
  }

  static void initVideoIntentListener(List<String> args) => openFiles(
    args
        .where(
          (a) =>
              File(a).existsSync() &&
              (a.isMediaVideo() || a.toLowerCase().endsWith('.epub')),
        )
        .toList(),
  );

  static void _initIntentListener() async {
    if (!Platform.isAndroid) return;

    final intent = ReceiveSharingIntent.instance;

    void handleFiles(List<SharedMediaFile> files) {
      final paths = <String>[];
      for (final file in files) {
        final value = file.path.trim();
        if (value.isEmpty) continue;
        final isLink =
            file.type == SharedMediaType.url ||
            file.type == SharedMediaType.text;
        final uri = Uri.tryParse(value);
        if (isLink || (uri != null && uri.hasScheme && uri.scheme.length > 1)) {
          if (uri != null && uri.hasScheme) {
            if (value.toLowerCase().startsWith('magnet:')) {
              paths.add(value);
            } else {
              unawaited(_dispatch(uri));
            }
          }
          continue;
        }
        paths.add(value);
      }
      openFiles(paths);
    }

    intent.getMediaStream().listen(handleFiles);

    final initialFiles = await intent.getInitialMedia();
    if (initialFiles.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => handleFiles(initialFiles),
      );
      await intent.reset();
    }
  }

  static Set<String> get _schemes => {
    ...appSchemes,
    for (final m in find<ExtensionManager>().managers) ...m.schemes,
    for (final s in find<MediaServiceController>().services) ...s.linkSchemes,
  };

  static void _initDeepLinkListener() async {
    if (Platform.isWindows) {
      _schemes.forEach(registerProtocolHandler);
      for (var e in videoExtensions) {
        registerFileAssociation(
          '.$e',
          'Dartotsu.Video',
          description: 'Dartotsu Video File',
        );
      }
      for (var e in audioExtensions) {
        registerFileAssociation(
          '.$e',
          'Dartotsu.Audio',
          description: 'Dartotsu Audio File',
        );
      }
    }
    final appLink = AppLinks();
    try {
      final initialUri = await appLink.getInitialLink();
      if (initialUri != null) unawaited(_dispatch(initialUri));
    } catch (err) {
      snackString(getString.deepLinkInitialError(err.toString()));
    }

    appLink.uriLinkStream.listen(
      (uri) => unawaited(_dispatch(uri)),
      onError: (err) =>
          snackString(getString.deepLinkOpenError(err.toString())),
    );
  }

  static String? _lastLink;
  static DateTime _lastLinkAt = DateTime.fromMillisecondsSinceEpoch(0);

  static bool _duplicate(Uri uri) {
    final now = DateTime.now();
    final same =
        _lastLink == uri.toString() &&
        now.difference(_lastLinkAt) < const Duration(seconds: 2);
    _lastLink = uri.toString();
    _lastLinkAt = now;
    return same;
  }

  static Future<void> _dispatch(Uri uri) async {
    if (completeAuthLink(uri)) return;
    if (find<AppLock>().locked.value) {
      find<AppLock>().run(() => unawaited(_dispatch(uri)));
      return;
    }
    if (_duplicate(uri)) return;
    for (var i = 0; i < 50 && appContext == null; i++) {
      await Future<void>.delayed(const Duration(milliseconds: 100));
    }
    final context = appContext;
    if (context == null || !context.mounted) return;
    final handler = handlers.firstWhereOrNull((h) => h.matches(uri));
    if (handler == null) {
      return snackString(getString.linkCantBeOpened(uri.toString()));
    }
    try {
      await handler.handle(context, uri);
    } catch (err) {
      snackString(getString.linkOpenError(err.toString()));
    }
  }
}
