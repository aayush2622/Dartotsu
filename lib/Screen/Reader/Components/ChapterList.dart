import '../../../Widgets/Components/ScrollConfig.dart';

import 'package:flutter/material.dart';

import '../../Detail/Watch/Data/Media/MediaRecord.dart';
import '../Engine/ReaderRequest.dart';
import '../../../Core/State/State.dart';
import '../../Detail/Watch/Data/EpisodeUnits.dart';
import '../../Detail/Watch/Data/LocalProgress.dart';
import '../../Detail/Watch/Data/WatchPrefs.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../Detail/Watch/Components/RangeBar.dart';
import '../../Detail/Watch/Components/UnitLayout.dart';
import '../../Detail/Watch/Components/UnitTile.dart';

class ChapterList extends StatefulWidget {
  final ReaderRequest request;
  final int current;
  final void Function(int index) onPick;

  const ChapterList({
    super.key,
    required this.request,
    required this.current,
    required this.onPick,
  });

  @override
  State<ChapterList> createState() => _ChapterListState();
}

class _ChapterListState extends State<ChapterList> {
  final _scroll = ScrollController();
  final _currentKey = GlobalKey();
  final _chunk = Live<int?>(null);

  ReaderRequest get request => widget.request;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _reveal());
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  void _reveal() {
    final ctx = _currentKey.currentContext;
    if (!mounted || ctx == null) return;
    Scrollable.ensureVisible(ctx, alignment: 0.3);
  }

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final record = MediaRecords.of(request.service, request.media);
    final settings = record.watch;
    final units = request.units;
    if (units.isEmpty) return const SizedBox.shrink();
    final playing = units[widget.current.clamp(0, units.length - 1)];
    final progress = effectiveProgress(
      request.media.userProgress ?? 0,
      units,
      record.playback,
    );
    final chunks = chunkUnits(units, watchChunkSizePref.rx.value);
    final home = chunks.indexWhere((c) => c.contains(playing));
    final chunk = (_chunk.value ?? (home < 0 ? 0 : home)).clamp(
      0,
      chunks.length - 1,
    );
    final shown = settings.reverse
        ? chunks[chunk].reversed.toList()
        : chunks[chunk];
    final blur = watchBlurUnwatchedPref.rx.value;
    final description = watchShowDescriptionPref.rx.value;
    return ScrollConfig(
      context,
      child: SingleChildScrollView(
        controller: _scroll,
        padding: EdgeInsets.fromLTRB(
          Dimens.pagePad,
          0,
          Dimens.pagePad,
          Dimens.gapXl,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (chunks.length > 1) ...[
              RangeBar(
                selected: chunk,
                onChanged: (i) => _chunk.value = i,
                labels: [
                  for (final c in chunks) '${c.first.number}-${c.last.number}',
                ],
              ),
              SizedBox(height: Dimens.gap),
            ],
            UnitLayout(
              units: shown,
              view: settings.view,
              builder: (u) {
                final isCurrent = identical(u, playing);
                return KeyedSubtree(
                  key: isCurrent ? _currentKey : null,
                  child: UnitTile(
                    key: ValueKey('reader-unit-${u.number}-${u.scanlator}'),
                    unit: u,
                    anime: false,
                    view: settings.view,
                    watched: u.isWatched(progress),
                    progress: partialFraction(record.playback[u.number]),
                    next: isCurrent,
                    blur: blur,
                    showDescription: description,
                    onTap: () {
                      popPage(context);
                      final at = units.indexOf(u);
                      if (at != widget.current) widget.onPick(at);
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
