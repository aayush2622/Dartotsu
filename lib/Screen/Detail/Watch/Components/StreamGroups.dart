import 'dart:async';

import 'package:dartotsu_extension_bridge/Models/Video.dart' as v;
import 'package:flutter/material.dart';

import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Functions/ExternalPlayer.dart';
import '../../../../Widgets/Components/SheetTile.dart';
import '../../../Player/Engine/PlayRequest.dart';

enum StreamKind { sub, hardSub, softSub, dub, raw, other }

class StreamGroup {
  final StreamKind kind;
  final List<int> indices;

  const StreamGroup(this.kind, this.indices);
}

final _hard = RegExp(r'\bhard[\s_-]?sub(?:bed|s)?\b|\bhsub\b');
final _soft = RegExp(r'\bsoft[\s_-]?sub(?:bed|s)?\b|\bssub\b');
final _dub = RegExp(r'\bdub(?:bed|s)?\b');
final _sub = RegExp(r'\bsub(?:bed|s|title[sd]?)?\b');
final _raw = RegExp(r'\braw\b');

StreamKind streamKindOf(v.Video video) {
  final text = '${video.title ?? ''} ${video.quality}'.toLowerCase();
  if (_hard.hasMatch(text)) return StreamKind.hardSub;
  if (_soft.hasMatch(text)) return StreamKind.softSub;
  if (_dub.hasMatch(text)) return StreamKind.dub;
  if (_sub.hasMatch(text)) return StreamKind.sub;
  if (_raw.hasMatch(text)) return StreamKind.raw;
  return StreamKind.other;
}

List<StreamGroup>? groupStreams(List<v.Video> list) {
  final buckets = <StreamKind, List<int>>{};
  for (final (i, video) in list.indexed) {
    (buckets[streamKindOf(video)] ??= []).add(i);
  }
  final typed = buckets.keys.where((k) => k != StreamKind.other).length;
  if (typed == 0 || buckets.length < 2) return null;
  return [
    for (final kind in StreamKind.values)
      if (buckets[kind] != null) StreamGroup(kind, buckets[kind]!),
  ];
}

String streamKindLabel(StreamKind kind) => switch (kind) {
  StreamKind.sub => getString.streamGroupSub,
  StreamKind.hardSub => getString.streamGroupHardSub,
  StreamKind.softSub => getString.streamGroupSoftSub,
  StreamKind.dub => getString.streamGroupDub,
  StreamKind.raw => getString.streamGroupRaw,
  StreamKind.other => getString.streamGroupOther,
};

class GroupedStreams extends StatefulWidget {
  final List<v.Video> list;
  final IconData icon;
  final int selected;
  final ValueChanged<int> onPick;

  const GroupedStreams({
    super.key,
    required this.list,
    required this.icon,
    required this.onPick,
    this.selected = -1,
  });

  @override
  State<GroupedStreams> createState() => _GroupedStreamsState();
}

class _GroupedStreamsState extends State<GroupedStreams> {
  final _collapsed = Live<Set<StreamKind>>(const {});

  Widget _tile(int index, int position, int count) {
    final video = widget.list[index];
    return SheetTile(
      tinted: true,
      radius: groupedRadius(position, count),
      leading: Icon(widget.icon),
      title: Text(streamLabel(video)),
      subtitle: video.quality.isNotEmpty && video.quality != video.title
          ? Text(video.quality)
          : null,
      selected: index == widget.selected,
      onTap: () => widget.onPick(index),
      onLongPress: () => unawaited(showExternalPlayerSheet(context, video)),
    );
  }

  Widget _header(BuildContext context, StreamGroup group, bool open) {
    final scheme = context.colorScheme;
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 4),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: () => _collapsed.value = open
            ? {..._collapsed.value, group.kind}
            : ({..._collapsed.value}..remove(group.kind)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: [
              Text(
                streamKindLabel(group.kind),
                style: context.textTheme.titleSmall?.copyWith(
                  color: scheme.primary,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                getString.streamsCount(group.indices.length),
                style: context.textTheme.labelMedium?.copyWith(
                  color: scheme.onSurfaceVariant,
                ),
              ),
              const Spacer(),
              Icon(
                open
                    ? Icons.keyboard_arrow_up_rounded
                    : Icons.keyboard_arrow_down_rounded,
                color: scheme.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final groups = groupStreams(widget.list);
    if (groups == null) {
      return Column(
        children: [
          for (var i = 0; i < widget.list.length; i++)
            _tile(i, i, widget.list.length),
        ],
      );
    }
    return Watch(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (final group in groups) ...[
            _header(context, group, !_collapsed.value.contains(group.kind)),
            if (!_collapsed.value.contains(group.kind))
              for (final (p, i) in group.indices.indexed)
                _tile(i, p, group.indices.length),
          ],
        ],
      ),
    );
  }
}
