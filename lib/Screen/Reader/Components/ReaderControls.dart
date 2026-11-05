import 'package:flutter/material.dart';

import '../../../Widgets/Components/SeekProgressBar.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../Settings/Layout/BarLayout.dart';
import '../ReaderState.dart';
import 'BookmarksSheet.dart';
import 'ReaderSheets.dart';

class ReaderControls extends StatelessWidget {
  final ReaderState state;

  const ReaderControls({super.key, required this.state});

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _icon(IconData icon, VoidCallback? onTap, {String? tooltip}) =>
      IconButton(
        onPressed: onTap,
        tooltip: tooltip,
        color: Colors.white,
        disabledColor: Colors.white30,
        style: IconButton.styleFrom(
          backgroundColor: Colors.transparent,
          disabledBackgroundColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.white.withValues(alpha: 0.08),
        ),
        icon: Icon(icon),
      );

  Widget _build(BuildContext context) {
    final visible = state.controlsVisible.value;
    final curve = Curves.easeOutCubic;
    final duration = animDuration(220);
    return Stack(
      children: [
        PositionedDirectional(
          top: 0,
          start: 0,
          end: 0,
          child: IgnorePointer(
            ignoring: !visible,
            child: AnimatedSlide(
              offset: Offset(0, visible ? 0 : -1),
              duration: duration,
              curve: curve,
              child: _top(context),
            ),
          ),
        ),
        PositionedDirectional(
          start: 0,
          end: 0,
          bottom: 0,
          child: IgnorePointer(
            ignoring: !visible,
            child: AnimatedSlide(
              offset: Offset(0, visible ? 0 : 1),
              duration: duration,
              curve: curve,
              child: _bottom(context),
            ),
          ),
        ),
      ],
    );
  }

  ({IconData icon, String label, VoidCallback onTap})? _spec(
    BuildContext context,
    String id,
  ) {
    switch (id) {
      case 'autoScroll':
        final on = state.autoScrolling.value;
        return (
          icon: on
              ? Icons.pause_circle_outline_rounded
              : Icons.play_circle_outline_rounded,
          label: on
              ? getString.readerAutoScrollStop
              : getString.readerAutoScroll,
          onTap: state.toggleAutoScroll,
        );
      case 'bookmark':
        final on = state.bookmarked;
        return (
          icon: on ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
          label: on
              ? getString.readerBookmarkRemove
              : getString.readerBookmarkAdd,
          onTap: state.toggleBookmark,
        );
      case 'bookmarks':
        if (state.record.bookmarks.isEmpty) return null;
        return (
          icon: Icons.bookmarks_outlined,
          label: getString.readerBookmarks,
          onTap: () => showBookmarks(
            context,
            record: state.record,
            tick: state.bookmarkTick,
            detail: (b) =>
                getString.readerBookmarkPage(b.position + 1, b.total),
            onOpen: state.openBookmark,
            onRemove: state.removeBookmark,
          ),
        );
      case 'chapters':
        return (
          icon: Icons.format_list_numbered_rounded,
          label: getString.readerChapters,
          onTap: () => showChapterList(
            context,
            request: state.request,
            current: state.chapter,
            onPick: state.openChapter,
          ),
        );
      case 'settings':
        return (
          icon: Icons.settings_rounded,
          label: getString.readerSettingsTitle,
          onTap: () => showReaderOptions(context, state),
        );
    }
    return null;
  }

  List<Widget> _bar(BuildContext context, List<String> ids) => [
    for (final id in ids)
      if (_spec(context, id) case final a?)
        _icon(a.icon, a.onTap, tooltip: a.label),
  ];

  Widget _overflow(BuildContext context, List<String> ids) {
    final specs = [for (final id in ids) ?_spec(context, id)];
    if (specs.isEmpty) return const SizedBox.shrink();
    return PopupMenuButton<int>(
      tooltip: getString.layoutMore,
      icon: const Icon(Icons.more_vert_rounded, color: Colors.white),
      onSelected: (i) => specs[i].onTap(),
      itemBuilder: (_) => [
        for (var i = 0; i < specs.length; i++)
          PopupMenuItem(
            value: i,
            child: Row(
              children: [
                Icon(specs[i].icon, size: 20),
                const SizedBox(width: 12),
                Text(specs[i].label),
              ],
            ),
          ),
      ],
    );
  }

  Widget _top(BuildContext context) {
    state.current.value;
    final layout = LayoutSurface.reader.layout;
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xE6000000), Color(0x00000000)],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 4, 8, 16),
          child: Row(
            children: [
              _icon(Icons.arrow_back_ios_new_rounded, () => popPage(context)),
              ..._bar(context, layout.zone(topStartZone)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state.chapterTitle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.titleSmall?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      state.request.media.mainName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodySmall?.copyWith(
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              ..._bar(context, layout.zone(topEndZone)),
              _overflow(context, layout.hidden),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottom(BuildContext context) {
    final count = state.pageCount;
    final page = state.page;
    final rtl = state.settings.reversed;
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0x00000000), Color(0xE6000000)],
        ),
      ),
      child: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (state.autoScrolling.value) _speed(context),
              Directionality(
                textDirection: rtl ? TextDirection.rtl : TextDirection.ltr,
                child: Row(
                  children: [
                    _icon(
                      Icons.skip_previous_rounded,
                      state.hasPreviousChapter
                          ? state.openPreviousChapter
                          : null,
                      tooltip: getString.readerPreviousChapter,
                    ),
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        '${page + 1}',
                        style: context.textTheme.labelLarge?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: count < 2
                          ? const SizedBox.shrink()
                          : SeekProgressBar(
                              value: (page.clamp(0, count - 1) + 1) / count,
                              step: 1 / count,
                              onChanged: (f) => state.go(
                                state.flatIndexOf(
                                  state.chapter,
                                  (f * count).floor().clamp(0, count - 1),
                                ),
                              ),
                            ),
                    ),
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: Text(
                        '$count',
                        style: context.textTheme.labelLarge?.copyWith(
                          color: Colors.white70,
                        ),
                      ),
                    ),
                    _icon(
                      Icons.skip_next_rounded,
                      state.hasNextChapter ? state.openNextChapter : null,
                      tooltip: getString.readerNextChapter,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _speed(BuildContext context) {
    final speed = state.settings.autoScrollSpeed.clamp(1, 10);
    void set(int v) =>
        state.updateSettings((s) => s.autoScrollSpeed = v.clamp(1, 10));
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _icon(Icons.remove_rounded, speed > 1 ? () => set(speed - 1) : null),
          SizedBox(
            width: 72,
            child: Text(
              '$speed',
              textAlign: TextAlign.center,
              style: context.textTheme.titleMedium?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          _icon(Icons.add_rounded, speed < 10 ? () => set(speed + 1) : null),
        ],
      ),
    );
  }
}
