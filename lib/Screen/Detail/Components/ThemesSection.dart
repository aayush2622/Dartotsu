import 'dart:async';

import 'package:flutter/material.dart';

import '../../../Core/Services/Api/AnimeThemes.dart';
import '../../../Core/Services/MediaService.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/Clickable.dart';
import '../../../Widgets/Components/ScreenState.dart';
import '../../../Widgets/Components/SectionCard.dart';
import 'ThemesState.dart';

class ThemesSection extends StatefulWidget {
  final MediaService service;
  final Media media;

  const ThemesSection({super.key, required this.service, required this.media});

  @override
  State<ThemesSection> createState() => _ThemesSectionState();
}

class _ThemesSectionState extends State<ThemesSection>
    with ScreenStateHost<ThemesSection, ThemesState> {
  @override
  ThemesState buildState() => ThemesState(widget.service, widget.media);

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final result = state.result.value;
    if (result == null || result.themes.isEmpty) return const SizedBox.shrink();
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsets.fromLTRB(
        Dimens.pagePad,
        Dimens.gapLg,
        Dimens.pagePad,
        0,
      ),
      child: _Plain(
        title: getString.themesTitle,
        trailing: IconButton(
          tooltip: getString.themesOpenSite,
          visualDensity: VisualDensity.compact,
          onPressed: state.openSite,
          icon: const Icon(Icons.open_in_new_rounded, size: 20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (final theme in state.themes) _tile(context, theme),
            Row(
              children: [
                Expanded(
                  child: Text(
                    getString.themesCredit,
                    style: context.textTheme.labelSmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                ),
                if (state.hasMore)
                  TextButton(
                    style: TextButton.styleFrom(
                      visualDensity: VisualDensity.compact,
                      minimumSize: const Size(0, 32),
                    ),
                    onPressed: () =>
                        state.expanded.value = !state.expanded.value,
                    child: Text(
                      state.expanded.value
                          ? getString.showLess
                          : getString.showAll,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _tile(BuildContext context, AnimeTheme theme) {
    final scheme = context.colorScheme;
    final text = context.textTheme;
    final detail = [
      if (theme.artists.isNotEmpty) theme.artists.join(', '),
      if (theme.episodes.isNotEmpty) getString.themesEpisodes(theme.episodes),
    ].join(' · ');
    final versions = theme.videos;
    final fill = theme.isOpening
        ? scheme.primaryContainer
        : scheme.tertiaryContainer;
    final ink = theme.isOpening
        ? scheme.onPrimaryContainer
        : scheme.onTertiaryContainer;
    return Clickable(
      onTap: () => unawaited(state.play(theme)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Row(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(minWidth: 40, maxWidth: 76),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: fill,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  state.label(theme),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: text.labelSmall?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: ink,
                  ),
                ),
              ),
            ),
            SizedBox(width: Dimens.gapSm),
            Expanded(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: theme.title.isEmpty ? theme.type : theme.title,
                      style: text.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    if (detail.isNotEmpty)
                      TextSpan(
                        text: '  $detail',
                        style: text.bodySmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                  ],
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            PopupMenuButton<int>(
              tooltip: getString.themesVersions,
              padding: EdgeInsets.zero,
              iconSize: 18,
              icon: const Icon(Icons.more_vert_rounded),
              onSelected: (i) {
                if (i == -1) {
                  unawaited(state.play(theme, audio: true));
                } else {
                  unawaited(state.play(theme, video: versions[i]));
                }
              },
              itemBuilder: (_) => [
                for (final (i, v) in versions.indexed)
                  PopupMenuItem(
                    value: i,
                    child: Text(
                      '${getString.themesPlayVideo}${v.label.isEmpty ? '' : ' · ${v.label}'}',
                    ),
                  ),
                if (versions.any((v) => v.audio != null))
                  PopupMenuItem(
                    value: -1,
                    child: Text(getString.themesPlayAudio),
                  ),
              ],
            ),
            IconButton(
              tooltip: getString.themesPlayVideo,
              visualDensity: VisualDensity.compact,
              iconSize: 22,
              color: scheme.primary,
              onPressed: () => unawaited(state.play(theme)),
              icon: const Icon(Icons.play_circle_fill_rounded),
            ),
          ],
        ),
      ),
    );
  }
}

class _Plain extends StatelessWidget {
  final String title;
  final Widget trailing;
  final Widget child;

  const _Plain({
    required this.title,
    required this.trailing,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SectionHeader(title: title, trailing: trailing),
      SizedBox(height: Dimens.gapSm),
      child,
    ],
  );
}
