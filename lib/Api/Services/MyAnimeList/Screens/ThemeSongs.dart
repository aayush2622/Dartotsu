import 'package:flutter/material.dart';

import '../../../../Core/State/State.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Animation/WidgetAnimations.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Widgets/Components/SectionCard.dart';

class _Song {
  final String? number;
  final String title;
  final String? artist;
  final String? episodes;

  const _Song(this.number, this.title, this.artist, this.episodes);
}

final _songPattern = RegExp(
  r'^(?:#?(\d+):\s*)?"(.+?)"(?:\s+by\s+(.+?))?(?:\s*\((eps?\s[^)]*)\))?\s*$',
);

_Song _parse(String raw, int index) {
  final match = _songPattern.firstMatch(raw.trim());
  if (match == null) return _Song('${index + 1}', raw.trim(), null, null);
  return _Song(
    match.group(1) ?? '${index + 1}',
    match.group(2)!,
    match.group(3),
    match.group(4),
  );
}

class ThemeSongs extends StatelessWidget {
  final String title;
  final List<String> songs;
  final _expanded = false.live;

  ThemeSongs({super.key, required this.title, required this.songs});

  static const _limit = 4;

  @override
  Widget build(BuildContext context) => Watch(() => _build(context));

  Widget _build(BuildContext context) {
    final scheme = context.colorScheme;
    final text = context.textTheme;
    final all = [for (final (i, s) in songs.indexed) _parse(s, i)];
    final more = all.length > _limit;
    final parsed = _expanded.value || !more ? all : all.take(_limit).toList();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(title: title),
          SizedBox(height: Dimens.gapSm),
          AnimatedSize(
            duration: animDuration(260),
            curve: Curves.easeOutCubic,
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final song in parsed)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 30,
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: scheme.secondaryContainer,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            song.number ?? '',
                            style: text.labelSmall?.copyWith(
                              fontWeight: FontWeight.w800,
                              color: scheme.onSecondaryContainer,
                            ),
                          ),
                        ),
                        SizedBox(width: Dimens.gapSm),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                song.title,
                                style: text.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              if (song.artist != null || song.episodes != null)
                                Text(
                                  [?song.artist, ?song.episodes].join(' · '),
                                  style: text.bodySmall?.copyWith(
                                    color: scheme.onSurfaceVariant,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          if (more)
            TextButton.icon(
              style: TextButton.styleFrom(
                visualDensity: VisualDensity.compact,
                padding: EdgeInsets.zero,
              ),
              onPressed: () => _expanded.value = !_expanded.value,
              icon: Icon(
                _expanded.value
                    ? Icons.expand_less_rounded
                    : Icons.expand_more_rounded,
                size: 18,
              ),
              label: Text(
                _expanded.value
                    ? getString.showLess
                    : '+${all.length - _limit} more',
              ),
            ),
        ],
      ),
    );
  }
}
