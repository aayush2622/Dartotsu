import 'package:dartotsu_extension_bridge/ExtensionManager.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Screen/Social/SocialNavigation.dart';
import 'GetXFunctions.dart';
import 'SnackBar.dart';

const appSchemes = {'dartotsu'};

abstract class DeepLinkHandler {
  bool matches(Uri uri);

  Future<void> handle(BuildContext context, Uri uri);
}

class ExtensionRepoLinks extends DeepLinkHandler {
  @override
  bool matches(Uri uri) =>
      uri.host == 'add-repo' &&
      find<ExtensionManager>().managers.any(
        (m) => m.schemes.contains(uri.scheme.toLowerCase()),
      );

  @override
  Future<void> handle(BuildContext context, Uri uri) async {
    final handler = find<ExtensionManager>().managers.firstWhere(
      (m) => m.schemes.contains(uri.scheme.toLowerCase()),
    );
    handler.handleSchemes(uri);
    snackString('Added Repo Links Successfully!');
  }
}

class ServiceLinks extends DeepLinkHandler {
  static MediaService? serviceFor(Uri uri) {
    final services = find<MediaServiceController>().services;
    final scheme = uri.scheme.toLowerCase();
    final host = uri.host.toLowerCase();
    return services.firstWhereOrNull(
      (s) =>
          (appSchemes.contains(scheme) && host == s.id) ||
          s.linkSchemes.contains(scheme) ||
          ((scheme == 'http' || scheme == 'https') &&
              s.linkHosts.contains(host)),
    );
  }

  @override
  bool matches(Uri uri) => serviceFor(uri)?.parseUri(uri) != null;

  @override
  Future<void> handle(BuildContext context, Uri uri) {
    final service = serviceFor(uri)!;
    return openAppLink(
      context,
      service,
      uri.toString(),
      link: service.parseUri(uri),
    );
  }
}
