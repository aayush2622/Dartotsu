import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../Core/Services/MediaService.dart';
import '../Feed/FeedNavigation.dart';
import '../Feed/ScreenWidgetList.dart';
import 'Components/LoginPrompt.dart';
import 'HomeHeader.dart';
import '../Detail/ListEditorSheet.dart';

class HomeFeed extends StatelessWidget {
  final MediaService service;

  const HomeFeed({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    if (service.auth == null) return _feed(context, signedIn: false);
    return Obx(() => _feed(context, signedIn: service.isLoggedIn));
  }

  Widget _feed(BuildContext context, {required bool signedIn}) {
    final view = service.homeView;
    final id = '${service.id}/home/${signedIn ? 'api' : 'local'}';

    return ScreenWidgetList(
      key: ValueKey(id),
      header: Column(
        children: [
          const HomeHeader(),
          if (!signedIn && service.auth != null) LoginPrompt(service: service),
        ],
      ),
      loader: view.screenStream,
      cacheId: id,
      reloadOn: service.auth?.user.stream,
      onMediaTap: (m, tag) => openDetail(context, service, m, heroTag: tag),
      onMediaLongPress: (m) => showQuickListEditor(context, service, m),
    );
  }
}
