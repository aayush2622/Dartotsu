import 'dart:io';

import 'package:app_links/app_links.dart';
import 'package:dartotsu_extension_bridge/ExtensionManager.dart';
import 'package:dartotsu_extension_bridge/Models/Source.dart';
import 'package:flutter/cupertino.dart';
import 'package:receive_sharing_intent/receive_sharing_intent.dart';

import 'WindowProtocol.dart';
import 'SnackBar.dart';

class DeepLink {
  static void init() {
    _initIntentListener();
    _initDeepLinkListener();
  }

  static void _initIntentListener() async {
    if (!Platform.isAndroid) return;

    final intent = ReceiveSharingIntent.instance;

    void handleFiles(List<SharedMediaFile> files) {
      if (files.isEmpty) return;

      //openPlayer(Get.context!, files.map((e) => e.path).toList());
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

  static void _initDeepLinkListener() async {
    if (Platform.isWindows) {
      [
        'dar',
        'anymex',
        'sugoireads',
        'mangayomi',
      ].forEach(registerProtocolHandler);
    }
    final appLink = AppLinks();
    try {
      final initialUri = await appLink.getInitialLink();
      if (initialUri != null) _handleDeepLink(initialUri);
    } catch (err) {
      snackString('Error getting initial deep link: $err');
    }

    appLink.uriLinkStream.listen(
      (uri) => _handleDeepLink(uri),
      onError: (err) => snackString('Error Opening link: $err'),
    );
  }

  static void _handleDeepLink(Uri uri) {
    if (uri.host != "add-repo") return;

    final scheme = uri.scheme.toLowerCase();
    bool isRepoAdded = false;

    const mangayomiSchemes = {"dar", "anymex", "sugoireads", "mangayomi"};
    const aniyomiSchemes = {"aniyomi", "tachiyomi"};
    if (mangayomiSchemes.contains(scheme)) {
      var manager = ExtensionType.mangayomi.getManager();
      final repoMap = {
        ItemType.anime:
            uri.queryParameters["anime_url"] ?? uri.queryParameters["url"],
        ItemType.manga: uri.queryParameters["manga_url"],
        ItemType.novel: uri.queryParameters["novel_url"],
      };
      repoMap.forEach((type, url) {
        if (url != null && url.isNotEmpty) {
          manager.onRepoSaved([url], type);
          isRepoAdded = true;
        }
      });
    } else if (aniyomiSchemes.contains(scheme)) {
      var manager = ExtensionType.aniyomi.getManager();
      final url = uri.queryParameters["url"];
      if (url != null && url.isNotEmpty) {
        manager.onRepoSaved([
          url,
        ], scheme == "aniyomi" ? ItemType.anime : ItemType.manga);
        isRepoAdded = true;
      }
    }

    snackString(
      isRepoAdded
          ? "Added Repo Links Successfully!"
          : "Missing or invalid parameters in the link.",
    );
  }
}
