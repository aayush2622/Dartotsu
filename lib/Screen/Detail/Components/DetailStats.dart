import 'package:flutter/material.dart';

import '../../../Widgets/Components/ThemedContainer.dart';

import '../../../Core/Services/Api/MuForecast.dart';
import '../../../Core/Services/Model/Media.dart';
import '../../../Core/Services/Screens/DetailHost.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/IntExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Core/State/State.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import 'MangaForecast.dart';

class DetailStats extends StatelessWidget {
  final DetailHost host;
  final List<(String, String)> Function(Media m)? items;

  const DetailStats(this.host, {this.items, super.key});

  static String compact(int n) {
    if (n >= 1000000) return '${(n / 1000000).toStringAsFixed(1)}M';
    if (n >= 1000) return '${(n / 1000).toStringAsFixed(1)}K';
    return '$n';
  }

  static String _countdown(Duration d) {
    if (d.inDays > 0) return '${d.inDays}d ${d.inHours % 24}h';
    if (d.inHours > 0) return '${d.inHours}h ${d.inMinutes % 60}m';
    return '${d.inMinutes}m';
  }

  static List<(String, String)> _items(Media m) => [
    if ((m.meanScore ?? 0) > 0)
      ('Score', (m.meanScore! / 10).toStringAsFixed(1)),
    if ((m.popularity ?? 0) > 0) ('Popularity', compact(m.popularity!)),
    if ((m.favourites ?? 0) > 0) ('Favorites', compact(m.favourites!)),
    if (m.anime?.episodeDuration != null)
      ('Duration', m.anime!.episodeDuration!.durationLabel),
  ];

  static Duration? _airingIn(Media m) {
    final at = m.anime?.nextAiringEpisodeTime;
    if (at == null) return null;
    final diff = DateTime.fromMillisecondsSinceEpoch(at * 1000)
        .difference(DateTime.now());
    return diff.isNegative ? null : diff;
  }

  @override
  Widget build(BuildContext context) => Watch(() {
    final m = host.media.value;
    final items = this.items?.call(m) ?? _items(m);
    final airing = _airingIn(m);
    final forecast = MangaForecasts.of(m, host.service)?.value;
    if (items.isEmpty && airing == null && forecast == null) {
      return const SizedBox.shrink();
    }
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      child: ThemedContainer(
        blur: false,
        color: scheme.surfaceContainerLow,
        borderRadius: Dimens.borderSm,
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.gap,
          vertical: Dimens.gapLg - 2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (items.isNotEmpty)
              Row(
                children: [
                  for (final (label, value) in items)
                    Expanded(child: _stat(context, label, value)),
                ],
              ),
            if (airing != null) ...[
              if (items.isNotEmpty) SizedBox(height: Dimens.gapLg - 2),
              _airing(context, m, airing),
            ] else if (forecast != null) ...[
              if (items.isNotEmpty) SizedBox(height: Dimens.gapLg - 2),
              _forecast(context, forecast),
            ],
          ],
        ),
      ),
    );
  });

  Widget _stat(BuildContext context, String label, String value) {
    final scheme = context.colorScheme;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w700,
            color: scheme.onSurface,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: context.textTheme.labelMedium?.copyWith(
            color: scheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  Widget _forecast(BuildContext context, MuForecast forecast) {
    final scheme = context.colorScheme;
    final left = forecast.expected.difference(DateTime.now());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.schedule_rounded, size: 18, color: scheme.primary),
        SizedBox(width: Dimens.gapSm),
        Flexible(
          child: Text(
            getString.chapterExpectedIn(
              forecast.nextChapter,
              _countdown(left.isNegative ? Duration.zero : left),
            ),
            textAlign: TextAlign.center,
            style: context.textTheme.bodyMedium?.copyWith(
              color: scheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }

  Widget _airing(BuildContext context, Media m, Duration until) {
    final ep = m.anime?.nextAiringEpisode;
    final scheme = context.colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.sensors_rounded, size: 18, color: scheme.primary),
        SizedBox(width: Dimens.gapSm),
        Flexible(
          child: Text(
            ep != null
                ? getString.episodeAirsIn(ep, _countdown(until))
                : getString.nextEpisodeIn(_countdown(until)),
            textAlign: TextAlign.center,
            style: context.textTheme.bodyMedium?.copyWith(
              color: scheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}
