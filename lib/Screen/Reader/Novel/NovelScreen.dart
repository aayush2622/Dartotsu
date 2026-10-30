import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';

import '../../../Widgets/Components/SeekProgressBar.dart';
import 'package:flutter/services.dart';

import '../../../Core/Fonts/AppFonts.dart';
import '../Engine/NovelPaginate.dart';
import '../Engine/NovelSpans.dart';
import '../Engine/NovelText.dart';
import '../Engine/ReaderRequest.dart';
import '../Engine/ReaderSettings.dart';
import '../Components/ReadingPresence.dart';
import '../../Detail/Watch/Data/Media/MediaRecord.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Model/Setting.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../Settings/Categories/ReaderSettings.dart';
import '../../Settings/Widgets/SettingsGroup.dart';
import '../Components/NovelTools.dart';
import '../Components/ReaderSheets.dart';
import '../../Settings/Layout/BarLayout.dart';
import 'NovelState.dart';
import '../../../Utils/Animation/WidgetAnimations.dart';

class NovelScreen extends StatefulWidget {
  final ReaderRequest request;

  const NovelScreen({super.key, required this.request});

  @override
  State<NovelScreen> createState() => _NovelScreenState();
}

class _NovelScreenState extends State<NovelScreen>
    with ScreenStateHost<NovelScreen, NovelState> {
  final _focus = FocusNode();

  @override
  NovelState buildState() => NovelState(widget.request);

  @override
  void dispose() {
    _focus.dispose();
    super.dispose();
  }

  final _since = DateTime.now().millisecondsSinceEpoch;

  @override
  Widget build(BuildContext context) => ReadingPresence(
    media: state.request.media,
    number: () => state.unit.number,
    since: _since,
    child: Watch(() => _build(context)),
  );

  (Color, Color) _colors(BuildContext context, String id) => switch (id) {
    'light' => (const Color(0xFFFAFAFA), const Color(0xFF1E1E1E)),
    'sepia' => (const Color(0xFFF4ECD8), const Color(0xFF5B4636)),
    'dark' => (const Color(0xFF1B1B1F), const Color(0xFFD7D7DC)),
    'black' => (Colors.black, const Color(0xFFBDBDBD)),
    _ => (context.colorScheme.surface, context.colorScheme.onSurface),
  };

  Widget _build(BuildContext context) {
    state.settingsVersion.value;
    fontsTick.value;
    final settings = state.settings;
    final (background, foreground) = _colors(context, settings.novelTheme);
    final body = state.loading.value
        ? const Center(child: CircularProgressIndicator())
        : state.error.value != null
        ? EmptyState(
            icon: Icons.error_outline_rounded,
            failed: true,
            title: getString.readerFailed,
            message: state.error.value,
            actionLabel: getString.retry,
            onAction: state.retry,
          )
        : _text(context, settings, foreground);
    return Theme(
      data: Theme.of(context).copyWith(
        iconTheme: IconThemeData(color: foreground),
        textTheme: Theme.of(
          context,
        ).textTheme.apply(bodyColor: foreground, displayColor: foreground),
      ),
      child: Scaffold(
        backgroundColor: background,
        body: KeyboardListener(
          focusNode: _focus,
          autofocus: true,
          onKeyEvent: _key,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(child: body),
              if (!state.loading.value && state.error.value == null)
                Positioned.fill(
                  child: LayoutBuilder(
                    builder: (context, box) => GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTapUp: (d) {
                        if (state.speaking.value &&
                            !state.controlsVisible.value) {
                          final at = state.blockAt(d.globalPosition);
                          if (at != null) {
                            unawaited(state.startSpeaking(from: at));
                            return;
                          }
                        }
                        if (!state.controlsVisible.value) {
                          final tapped = state.highlightAt(d.globalPosition);
                          if (tapped != null) {
                            unawaited(
                              showHighlightSheet(context, state, tapped),
                            );
                            return;
                          }
                        }
                        if (!(settings.novelTapPaging || state.paged) ||
                            state.controlsVisible.value) {
                          state.toggleControls();
                          return;
                        }
                        final x = d.localPosition.dx / box.maxWidth;
                        if (x < 0.25) {
                          state.pageBy(-1);
                        } else if (x > 0.75) {
                          state.pageBy(1);
                        } else {
                          state.toggleControls();
                        }
                      },
                    ),
                  ),
                ),
              Watch(() => _searchPill(context, background, foreground)),
              Watch(() => _bar(context, background, foreground, top: true)),
              Watch(() => _bar(context, background, foreground, top: false)),
              Watch(() => _audioBar(context, background, foreground)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _text(BuildContext context, ReaderSettings s, Color foreground) {
    final base = TextStyle(
      fontFamily: fontFamilyOf(s.novelFont),
      fontSize: s.novelSize.toDouble(),
      height: s.novelLineHeight,
      color: foreground,
      fontWeight: s.novelBold ? FontWeight.w600 : FontWeight.w400,
      letterSpacing: s.novelLetterSpacing / 10,
    );
    return s.novelPaged
        ? _pages(context, s, foreground, base)
        : _scrolling(context, s, foreground, base);
  }

  Widget _selectable(Widget child) => SelectionArea(
    onSelectionChanged: (content) =>
        state.selectedText = content?.plainText ?? '',
    contextMenuBuilder: (context, region) {
      final items = [...region.contextMenuButtonItems];
      if (state.translated.value == null) {
        items.add(
          ContextMenuButtonItem(
            label: getString.novelHighlight,
            onPressed: () {
              state.addHighlightFromSelection();
              region.hideToolbar();
              region.clearSelection();
            },
          ),
        );
        items.add(
          ContextMenuButtonItem(
            label: getString.novelHighlightNote,
            onPressed: () {
              final h = state.addHighlightFromSelection();
              region.hideToolbar();
              region.clearSelection();
              if (h != null) showHighlightSheet(this.context, state, h);
            },
          ),
        );
      }
      return AdaptiveTextSelectionToolbar.buttonItems(
        anchors: region.contextMenuAnchors,
        buttonItems: items,
      );
    },
    child: child,
  );

  Widget _scrolling(
    BuildContext context,
    ReaderSettings s,
    Color foreground,
    TextStyle base,
  ) {
    final blocks = state.blocks.toList();
    final margin = s.novelMargin.toDouble();
    return _selectable(
      ListView.builder(
        key: state.scrollKey,
        controller: state.scroll,
        padding: EdgeInsets.fromLTRB(
          margin,
          MediaQuery.paddingOf(context).top + 56,
          margin,
          MediaQuery.paddingOf(context).bottom + 96,
        ),
        itemCount: blocks.length + 2,
        itemBuilder: (context, i) {
          if (i == 0) return _heading(context, base);
          if (i == blocks.length + 1) return _end(context);
          final at = i - 1;
          final key = state.blockKeys.putIfAbsent(at, GlobalKey.new);
          return KeyedSubtree(
            key: key,
            child: Watch(() {
              final source = state.original;
              final bilingual =
                  s.translateBilingual &&
                  state.translated.value != null &&
                  source.length == blocks.length &&
                  source[at] is NovelParagraph &&
                  blocks[at] is NovelParagraph;
              final block = bilingual
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _block(
                          context,
                          source[at],
                          at,
                          base,
                          s.copy()..novelParagraph = 4,
                        ),
                        _block(
                          context,
                          blocks[at],
                          at,
                          base.copyWith(
                            color: base.color?.withValues(alpha: 0.6),
                          ),
                          s,
                        ),
                      ],
                    )
                  : _block(context, blocks[at], at, base, s);
              return _tint(context, at, block);
            }),
          );
        },
      ),
    );
  }

  Widget _tint(BuildContext context, int block, Widget child) =>
      state.speakingAt.value == block
      ? DecoratedBox(
          decoration: BoxDecoration(
            color: context.colorScheme.primary.withValues(alpha: 0.18),
            borderRadius: Dimens.borderSm,
          ),
          child: child,
        )
      : child;

  Widget _pages(
    BuildContext context,
    ReaderSettings s,
    Color foreground,
    TextStyle base,
  ) {
    final list = state.pages.value;
    final working = state.paginating.value;
    final margin = s.novelMargin.toDouble();
    final pad = MediaQuery.paddingOf(context);
    final top = pad.top + 28;
    final bottom = pad.bottom + 44;
    final scaler = MediaQuery.textScalerOf(context);
    return LayoutBuilder(
      builder: (context, box) {
        final layout = PageLayout(
          base: base,
          scaler: scaler,
          width: (box.maxWidth - margin * 2).floorToDouble(),
          height: (box.maxHeight - top - bottom).floorToDouble(),
          gap: s.novelParagraph.toDouble(),
          indent: s.novelIndent,
        );
        WidgetsBinding.instance.addPostFrameCallback(
          (_) => state.ensurePages(layout),
        );
        if (list.isEmpty) {
          return Center(
            child: working
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CircularProgressIndicator(),
                      const SizedBox(height: 12),
                      Text(
                        getString.novelPaginating,
                        style: base.copyWith(
                          fontSize: 14,
                          color: foreground.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  )
                : const SizedBox.shrink(),
          );
        }
        return Stack(
          fit: StackFit.expand,
          children: [
            PageView.builder(
              controller: state.pageController,
              itemCount: list.length + (working ? 0 : 1),
              onPageChanged: state.onPage,
              itemBuilder: (context, p) {
                if (p >= list.length) {
                  return Center(child: _end(context));
                }
                return Padding(
                  padding: EdgeInsets.fromLTRB(margin, top, margin, bottom),
                  child: _selectable(
                    ClipRect(
                      child: OverflowBox(
                        alignment: Alignment.topCenter,
                        minHeight: 0,
                        maxHeight: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            for (final slice in list[p].slices)
                              _slice(context, p, slice, base, s, layout),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            PositionedDirectional(
              start: 0,
              end: 0,
              bottom: pad.bottom + 12,
              child: IgnorePointer(
                child: Watch(
                  () => Text(
                    working
                        ? getString.novelPaginating
                        : getString.novelPageOf(
                            (state.page.value + 1).clamp(1, list.length),
                            list.length,
                          ),
                    textAlign: TextAlign.center,
                    style: base.copyWith(
                      fontSize: 12,
                      height: 1,
                      color: foreground.withValues(alpha: 0.5),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _slice(
    BuildContext context,
    int page,
    PageSlice slice,
    TextStyle base,
    ReaderSettings s,
    PageLayout layout,
  ) {
    final blocks = state.blocks;
    if (slice.block >= blocks.length) return const SizedBox.shrink();
    final block = blocks[slice.block];
    final gap = s.novelParagraph.toDouble();
    if (block is NovelParagraph) {
      final slots = state.pageSlots.putIfAbsent(page, () => {});
      var slot = slots[slice.block];
      final prefix = slice.start == 0 && block.heading == 0 && s.novelIndent
          ? novelIndent.length
          : 0;
      if (slot == null || slot.start != slice.start || slot.prefix != prefix) {
        slot = (key: GlobalKey(), start: slice.start, prefix: prefix);
        slots[slice.block] = slot;
      }
      return KeyedSubtree(
        key: slot.key,
        child: Watch(
          () => _tint(
            context,
            slice.block,
            Padding(
              padding: EdgeInsets.only(
                top: slice.start == 0 && block.heading > 0 ? gap : 0,
                bottom: slice.end >= block.text.length ? gap : 0,
              ),
              child: _paragraphText(
                context,
                block,
                slice.block,
                paragraphStyle(base, block.heading),
                s,
                start: slice.start,
                end: slice.end,
              ),
            ),
          ),
        ),
      );
    }
    if (block is NovelPicture) {
      return Padding(
        padding: EdgeInsets.only(bottom: gap),
        child: SizedBox(
          height: layout.pictureHeight,
          child: _picture(block, BoxFit.contain),
        ),
      );
    }
    return _block(context, block, slice.block, base, s);
  }

  Widget _picture(NovelPicture p, BoxFit fit) =>
      !p.url.startsWith('http') && File(p.url).isAbsolute
      ? Image.file(File(p.url), fit: fit, width: double.infinity)
      : cachedNetworkImage(imageUrl: p.url, fit: fit, width: double.infinity);

  List<TextMark> _marks(BuildContext context, int block) {
    final scheme = context.colorScheme;
    final out = <TextMark>[];
    if (state.translated.value == null) {
      for (final h in state.highlightsOf(block)) {
        out.add(
          TextMark(
            h.start,
            h.end,
            1,
            Color(highlightColors[h.color]).withValues(alpha: 0.5),
            underline: h.note.isNotEmpty,
          ),
        );
      }
    }
    final matches = state.searchMatches.value;
    if (matches.isNotEmpty) {
      final current = state.searchIndex.value;
      for (var i = 0; i < matches.length; i++) {
        final m = matches[i];
        if (m.block != block) continue;
        out.add(
          TextMark(
            m.start,
            m.end,
            i == current ? 3 : 2,
            scheme.tertiary.withValues(alpha: i == current ? 0.7 : 0.35),
          ),
        );
      }
    }
    if (state.speakingAt.value == block) {
      final word = state.speakingWord.value;
      if (word != null) {
        out.add(
          TextMark(word.$1, word.$2, 4, scheme.primary.withValues(alpha: 0.4)),
        );
      }
    }
    return out;
  }

  Widget _paragraphText(
    BuildContext context,
    NovelParagraph p,
    int block,
    TextStyle style,
    ReaderSettings s, {
    int start = 0,
    int? end,
  }) {
    final prefix = start == 0 && p.heading == 0 && s.novelIndent
        ? novelIndent
        : '';
    return Text.rich(
      TextSpan(
        style: style,
        children: buildSpans(
          p.text,
          style,
          _marks(context, block),
          from: start,
          to: end,
          prefix: prefix,
        ),
      ),
      textAlign: s.novelJustify ? TextAlign.justify : TextAlign.start,
    );
  }

  Widget _heading(BuildContext context, TextStyle base) => Padding(
    padding: EdgeInsets.only(bottom: Dimens.gapLg),
    child: Text(
      state.title,
      style: base.copyWith(
        fontSize: base.fontSize! * 1.4,
        fontWeight: FontWeight.w800,
      ),
    ),
  );

  Widget _block(
    BuildContext context,
    NovelBlock block,
    int at,
    TextStyle base,
    ReaderSettings s,
  ) {
    final gap = s.novelParagraph.toDouble();
    switch (block) {
      case NovelParagraph p:
        return Padding(
          padding: EdgeInsets.only(bottom: gap, top: p.heading > 0 ? gap : 0),
          child: _paragraphText(
            context,
            p,
            at,
            paragraphStyle(base, p.heading),
            s,
          ),
        );
      case NovelPicture p:
        return Padding(
          padding: EdgeInsets.only(bottom: gap),
          child: _picture(p, BoxFit.fitWidth),
        );
      case NovelRule():
        return Padding(
          padding: EdgeInsets.symmetric(vertical: gap),
          child: Divider(color: base.color?.withValues(alpha: 0.3)),
        );
      case NovelMark():
        return const SizedBox.shrink();
    }
  }

  Widget _searchPill(BuildContext context, Color background, Color foreground) {
    final matches = state.searchMatches.value;
    if (matches.isEmpty || state.controlsVisible.value) {
      return const SizedBox.shrink();
    }
    final at = state.searchIndex.value;
    return PositionedDirectional(
      top: MediaQuery.paddingOf(context).top + 8,
      start: 0,
      end: 0,
      child: Center(
        child: Material(
          color: Color.alphaBlend(
            foreground.withValues(alpha: 0.14),
            background,
          ),
          elevation: 3,
          borderRadius: BorderRadius.circular(28),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              _icon(
                foreground,
                Icons.keyboard_arrow_up_rounded,
                () => state.stepMatch(-1),
              ),
              Text(
                '${at < 0 ? '–' : at + 1} / ${matches.length}',
                style: context.textTheme.labelLarge?.copyWith(
                  color: foreground,
                ),
              ),
              _icon(
                foreground,
                Icons.keyboard_arrow_down_rounded,
                () => state.stepMatch(1),
              ),
              _icon(foreground, Icons.close_rounded, state.clearSearch),
            ],
          ),
        ),
      ),
    );
  }

  Widget _end(BuildContext context) => Padding(
    padding: EdgeInsets.only(top: Dimens.gapLg),
    child: Center(
      child: state.hasNext
          ? FilledButton.icon(
              onPressed: state.next,
              icon: const Icon(Icons.skip_next_rounded),
              label: Text(getString.readerNextChapter),
            )
          : Text(getString.readerLastChapter),
    ),
  );

  Widget _bar(
    BuildContext context,
    Color background,
    Color foreground, {
    required bool top,
  }) {
    final visible = state.controlsVisible.value || state.speaking.value && !top;
    final solid = background.withValues(alpha: 0.99);
    final clear = background.withValues(alpha: 0);
    final bar = DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: top ? Alignment.topCenter : Alignment.bottomCenter,
          end: top ? Alignment.bottomCenter : Alignment.topCenter,
          colors: [solid, solid, clear],
          stops: const [0, 0.72, 1],
        ),
      ),
      child: SafeArea(
        top: top,
        bottom: !top,
        child: Padding(
          padding: EdgeInsets.fromLTRB(8, top ? 4 : 20, 8, top ? 20 : 8),
          child: top
              ? _topRow(context, foreground)
              : _bottomRow(context, foreground),
        ),
      ),
    );
    return PositionedDirectional(
      top: top ? 0 : null,
      bottom: top ? null : 0,
      start: 0,
      end: 0,
      child: IgnorePointer(
        ignoring: !visible,
        child: AnimatedSlide(
          offset: visible ? Offset.zero : Offset(0, top ? -1 : 1),
          duration: animDuration(220),
          curve: Curves.easeOutCubic,
          child: bar,
        ),
      ),
    );
  }

  Widget _icon(
    Color foreground,
    IconData icon,
    VoidCallback? onTap, {
    String? tooltip,
    bool active = false,
  }) => IconButton(
    onPressed: onTap,
    tooltip: tooltip,
    color: active ? context.colorScheme.primary : foreground,
    disabledColor: foreground.withValues(alpha: 0.3),
    visualDensity: VisualDensity.compact,
    style: IconButton.styleFrom(
      backgroundColor: Colors.transparent,
      disabledBackgroundColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: foreground.withValues(alpha: 0.08),
    ),
    icon: Icon(icon),
  );

  ({IconData icon, String label, VoidCallback? onTap, bool active})? _spec(
    BuildContext context,
    String id,
  ) {
    switch (id) {
      case 'speak':
        if (!state.canSpeak) return null;
        final on = state.speaking.value;
        return (
          icon: Icons.record_voice_over_rounded,
          label: on ? getString.novelSpeakStop : getString.novelSpeak,
          onTap: state.toggleSpeaking,
          active: on,
        );
      case 'translate':
        final shown = state.translated.value != null;
        return (
          icon: Icons.g_translate_rounded,
          label: shown
              ? getString.novelTranslateShowOriginal
              : getString.novelTranslate,
          onTap: state.translating.value ? null : state.toggleTranslation,
          active: shown,
        );
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
          active: false,
        );
      case 'bookmark':
        final on = state.bookmarked;
        return (
          icon: on ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
          label: on
              ? getString.readerBookmarkRemove
              : getString.readerBookmarkAdd,
          onTap: state.toggleBookmark,
          active: false,
        );
      case 'tools':
        return (
          icon: Icons.manage_search_rounded,
          label: getString.novelTools,
          onTap: () => showNovelTools(context, state),
          active:
              state.searchMatches.value.isNotEmpty ||
              state.record.highlights.isNotEmpty,
        );
      case 'chapters':
        return (
          icon: Icons.format_list_numbered_rounded,
          label: getString.readerChapters,
          onTap: () => showChapterList(
            context,
            request: state.request,
            current: state.index.value,
            onPick: state.openChapter,
          ),
          active: false,
        );
      case 'settings':
        return (
          icon: Icons.settings_rounded,
          label: getString.readerSettingsTitle,
          onTap: () => _options(context),
          active: false,
        );
    }
    return null;
  }

  List<Widget> _actionBar(
    BuildContext context,
    Color foreground,
    List<String> ids,
  ) => [
    for (final id in ids)
      if (_spec(context, id) case final a?)
        _icon(foreground, a.icon, a.onTap, tooltip: a.label, active: a.active),
  ];

  Widget _overflow(BuildContext context, Color foreground, List<String> ids) {
    final specs = [
      for (final id in ids) ?_spec(context, id),
    ].where((a) => a.onTap != null).toList();
    if (specs.isEmpty) return const SizedBox.shrink();
    return PopupMenuButton<int>(
      tooltip: getString.layoutMore,
      icon: Icon(Icons.more_vert_rounded, color: foreground),
      onSelected: (i) => specs[i].onTap!(),
      itemBuilder: (_) => [
        for (var i = 0; i < specs.length; i++)
          PopupMenuItem(
            value: i,
            child: Row(
              children: [
                Icon(
                  specs[i].icon,
                  size: 20,
                  color: specs[i].active ? context.colorScheme.primary : null,
                ),
                const SizedBox(width: 12),
                Text(specs[i].label),
              ],
            ),
          ),
      ],
    );
  }

  Widget _topRow(BuildContext context, Color foreground) {
    final layout = LayoutSurface.novel.layout;
    return Row(
      children: [
        _icon(
          foreground,
          Icons.arrow_back_ios_new_rounded,
          () => popPage(context),
        ),
        ..._actionBar(context, foreground, layout.zone(topStartZone)),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                state.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  height: 1.25,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                state.request.media.mainName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.labelSmall?.copyWith(
                  color: foreground.withValues(alpha: 0.65),
                ),
              ),
            ],
          ),
        ),
        ..._actionBar(context, foreground, layout.zone(topEndZone)),
        _overflow(context, foreground, layout.hidden),
      ],
    );
  }

  Widget _bottomRow(BuildContext context, Color foreground) {
    final controls = state.controlsVisible.value;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (state.translating.value)
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: LinearProgressIndicator(
              value: state.translateProgress.value == 0
                  ? null
                  : state.translateProgress.value,
            ),
          ),
        if (state.speaking.value) _speech(context, foreground),
        if (controls && state.autoScrolling.value) _speed(context, foreground),
        if (controls)
          Row(
            children: [
              _icon(
                foreground,
                Icons.skip_previous_rounded,
                state.hasPrevious ? state.previous : null,
                tooltip: getString.readerPreviousChapter,
              ),
              Expanded(
                child: Watch(() {
                  final fraction = state.fraction.value;
                  return Row(
                    children: [
                      Text(
                        '${(fraction * 100).round()}%',
                        style: context.textTheme.labelLarge,
                      ),
                      Expanded(
                        child: SeekProgressBar(
                          value: fraction.clamp(0.0, 1.0),
                          activeColor: foreground,
                          trackColor: foreground.withValues(alpha: 0.2),
                          onChanged: state.seekTo,
                        ),
                      ),
                      Text(
                        getString.novelMinutesLeft(
                          (state.wordsLeft / 230).ceil(),
                        ),
                        style: context.textTheme.labelLarge?.copyWith(
                          color: foreground.withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  );
                }),
              ),
              _icon(
                foreground,
                Icons.skip_next_rounded,
                state.hasNext ? state.next : null,
                tooltip: getString.readerNextChapter,
              ),
            ],
          ),
      ],
    );
  }

  Widget _audioBar(BuildContext context, Color background, Color foreground) {
    final speaking = state.speaking.value;
    final scrolling = state.autoScrolling.value;
    if (state.controlsVisible.value || (!speaking && !scrolling)) {
      return const SizedBox.shrink();
    }
    final scheme = context.colorScheme;
    final paused = speaking ? state.speechPaused.value : state.autoPaused.value;
    final settings = state.settings;
    final label = speaking
        ? '${settings.speechRate}%'
        : '${settings.autoScrollSpeed.clamp(1, 10)}';
    void speed(int delta) {
      if (speaking) {
        final next = (settings.speechRate + delta * 10).clamp(50, 200);
        state.updateSettings((s) => s.speechRate = next);
        state.restartSpeaking();
      } else {
        final next = (settings.autoScrollSpeed + delta).clamp(1, 10);
        state.updateSettings((s) => s.autoScrollSpeed = next);
      }
    }

    Widget button(IconData icon, VoidCallback onTap, {bool filled = false}) =>
        IconButton(
          onPressed: onTap,
          color: filled ? scheme.onPrimary : foreground,
          style: IconButton.styleFrom(
            backgroundColor: filled ? scheme.primary : Colors.transparent,
          ),
          icon: Icon(icon),
        );

    return PositionedDirectional(
      start: 16,
      end: 16,
      bottom: 12 + MediaQuery.paddingOf(context).bottom,
      child: Center(
        child: Material(
          color: Color.alphaBlend(
            foreground.withValues(alpha: 0.14),
            background,
          ),
          elevation: 3,
          borderRadius: BorderRadius.circular(32),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (speaking)
                  button(
                    Icons.skip_previous_rounded,
                    () => state.speakStep(-1),
                  ),
                button(
                  paused ? Icons.play_arrow_rounded : Icons.pause_rounded,
                  speaking ? state.toggleSpeechPause : state.toggleAutoPause,
                  filled: true,
                ),
                if (speaking)
                  button(Icons.skip_next_rounded, () => state.speakStep(1)),
                const SizedBox(width: 4),
                button(Icons.remove_rounded, () => speed(-1)),
                SizedBox(
                  width: 48,
                  child: Text(
                    label,
                    textAlign: TextAlign.center,
                    style: context.textTheme.labelLarge?.copyWith(
                      color: foreground,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                button(Icons.add_rounded, () => speed(1)),
                const SizedBox(width: 4),
                button(
                  Icons.close_rounded,
                  speaking
                      ? state.stopSpeaking
                      : () => state.setAutoScroll(false),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _speech(BuildContext context, Color foreground) {
    final rate = state.settings.speechRate;
    void set(int v) =>
        state.updateSettings((s) => s.speechRate = v.clamp(50, 200));
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _icon(
            foreground,
            Icons.remove_rounded,
            rate > 50 ? () => set(rate - 10) : null,
          ),
          SizedBox(
            width: 56,
            child: Text(
              '$rate%',
              textAlign: TextAlign.center,
              style: context.textTheme.labelLarge,
            ),
          ),
          _icon(
            foreground,
            Icons.add_rounded,
            rate < 200 ? () => set(rate + 10) : null,
          ),
          const SizedBox(width: 16),
          _icon(
            foreground,
            Icons.skip_previous_rounded,
            () => state.speakStep(-1),
            tooltip: getString.novelSpeakPrevious,
          ),
          const SizedBox(width: 8),
          _icon(
            foreground,
            Icons.stop_rounded,
            state.stopSpeaking,
            active: true,
            tooltip: getString.novelSpeakStop,
          ),
          const SizedBox(width: 8),
          _icon(
            foreground,
            Icons.skip_next_rounded,
            () => state.speakStep(1),
            tooltip: getString.novelSpeakNext,
          ),
        ],
      ),
    );
  }

  Widget _speed(BuildContext context, Color foreground) {
    final speed = state.settings.autoScrollSpeed.clamp(1, 10);
    void set(int v) =>
        state.updateSettings((s) => s.autoScrollSpeed = v.clamp(1, 10));
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _icon(
            foreground,
            Icons.remove_rounded,
            speed > 1 ? () => set(speed - 1) : null,
          ),
          SizedBox(
            width: 72,
            child: Text(
              '$speed',
              textAlign: TextAlign.center,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          _icon(
            foreground,
            Icons.add_rounded,
            speed < 10 ? () => set(speed + 1) : null,
          ),
        ],
      ),
    );
  }

  Future<void> _options(BuildContext context) => showCustomBottomDialog<void>(
    context,
    AppSheet(
      title: getString.readerSettingsTitle,
      heightFactor: 0.85,
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 24),
        child: Watch(() {
          state.settingsVersion.value;
          final perTitle = state.perTitle.value;
          return SettingsGroup(
            key: ValueKey(perTitle),
            settings: [
              Setting.switchType(
                name: getString.readerPerTitle,
                description: getString.readerPerTitleDesc,
                icon: Icons.bookmark_rounded,
                isChecked: perTitle,
                onSwitchChange: state.setPerTitle,
              ),
              ...novelReaderRows(
                context,
                settings: state.settings,
                update: state.updateSettings,
              ),
            ],
          );
        }),
      ),
    ),
  );

  void _key(KeyEvent event) {
    if (event is! KeyDownEvent) return;
    final key = event.logicalKey;
    if (key == LogicalKeyboardKey.space || key == LogicalKeyboardKey.pageDown) {
      state.pageBy(1);
    } else if (key == LogicalKeyboardKey.pageUp) {
      state.pageBy(-1);
    } else if (key == LogicalKeyboardKey.arrowRight) {
      state.next();
    } else if (key == LogicalKeyboardKey.arrowLeft) {
      state.previous();
    } else if (key == LogicalKeyboardKey.keyM) {
      state.toggleControls();
    }
  }
}
