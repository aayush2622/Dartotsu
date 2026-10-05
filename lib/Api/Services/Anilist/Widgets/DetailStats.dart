import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/Services/Screens/DetailHost.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/IntExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';

class AnilistDetailStats extends StatelessWidget {
  final DetailHost host;

  const AnilistDetailStats(this.host, {super.key});

  static String _compact(int n) {
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
    if ((m.popularity ?? 0) > 0) ('Popularity', _compact(m.popularity!)),
    if ((m.favourites ?? 0) > 0) ('Favorites', _compact(m.favourites!)),
    if (m.anime?.episodeDuration != null)
      ('Duration', m.anime!.episodeDuration!.durationLabel),
  ];

  static Duration? _airingIn(Media m) {
    final at = m.anime?.nextAiringEpisodeTime;
    if (at == null) return null;
    final diff = DateTime.fromMillisecondsSinceEpoch(
      at * 1000,
    ).difference(DateTime.now());
    return diff.isNegative ? null : diff;
  }

  @override
  Widget build(BuildContext context) => Obx(() {
    final m = host.media.value;
    final items = _items(m);
    final airing = _airingIn(m);
    if (items.isEmpty && airing == null) return const SizedBox.shrink();
    final scheme = context.colorScheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: scheme.surfaceContainerLow,
          borderRadius: Dimens.borderSm,
        ),
        child: Padding(
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
              ],
            ],
          ),
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

  Widget _airing(BuildContext context, Media m, Duration until) {
    final ep = m.anime?.nextAiringEpisode;
    final scheme = context.colorScheme;
    return Row(
      children: [
        Icon(Icons.sensors_rounded, size: 18, color: scheme.primary),
        SizedBox(width: Dimens.gapSm),
        Expanded(
          child: Text(
            ep != null
                ? 'Episode $ep airs in ${_countdown(until)}'
                : 'Next episode in ${_countdown(until)}',
            style: context.textTheme.bodyMedium?.copyWith(
              color: scheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}
