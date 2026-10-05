import 'package:flutter/material.dart';
import 'package:get/get.dart' hide ContextExtensionss;

import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/Services/Screens/DetailHost.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Widgets/Components/SectionCard.dart';
import 'StatTile.dart';

EdgeInsets get _margin =>
    EdgeInsets.symmetric(horizontal: Dimens.gap, vertical: Dimens.gapSm / 2);

class AnilistDetailStats extends StatelessWidget {
  final DetailHost host;

  const AnilistDetailStats(this.host, {super.key});

  static String _compact(int n) {
    if (n >= 1000000) return '${(n / 1000000).toStringAsFixed(1)}M';
    if (n >= 1000) return '${(n / 1000).toStringAsFixed(1)}K';
    return '$n';
  }

  static String _duration(Duration d) {
    if (d.inDays > 0) return '${d.inDays}d ${d.inHours % 24}h';
    if (d.inHours > 0) return '${d.inHours}h ${d.inMinutes % 60}m';
    return '${d.inMinutes}m';
  }

  static List<(IconData, String, String)> _items(Media m) => [
    if ((m.meanScore ?? 0) > 0)
      (Icons.star_rounded, 'Score', (m.meanScore! / 10).toStringAsFixed(1)),
    if ((m.popularity ?? 0) > 0)
      (Icons.people_alt_rounded, 'Popularity', _compact(m.popularity!)),
    if ((m.favourites ?? 0) > 0)
      (Icons.favorite_rounded, 'Favourites', _compact(m.favourites!)),
    if (m.anime?.episodeDuration != null)
      (Icons.schedule_rounded, 'Duration', '${m.anime!.episodeDuration}m'),
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
    return Column(
      children: [
        if (items.isNotEmpty) _strip(context, items),
        if (airing != null) _airing(context, m, airing),
      ],
    );
  });

  Widget _strip(BuildContext context, List<(IconData, String, String)> items) {
    return SectionCard(
      margin: _margin,
      child: Row(
        children: [
          for (final (i, stat) in items.indexed) ...[
            Expanded(
              child: StatTile(icon: stat.$1, label: stat.$2, value: stat.$3),
            ),
            if (i != items.length - 1)
              Container(
                width: 1,
                height: 34,
                color: context.colorScheme.outlineVariant.withValues(
                  alpha: 0.5,
                ),
              ),
          ],
        ],
      ),
    );
  }

  Widget _airing(BuildContext context, Media m, Duration until) {
    final ep = m.anime?.nextAiringEpisode;
    return SectionCard(
      margin: _margin,
      child: Row(
        children: [
          Icon(Icons.podcasts_rounded, color: context.colorScheme.primary),
          SizedBox(width: Dimens.gap),
          Expanded(
            child: Text(
              ep != null
                  ? 'Episode $ep airs in ${_duration(until)}'
                  : 'Next episode in ${_duration(until)}',
              style: context.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
