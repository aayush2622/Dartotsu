import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

import '../../../Core/Downloads/DownloadEngine.dart';
import '../../../Core/Downloads/DownloadScanner.dart';
import '../../../Core/Downloads/DownloadTask.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import '../../../Widgets/Shelf/PosterCard.dart';
import '../../Feed/FeedNavigation.dart';
import '../../Player/Engine/PlayRequest.dart';
import '../../Player/Engine/PlayerPlaylist.dart';
import '../../Player/PlayerLauncher.dart';
import '../DownloadsScreen.dart';

class OfflineFeed extends StatelessWidget {
  final MediaService service;
  final MediaType? type;
  final Widget? header;

  const OfflineFeed({super.key, required this.service, this.type, this.header});

  String? _cover(DownloadTask task) {
    final path = task.path;
    if (path != null) {
      final local = File(p.join(p.dirname(path), 'cover.jpg'));
      if (local.existsSync()) return local.path;
    }
    return task.cover;
  }

  String? _groupCover(LocalGroup group) {
    for (final name in const [
      'cover.jpg',
      'cover.png',
      'folder.jpg',
      'poster.jpg',
    ]) {
      final file = File(p.join(group.directory, name));
      if (file.existsSync()) return file.path;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) => Watch(() {
    final engine = find<DownloadEngine>();
    final seen = <String, DownloadTask>{};
    final counts = <String, int>{};
    for (final t in engine.tasks) {
      if (!t.isDone || t.serviceId != service.id) continue;
      final video = t.kind == DownloadKind.video;
      if (type != null && type!.isVideo != video) continue;
      seen.putIfAbsent(t.mediaId, () => t);
      counts[t.mediaId] = (counts[t.mediaId] ?? 0) + 1;
    }
    final list = seen.values.toList();
    final local = type == null || type!.isVideo
        ? engine.scanner.groups.toList()
        : const <LocalGroup>[];
    final scheme = context.colorScheme;
    return ScrollConfig(
      context,
      child: CustomScrollView(
        slivers: [
          if (header != null) SliverToBoxAdapter(child: header),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(Dimens.pagePad),
              child: Row(
                children: [
                  Icon(Icons.cloud_off_rounded, color: scheme.primary),
                  SizedBox(width: Dimens.gap),
                  Expanded(
                    child: Text(
                      getString.offlineFeedTitle,
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  TextButton.icon(
                    onPressed: () =>
                        navigateToPage(context, const DownloadsScreen()),
                    icon: const Icon(Icons.download_rounded),
                    label: Text(getString.downloadsTitle),
                  ),
                ],
              ),
            ),
          ),
          if (list.isEmpty && local.isEmpty)
            SliverFillRemaining(
              hasScrollBody: false,
              child: EmptyState(
                icon: Icons.download_done_rounded,
                title: getString.downloadEmptyDone,
                message: getString.offlineFeedEmpty,
              ),
            )
          else
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  childAspectRatio: 0.55,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                delegate: SliverChildBuilderDelegate((context, i) {
                  if (i >= list.length) {
                    final group = local[i - list.length];
                    return PosterCard(
                      title: group.title,
                      subtitle: '${group.files.length}',
                      imageUrl: _groupCover(group),
                      onTap: () => openPlayer(
                        PlayRequest(
                          items: [
                            for (final (n, f) in group.files.indexed)
                              localItem(f, n),
                          ],
                        ),
                        context: context,
                      ),
                    );
                  }
                  final task = list[i];
                  final media = Media.fromJson(
                    Map<String, dynamic>.from(task.media),
                  );
                  return PosterCard(
                    title: task.mediaTitle,
                    subtitle: '${counts[task.mediaId]}',
                    imageUrl: _cover(task),
                    onTap: () => openDetail(context, service, media),
                  );
                }, childCount: list.length + local.length),
              ),
            ),
          SliverToBoxAdapter(child: SizedBox(height: Dimens.gapXl * 3)),
        ],
      ),
    );
  });
}
