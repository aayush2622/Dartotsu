import 'dart:async';

import 'package:flutter/material.dart';

import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../Detail/Watch/Components/UnitTile.dart';
import '../../Detail/Watch/Data/Media/MediaRecord.dart';
import '../Novel/NovelState.dart';

Future<void> showNovelTools(
  BuildContext context,
  NovelState state, {
  int tab = 0,
}) {
  final current = tab.live;
  return showCustomBottomDialog<void>(
    context,
    AppSheet(
      title: getString.novelTools,
      heightFactor: 0.85,
      child: Watch(
        () => Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: AppSegmented<int>(
                wrap: true,
                expand: false,
                value: current.value,
                onChanged: (v) => current.value = v,
                segments: [
                  AppSegment(
                    0,
                    icon: Icons.toc_rounded,
                    label: getString.novelContents,
                  ),
                  AppSegment(
                    1,
                    icon: Icons.search_rounded,
                    label: getString.novelSearch,
                  ),
                  AppSegment(
                    2,
                    icon: Icons.border_color_rounded,
                    label: getString.novelHighlights,
                  ),
                  AppSegment(
                    3,
                    icon: Icons.bookmarks_rounded,
                    label: getString.readerBookmarks,
                  ),
                ],
              ),
            ),
            Expanded(
              child: switch (current.value) {
                0 => _Contents(state: state),
                1 => _Search(state: state),
                2 => _Highlights(state: state),
                _ => _Bookmarks(state: state),
              },
            ),
          ],
        ),
      ),
    ),
  );
}

class _Contents extends StatelessWidget {
  final NovelState state;

  const _Contents({required this.state});

  @override
  Widget build(BuildContext context) {
    final entries = state.toc;
    if (entries.isEmpty) {
      return EmptyState(
        icon: Icons.toc_rounded,
        title: getString.novelContentsEmpty,
      );
    }
    final here = state.firstVisibleBlock;
    var current = 0;
    for (var i = 0; i < entries.length; i++) {
      if (entries[i].block <= here) current = i;
    }
    final scheme = context.colorScheme;
    return ListView.builder(
      itemCount: entries.length,
      itemBuilder: (context, i) {
        final e = entries[i];
        final selected = i == current;
        return ListTile(
          contentPadding: EdgeInsetsDirectional.only(
            start: 20.0 + (e.level - 1).clamp(0, 4) * 18,
            end: 16,
          ),
          selected: selected,
          selectedColor: scheme.primary,
          title: Text(
            e.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: e.level <= 1 || selected ? FontWeight.w700 : null,
            ),
          ),
          onTap: () {
            popPage(context);
            state.jumpToBlock(e.block);
          },
        );
      },
    );
  }
}

class _Search extends StatefulWidget {
  final NovelState state;

  const _Search({required this.state});

  @override
  State<_Search> createState() => _SearchState();
}

class _SearchState extends State<_Search> {
  late final _controller = TextEditingController(
    text: widget.state.searchQuery.value,
  );
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = widget.state;
    final scheme = context.colorScheme;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: TextField(
            controller: _controller,
            autofocus: true,
            textInputAction: TextInputAction.search,
            decoration: InputDecoration(
              hintText: getString.novelSearchHint,
              prefixIcon: const Icon(Icons.search_rounded),
              suffixIcon: IconButton(
                icon: const Icon(Icons.close_rounded),
                onPressed: () {
                  _controller.clear();
                  state.clearSearch();
                },
              ),
            ),
            onChanged: (v) {
              _debounce?.cancel();
              _debounce = Timer(
                const Duration(milliseconds: 220),
                () => state.search(v),
              );
            },
            onSubmitted: state.search,
          ),
        ),
        Expanded(
          child: Watch(() {
            final matches = state.searchMatches.value;
            final query = state.searchQuery.value.trim();
            if (query.length < 2) return const SizedBox.shrink();
            if (matches.isEmpty) {
              return EmptyState(
                icon: Icons.search_off_rounded,
                title: getString.novelSearchNone,
              );
            }
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 4),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      getString.novelSearchCount(matches.length),
                      style: context.textTheme.labelLarge?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: matches.length,
                    itemBuilder: (context, i) {
                      final m = matches[i];
                      return ListTile(
                        dense: true,
                        title: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: m.before),
                              TextSpan(
                                text: m.hit,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: scheme.primary,
                                ),
                              ),
                              TextSpan(text: m.after),
                            ],
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        onTap: () {
                          popPage(context);
                          state.openMatch(i);
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          }),
        ),
      ],
    );
  }
}

class _Highlights extends StatelessWidget {
  final NovelState state;

  const _Highlights({required this.state});

  @override
  Widget build(BuildContext context) => Watch(() => _list(context));

  Widget _list(BuildContext context) {
    final list = state.allHighlights;
    if (list.isEmpty) {
      return EmptyState(
        icon: Icons.border_color_rounded,
        title: getString.novelHighlightsEmpty,
      );
    }
    final here = state.unit.number;
    final ordered = [
      ...(list.where((h) => h.unit == here).toList()..sort(
        (a, b) => a.block != b.block
            ? a.block.compareTo(b.block)
            : a.start.compareTo(b.start),
      )),
      ...list.where((h) => h.unit != here),
    ];
    final scheme = context.colorScheme;
    return ListView.builder(
      itemCount: ordered.length,
      itemBuilder: (context, i) {
        final h = ordered[i];
        final chapter = state.units
            .where((u) => u.number == h.unit)
            .firstOrNull;
        return ListTile(
          leading: Container(
            width: 10,
            height: 40,
            decoration: BoxDecoration(
              color: Color(highlightColors[h.color]),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          title: Text(h.text, maxLines: 3, overflow: TextOverflow.ellipsis),
          subtitle:
              [
                if (h.unit != here && chapter != null)
                  unitTitle(chapter, false),
                if (h.note.isNotEmpty) h.note,
              ].isEmpty
              ? null
              : Text(
                  [
                    if (h.unit != here && chapter != null)
                      unitTitle(chapter, false),
                    if (h.note.isNotEmpty) h.note,
                  ].join('\n'),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(color: scheme.onSurfaceVariant),
                ),
          trailing: IconButton(
            tooltip: getString.novelHighlightRemove,
            icon: const Icon(Icons.delete_outline_rounded),
            onPressed: () => state.removeHighlight(h),
          ),
          onTap: () {
            popPage(context);
            state.openHighlight(h);
          },
          onLongPress: () {
            popPage(context);
            showHighlightSheet(context, state, h);
          },
        );
      },
    );
  }
}

class _Bookmarks extends StatelessWidget {
  final NovelState state;

  const _Bookmarks({required this.state});

  @override
  Widget build(BuildContext context) => Watch(() => _list(context));

  Widget _list(BuildContext context) {
    state.bookmarkTick.value;
    final list = state.record.bookmarks.toList()
      ..sort((a, b) => b.at.compareTo(a.at));
    if (list.isEmpty) {
      return EmptyState(
        icon: Icons.bookmark_border_rounded,
        title: getString.readerBookmarksEmpty,
      );
    }
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (_, i) {
        final b = list[i];
        return ListTile(
          leading: const Icon(Icons.bookmark_rounded),
          title: Text(b.label),
          subtitle: Text('${(b.position * 100 / b.total).round()}%'),
          trailing: IconButton(
            tooltip: getString.readerBookmarkRemove,
            icon: const Icon(Icons.delete_outline_rounded),
            onPressed: () => state.removeBookmark(b),
          ),
          onTap: () {
            popPage(context);
            state.openBookmark(b);
          },
        );
      },
    );
  }
}

Future<void> showHighlightSheet(
  BuildContext context,
  NovelState state,
  NovelHighlight highlight,
) {
  final note = TextEditingController(text: highlight.note);
  final color = highlight.color.live;
  return showCustomBottomDialog<void>(
    context,
    AppSheet(
      title: getString.novelHighlight,
      child: Watch(
        () => SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(highlightColors[color.value])
                      .withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  highlight.text,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  for (var i = 0; i < highlightColors.length; i++)
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: 10),
                      child: InkWell(
                        customBorder: const CircleBorder(),
                        onTap: () {
                          color.value = i;
                          state.updateHighlight(highlight, color: i);
                        },
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(highlightColors[i]),
                            border: Border.all(
                              width: 3,
                              color: color.value == i
                                  ? context.colorScheme.onSurface
                                  : Colors.transparent,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 12),
              TextField(
                controller: note,
                minLines: 1,
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: getString.novelHighlightNote,
                  hintText: getString.novelHighlightNoteHint,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {
                        state.removeHighlight(highlight);
                        popPage(context);
                      },
                      icon: const Icon(Icons.delete_outline_rounded),
                      label: Text(getString.novelHighlightRemove),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: FilledButton(
                      onPressed: () {
                        state.updateHighlight(highlight, note: note.text);
                        popPage(context);
                      },
                      child: Text(getString.save),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
