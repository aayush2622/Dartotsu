import 'package:flutter/material.dart';
import 'package:media_kit_video/media_kit_video.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AppSpinner.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../../Widgets/Components/SectionCard.dart';
import 'TrailerState.dart';

class TrailerSection extends StatefulWidget {
  final String url;

  const TrailerSection({super.key, required this.url});

  static bool supports(String? url) => url != null && youtubeId(url) != null;

  @override
  State<TrailerSection> createState() => _TrailerSectionState();
}

class _TrailerSectionState extends State<TrailerSection>
    with ScreenStateHost<TrailerSection, TrailerState> {
  @override
  TrailerState buildState() => TrailerState(widget.url);

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        Dimens.pagePad,
        Dimens.gapLg,
        Dimens.pagePad,
        0,
      ),
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 520),
          child: SectionCard(
            title: getString.trailer,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (state.qualities.length > 1) _qualityMenu(),
                IconButton(
                  tooltip: getString.openInBrowser,
                  visualDensity: VisualDensity.compact,
                  onPressed: state.openBrowser,
                  icon: const Icon(Icons.open_in_new_rounded, size: 20),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: Dimens.borderSm,
              child: AspectRatio(aspectRatio: 16 / 9, child: _stage(context)),
            ),
          ),
        ),
      ),
    );
  }

  Widget _qualityMenu() => PopupMenuButton<int>(
    tooltip: getString.playerQuality,
    icon: const Icon(Icons.high_quality_rounded, size: 20),
    initialValue: state.quality.value,
    onSelected: state.setQuality,
    itemBuilder: (_) => [
      for (final (i, q) in state.qualities.indexed)
        CheckedPopupMenuItem(
          value: i,
          checked: i == state.quality.value,
          child: Text(q.label),
        ),
    ],
  );

  Widget _stage(BuildContext context) {
    if (!state.started.value) return _preview(context);
    if (state.failed.value) return _failed(context);
    final video = state.video;
    if (state.loading.value || video == null) {
      return Stack(
        fit: StackFit.expand,
        children: [
          _thumbnail(),
          const ColoredBox(color: Colors.black54),
          const Center(child: AppSpinner()),
        ],
      );
    }
    return ColoredBox(
      color: Colors.black,
      child: Video(
        controller: video,
        fit: BoxFit.contain,
        controls: (video) => Watch(() => _controls(context, video)),
      ),
    );
  }

  Widget _controls(BuildContext context, VideoState video) {
    final full = video.isFullscreen();
    return Stack(
      fit: StackFit.expand,
      children: [
        Clickable(onTap: state.toggle, child: const SizedBox.expand()),
        if (!state.playing.value)
          IgnorePointer(
            child: Center(
              child: Icon(
                Icons.play_circle_fill_rounded,
                size: 56,
                color: Colors.white.withValues(alpha: 0.9),
              ),
            ),
          ),
        PositionedDirectional(
          start: 0,
          end: 0,
          bottom: 0,
          child: _bar(context, video, full),
        ),
      ],
    );
  }

  Widget _thumbnail() => cachedNetworkImage(
    imageUrl: state.thumbnail,
    fit: BoxFit.cover,
    errorWidget: (_, _, _) => cachedNetworkImage(
      imageUrl: state.fallbackThumbnail,
      fit: BoxFit.cover,
    ),
  );

  Widget _preview(BuildContext context) => Clickable(
    onTap: state.start,
    child: Stack(
      fit: StackFit.expand,
      children: [
        _thumbnail(),
        const ColoredBox(color: Colors.black26),
        const Center(
          child: Icon(
            Icons.play_circle_fill_rounded,
            size: 64,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );

  Widget _failed(BuildContext context) => ColoredBox(
    color: context.colorScheme.surfaceContainerHighest,
    child: Center(
      child: TextButton.icon(
        onPressed: state.openBrowser,
        icon: const Icon(Icons.open_in_new_rounded),
        label: Text(getString.trailerFailed),
      ),
    ),
  );

  Widget _bar(BuildContext context, VideoState video, bool full) {
    final total = state.duration.value.inMilliseconds;
    final at = state.position.value.inMilliseconds.clamp(
      0,
      total <= 0 ? 1 : total,
    );
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Colors.black87, Colors.transparent],
        ),
      ),
      child: Row(
        children: [
          IconButton(
            color: Colors.white,
            visualDensity: VisualDensity.compact,
            onPressed: state.toggle,
            icon: Icon(
              state.playing.value
                  ? Icons.pause_rounded
                  : Icons.play_arrow_rounded,
            ),
          ),
          Expanded(
            child: Slider(
              value: at.toDouble(),
              max: total <= 0 ? 1 : total.toDouble(),
              onChanged: total <= 0
                  ? null
                  : (v) => state.seek(Duration(milliseconds: v.round())),
            ),
          ),
          if (full && state.qualities.length > 1) _qualityMenu(),
          IconButton(
            color: Colors.white,
            visualDensity: VisualDensity.compact,
            onPressed: video.toggleFullscreen,
            icon: Icon(
              full ? Icons.fullscreen_exit_rounded : Icons.fullscreen_rounded,
            ),
          ),
        ],
      ),
    );
  }
}
