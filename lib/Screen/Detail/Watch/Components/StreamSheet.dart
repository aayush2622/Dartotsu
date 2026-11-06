import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;
import 'package:flutter/material.dart';

import '../../../Player/Engine/PlayRequest.dart';
import '../../../Player/Engine/StreamFeed.dart';
import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../Data/EpisodeUnits.dart';
import '../../../../Logger.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../../../../Widgets/Components/AppSheet.dart';
import '../../../../Widgets/Components/EmptyState.dart';
import '../WatchState.dart';
import 'StreamGroups.dart';
import 'UnitTile.dart';

class StreamSheet extends StatefulWidget {
  final WatchState state;
  final WatchUnit unit;

  const StreamSheet({super.key, required this.state, required this.unit});

  @override
  State<StreamSheet> createState() => _StreamSheetState();
}

class _StreamSheetState extends State<StreamSheet> {
  final _feed = Live<StreamFeed?>(null);
  final _error = Live<String?>(null);
  late final _auto = widget.state.record.streams.auto.live;

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
    final source = widget.state.source.value;
    if (source == null) {
      _error.value = getString.watchSourceMissing;
      return;
    }
    final feed = StreamFeed.of(source, widget.unit.raw);
    _feed.value = feed;
    final record = widget.state.record.streams;
    final last = record.auto ? record.last[source.id] : null;
    try {
      final list = last == null
          ? await feed.all
          : await feed.until(
              (l) => bestStreamIndex(l, last, exact: true) != null,
            );
      if (!mounted || _feed.value != feed) return;
      final remembered = last == null ? null : bestStreamIndex(list, last);
      if (remembered != null || (feed.done.value && list.length == 1)) {
        popPage(context, StreamPick(list, remembered ?? 0));
        return;
      }
      if (list.isEmpty) _error.value = getString.playerNoStreams;
    } catch (e, st) {
      logger('Streams failed: $e\n$st', logLevel: LogLevel.error, tag: 'WATCH');
      if (mounted) _error.value = e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return AppSheet(
      title: unitLabel(widget.unit, true),
      child: Watch(() {
        final feed = _feed.value;
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
        final list = feed?.videos.value ?? const <v.Video>[];
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
            SwitchListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 8),
              value: _auto.value,
              title: Text(getString.playerAutoSelect),
              subtitle: Text(getString.playerAutoSelectDesc),
              onChanged: (value) {
                _auto.value = value;
                widget.state.record.streams.auto = value;
                widget.state.saveRecord();
              },
            ),
            GroupedStreams(
              list: list,
              icon: Icons.play_circle_outline_rounded,
              onPick: (i) => popPage(context, StreamPick(feed.videos.value, i)),
            ),
          ],
        );
      }),
    );
  }
}
