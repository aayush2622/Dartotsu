import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;
import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:flutter/material.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Logger.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../Detail/Watch/Components/StreamGroups.dart';
import '../../Detail/Watch/Data/EpisodeUnits.dart';
import '../../Player/Engine/PlayRequest.dart';
import '../../Player/Engine/StreamFeed.dart';

class DownloadStreamSheet extends StatefulWidget {
  final Source source;
  final WatchUnit unit;

  const DownloadStreamSheet({
    super.key,
    required this.source,
    required this.unit,
  });

  @override
  State<DownloadStreamSheet> createState() => _DownloadStreamSheetState();
}

class _DownloadStreamSheetState extends State<DownloadStreamSheet> {
  final _feed = Live<StreamFeed?>(null);
  final _error = Live<String?>(null);

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _feed.value?.cancel();
    super.dispose();
  }

  Future<void> _load() async {
    _feed.value?.cancel();
    _feed.value = null;
    _error.value = null;
    final feed = StreamFeed.of(widget.source, widget.unit.raw);
    _feed.value = feed;
    try {
      final list = await feed.all;
      if (!mounted || _feed.value != feed) return;
      logger('Download streams: ${list.length}', tag: 'DOWNLOAD');
      if (list.length == 1) {
        popPage(context, StreamPick(list, 0));
        return;
      }
      if (list.isEmpty) _error.value = getString.playerNoStreams;
    } catch (e, st) {
      logger(
        'Download streams failed: $e\n$st',
        logLevel: LogLevel.error,
        tag: 'DOWNLOAD',
      );
      if (mounted) _error.value = e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return AppSheet(
      title: getString.downloadPickStream,
      child: Watch(() {
        final feed = _feed.value;
        final list = feed?.videos.value ?? const <v.Video>[];
        final error = _error.value;
        if (error != null) {
          return SizedBox(
            height: 300,
            child: EmptyState(
              icon: Icons.cloud_off_rounded,
              failed: true,
              title: getString.playerNoStreamsTitle,
              message: error,
              actionLabel: getString.retry,
              onAction: _load,
            ),
          );
        }
        if (feed == null || list.isEmpty) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const LinearProgressIndicator(),
                const SizedBox(height: 16),
                Text(
                  getString.playerLoadingStreams,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          );
        }
        return ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
          children: [
            if (!feed.done.value) const LinearProgressIndicator(),
            GroupedStreams(
              list: list,
              icon: Icons.download_rounded,
              onPick: (i) => popPage(context, StreamPick(feed.videos.value, i)),
            ),
          ],
        );
      }),
    );
  }
}
