import 'package:collection/collection.dart';
import 'dart:async';
import 'dart:io';

import 'package:app_links/app_links.dart';
import 'package:dartotsu_extension_bridge/ExtensionManager.dart';
import 'package:flutter/widgets.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../Extensions/StringExtensions.dart';
import 'DeepLinkHandlers.dart';
import 'SnackBar.dart';
import 'WindowProtocol.dart';

export 'DeepLinkHandlers.dart';
import '../../Core/State/State.dart';

class DeepLink {
  static final handlers = <DeepLinkHandler>[
    ExtensionRepoLinks(),
    ServiceLinks(),
  ];

  static void Function(List<String> paths)? playFiles;

  static void register(DeepLinkHandler handler) => handlers.insert(0, handler);

  static void init() {
    _initIntentListener();
    _initDeepLinkListener();
  }

  static void openFiles(List<String> paths) {
    if (paths.isEmpty) return;
    final play = playFiles;
    if (play == null) return snackString('The player is not available yet');
    play(paths);
  }

  static void initVideoIntentListener(List<String> args) => openFiles(
    args.where((a) => File(a).existsSync() && a.isMediaVideo()).toList(),
  );

  static void _initIntentListener() async {
    if (!Platform.isAndroid) return;

    final intent = ReceiveSharingIntent.instance;

    void handleFiles(List<SharedMediaFile> files) =>
        openFiles(files.map((e) => e.path).toList());

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
          e,
          'Dartotsu.Video',
          description: 'Dartotsu Video File',
        );
      }
      for (var e in audioExtensions) {
        registerFileAssociation(
          e,
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
      snackString('Error getting initial deep link: $err');
    }

    appLink.uriLinkStream.listen(
      (uri) => unawaited(_dispatch(uri)),
      onError: (err) => snackString('Error Opening link: $err'),
    );
  }

  static Future<void> _dispatch(Uri uri) async {
    for (var i = 0; i < 50 && appContext == null; i++) {
      await Future<void>.delayed(const Duration(milliseconds: 100));
    }
    final context = appContext;
    if (context == null || !context.mounted) return;
    final handler = handlers.firstWhereOrNull((h) => h.matches(uri));
    if (handler == null) return snackString('This link can\'t be opened: $uri');
    try {
      await handler.handle(context, uri);
    } catch (err) {
      snackString('Error opening link: $err');
    }
  }
}
