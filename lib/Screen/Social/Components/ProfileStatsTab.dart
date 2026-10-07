import 'dart:async';

import 'package:flutter/material.dart';

import '../../../Utils/Extensions/ClickCursor.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Utils/Extensions/Responsive.dart';
import '../../../Widgets/Components/AppControls.dart';
import '../../../Widgets/Components/EmptyState.dart';
import '../../../Widgets/Components/ScrollConfig.dart';
import '../../../Widgets/Components/SectionCard.dart';
import '../../../Widgets/Charts/ActivityHeatmap.dart';
import '../../../Widgets/Charts/ChartData.dart';
import '../../../Widgets/Charts/ColumnChart.dart';
import '../../../Widgets/Charts/DonutChart.dart';
import '../../../Widgets/Charts/LineChart.dart';
import '../../../Widgets/Charts/RadarChart.dart';
import '../../Feed/FeedNavigation.dart';
import '../../../Core/State/State.dart';

enum _Metric { count, time, score }

class ProfileStatsTab extends StatefulWidget {
  final MediaService service;
  final String userId;
  final Future<SocialProfile?> bundle;

  const ProfileStatsTab({
    super.key,
    required this.service,
    required this.userId,
    required this.bundle,
  });

  @override
  State<ProfileStatsTab> createState() => _ProfileStatsTabState();
}

class _ProfileStatsTabState extends State<ProfileStatsTab>
    with AutomaticKeepAliveClientMixin {
  final _stats = Live<UserStats?>(null);
  final _history = const <ActivityDay>[].live;
  final _failed = false.live;
  final _anime = true.live;
  final _metric = _Metric.count.live;
  final _expanded = <String>{}.live;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  Future<void> _load() async {
    _failed.value = false;
    try {
      final view = widget.service.socialView!;
      final bundled = await widget.bundle;
      final preloaded = bundled?.history;
      final results = await Future.wait<Object?>([
        bundled?.stats != null
            ? Future.value(bundled!.stats)
            : view.stats(widget.userId),
        preloaded != null
            ? Future.value(preloaded)
            : view
                  .activityHistory(widget.userId)
                  .catchError((_) => <ActivityDay>[]),
      ]);
      final stats = results[0] as UserStats?;
      if (!mounted) return;
      _history.value = results[1] as List<ActivityDay>;
      _stats.value = stats;
      _failed.value = stats == null;
    } catch (_) {
      if (mounted) _failed.value = true;
    }
  }

  static const _natural = {
    'formats',
    'statuses',
    'scores',
    'lengths',
    'releaseYears',
    'startYears',
  };

  double _value(StatEntry e) => switch (_metric.value) {
    _Metric.count => e.count.toDouble(),
    _Metric.time =>
      _anime.value ? e.minutesWatched / 60 : e.chaptersRead.toDouble(),
    _Metric.score => e.meanScore,
  };

  String _format(double v) {
    if (_metric.value == _Metric.score) return v.toStringAsFixed(1);
    if (v >= 1000) return '${(v / 1000).toStringAsFixed(1)}K';
    return v == v.roundToDouble() ? '${v.round()}' : v.toStringAsFixed(1);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Watch(() => _build(context));
  }

  Widget _build(BuildContext context) {
    final stats = _stats.value;
    if (_failed.value) {
      return EmptyState(
        icon: Icons.cloud_off_rounded,
        failed: true,
        title: "Couldn't load stats",
        onAction: _load,
      );
    }
    if (stats == null) {
      return const Center(child: CircularProgressIndicator());
    }
    final set = _anime.value ? stats.anime : stats.manga;
    return ScrollConfig(
      context,
      child: ListView(
        padding: EdgeInsets.only(top: Dimens.gapSm, bottom: 120),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
            child: AppSegmented<bool>(
              value: _anime.value,
              onChanged: (v) => _anime.value = v,
              segments: const [
                AppSegment(true, label: 'Anime'),
                AppSegment(false, label: 'Manga'),
              ],
            ),
          ),
          SizedBox(height: Dimens.gapSm),
          if (_history.value.isNotEmpty)
            SectionCard(
              title: 'Activity',
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.pagePad,
                vertical: Dimens.gapSm / 2,
              ),
              child: ActivityHeatmap(days: _history.value),
            ),
          SizedBox(height: Dimens.gapSm),
          _overview(context, set),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.pagePad,
              vertical: Dimens.gapSm,
            ),
            child: AppChoiceChips<_Metric>(
              value: _metric.value,
              onChanged: (m) => _metric.value = m,
              options: [
                const AppSegment(_Metric.count, label: 'Count'),
                AppSegment(
                  _Metric.time,
                  label: _anime.value ? 'Hours watched' : 'Chapters read',
                ),
                const AppSegment(_Metric.score, label: 'Mean score'),
              ],
            ),
          ),
          if (set.categories.isEmpty)
            const SizedBox(
              height: 260,
              child: EmptyState(
                icon: Icons.bar_chart_rounded,
                title: 'No stats yet',
              ),
            ),
          for (final category in set.categories) _category(context, category),
        ],
      ),
    );
  }

  Widget _overview(BuildContext context, UserStatSet s) {
    final scheme = context.colorScheme;
    final tiles = <(String, String)>[
      ('Total entries', '${s.count}'),
      if (_anime.value) ...[
        ('Episodes watched', '${s.episodesWatched}'),
        ('Days watched', (s.minutesWatched / 1440).toStringAsFixed(1)),
      ] else ...[
        ('Chapters read', '${s.chaptersRead}'),
        ('Volumes read', '${s.volumesRead}'),
      ],
      ('Mean score', s.meanScore.toStringAsFixed(1)),
      ('Standard deviation', s.standardDeviation.toStringAsFixed(1)),
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: [
          for (final (label, value) in tiles)
            Container(
              width: 150,
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: scheme.surfaceContainerHigh,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    value,
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    label,
                    style: context.textTheme.labelSmall?.copyWith(
                      color: scheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _category(BuildContext context, StatCategory category) {
    final scheme = context.colorScheme;
    var entries = [...category.entries];
    if (_natural.contains(category.key)) {
      if (category.key == 'scores' ||
          category.key == 'releaseYears' ||
          category.key == 'startYears' ||
          category.key == 'lengths') {
        entries.sort((a, b) => _naturalOrder(a.label, b.label));
      }
    } else {
      entries.sort((a, b) => _value(b).compareTo(_value(a)));
    }
    final open = _expanded.value.contains(category.key);
    final limit = _natural.contains(category.key) ? 40 : (open ? 40 : 10);
    final shown = entries.take(limit).toList();
    final maxValue = shown.fold<double>(
      0,
      (m, e) => _value(e) > m ? _value(e) : m,
    );
    final chart = _chart(context, category, entries, shown, maxValue, scheme);
    return SectionCard(
      title: category.title,
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.pagePad,
        vertical: Dimens.gapSm / 2,
      ),
      trailing: chart.showMoreToggle && entries.length > 10
          ? TextButton(
              onPressed: () => _expanded.value = open
                  ? ({..._expanded.value}..remove(category.key))
                  : {..._expanded.value, category.key},
              child: Text(open ? 'Show less' : 'Show more'),
            )
          : null,
      child: AnimatedSize(
        duration: const Duration(milliseconds: 240),
        curve: Curves.easeOutCubic,
        alignment: Alignment.topCenter,
        child: chart.widget,
      ),
    );
  }

  ChartDatum _datum(StatEntry e) =>
      ChartDatum(e.label, _value(e), _format(_value(e)), id: e.id);

  ({Widget widget, bool showMoreToggle}) _chart(
    BuildContext context,
    StatCategory category,
    List<StatEntry> all,
    List<StatEntry> shown,
    double maxValue,
    ColorScheme scheme,
  ) {
    Widget bars() => Column(
      children: [
        for (final e in shown) _bar(context, category, e, maxValue, scheme),
      ],
    );
    final score = _metric.value == _Metric.score;
    final unit = switch (_metric.value) {
      _Metric.count => 'Entries',
      _Metric.time => _anime.value ? 'Hours' : 'Chapters',
      _Metric.score => 'Mean score',
    };
    switch (category.key) {
      case 'formats' || 'statuses' || 'countries':
        if (score) return (widget: bars(), showMoreToggle: false);
        final ranked = [...all]..sort((a, b) => _value(b).compareTo(_value(a)));
        final data = [
          for (final e in ranked.take(12))
            if (_value(e) > 0) _datum(e),
        ];
        final total = data.fold(0.0, (s, d) => s + d.value);
        return (
          widget: DonutChart(
            data: data,
            centerLabel: unit,
            centerValue: _format(total),
          ),
          showMoreToggle: false,
        );
      case 'scores' || 'lengths':
        return (
          widget: ColumnChart(data: [for (final e in all) _datum(e)]),
          showMoreToggle: false,
        );
      case 'releaseYears' || 'startYears':
        return (
          widget: LineChart(data: [for (final e in all) _datum(e)]),
          showMoreToggle: false,
        );
      case 'genres':
        final top = [...all]..sort((a, b) => _value(b).compareTo(_value(a)));
        final radar = top.take(8).toList();
        return (
          widget: Column(
            children: [
              if (radar.length >= 3)
                RadarChart(data: [for (final e in radar) _datum(e)]),
              const SizedBox(height: 8),
              bars(),
            ],
          ),
          showMoreToggle: true,
        );
      default:
        return (widget: bars(), showMoreToggle: true);
    }
  }

  int _naturalOrder(String a, String b) {
    final x = double.tryParse(a);
    final y = double.tryParse(b);
    if (x != null && y != null) return x.compareTo(y);
    final xi = int.tryParse(a.split('-').first.trim());
    final yi = int.tryParse(b.split('-').first.trim());
    if (xi != null && yi != null) return xi.compareTo(yi);
    return a.compareTo(b);
  }

  EntityKind? _kind(String key) => switch (key) {
    'voiceActors' || 'staff' => EntityKind.staff,
    'studios' => EntityKind.studio,
    _ => null,
  };

  Widget _bar(
    BuildContext context,
    StatCategory category,
    StatEntry e,
    double maxValue,
    ColorScheme scheme,
  ) {
    final v = _value(e);
    final fraction = maxValue <= 0 ? 0.0 : (v / maxValue).clamp(0.0, 1.0);
    final kind = _kind(category.key);
    final tappable =
        kind != null && e.id != null && widget.service.entityView != null;
    return InkWell(
      mouseCursor: kClickCursor,
      borderRadius: BorderRadius.circular(8),
      onTap: tappable
          ? () =>
                openEntity(context, widget.service, kind, e.id!, name: e.label)
          : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            SizedBox(
              width: 112,
              child: Text(
                e.label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.bodySmall,
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: 16,
                    decoration: BoxDecoration(
                      color: scheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  TweenAnimationBuilder<double>(
                    tween: Tween(
                      begin: 0,
                      end: fraction == 0 ? 0.01 : fraction,
                    ),
                    duration: const Duration(milliseconds: 650),
                    curve: Curves.easeOutCubic,
                    builder: (_, value, _) => FractionallySizedBox(
                      widthFactor: value,
                      child: Container(
                        height: 16,
                        decoration: BoxDecoration(
                          color: scheme.primary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 52,
              child: Text(
                _format(v),
                textAlign: TextAlign.end,
                style: context.textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
