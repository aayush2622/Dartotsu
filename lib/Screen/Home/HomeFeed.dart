import '../../Core/Offline/OfflineMode.dart';
import '../Downloads/Components/OfflineFeed.dart';

import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../Feed/FeedNavigation.dart';
import '../Feed/ScreenWidgetList.dart';
import '../Social/Stories/StoriesRow.dart';
import 'Components/LoginPrompt.dart';
import 'Components/ResumeShelf.dart';
import 'HomeHeader.dart';
import '../Detail/ListEditorSheet.dart';
import '../../Core/State/State.dart';
import '../Detail/Watch/Data/WatchPrefs.dart';

class HomeFeed extends StatelessWidget {
  final MediaService service;

  const HomeFeed({super.key, required this.service});

  @override
  Widget build(BuildContext context) => Watch(() {
    if (find<OfflineMode>().isOffline.value) {
      return OfflineFeed(service: service, header: const HomeHeader());
    }
    if (service.auth == null) return _feed(context, signedIn: false);
    return _feed(context, signedIn: service.isLoggedIn);
  });

  Widget _feed(BuildContext context, {required bool signedIn}) {
    final view = service.homeView;
    final id = '${service.id}/home/${signedIn ? 'api' : 'local'}';

    return ScreenWidgetList(
      key: ValueKey(id),
      header: Column(
        children: [
          const HomeHeader(),
          if (!signedIn && service.auth != null) LoginPrompt(service: service),
          if (signedIn && (service.socialView?.hasStories ?? false))
            StoriesRow(
              key: ValueKey('stories-${service.id}'),
              service: service,
            ),
          Watch(
            () => watchResumeShelfPref.rx.value
                ? ResumeShelf(
                    key: ValueKey('resume-${service.id}'),
                    service: service,
                  )
                : const SizedBox.shrink(),
          ),
        ],
      ),
      onPull: () => StoriesRow.reload(service),
      loader: signedIn ? view.screenStreamWithLocal : view.screenStream,
      isHidden: view.isHiddenSection,
      cacheId: id,
      reloadOn: service.auth?.user.stream,
      onMediaTap: (m, tag) => openDetail(context, service, m, heroTag: tag),
      onMediaLongPress: (m) => showQuickListEditor(context, service, m),
    );
  }
}
