import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Services/Api/AniTrendz.dart';
import '../../Core/Services/MediaService.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Animation/WidgetAnimations.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Widgets/Components/Clickable.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScreenState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/ThemedContainer.dart';
import '../Feed/FeedNavigation.dart';
import 'ChartsState.dart';

class ChartsScreen extends StatefulWidget {
  final MediaService service;

  const ChartsScreen({super.key, required this.service});

  @override
  State<ChartsScreen> createState() => _ChartsScreenState();
}

class _ChartsScreenState extends BaseScreen<ChartsScreen>
    with ScreenStateHost<ChartsScreen, ChartsState> {
  @override
  ChartsState buildState() => ChartsState();

  @override
  Widget buildContent(BuildContext context) => Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppScreenBar(title: getString.trendzTitle),
    body: Watch(() => _body(context)),
  );

  String _label(TrendzChart c) => switch (c) {
    TrendzChart.anime => getString.trendzAnime,
    TrendzChart.female => getString.trendzFemale,
    TrendzChart.male => getString.trendzMale,
    TrendzChart.couple => getString.trendzCouple,
  };

  Widget _body(BuildContext context) {
    final scheme = context.colorScheme;
    final week = state.week.value;
    final loading = state.loading.value;
    final error = state.error.value;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.pagePad,
            vertical: Dimens.gapSm,
          ),
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: AppChoiceChips<TrendzChart>(
              scrollable: true,
              value: state.chart.value,
              onChanged: state.select,
              options: [
                for (final c in TrendzChart.values)
                  AppSegment(c, label: _label(c)),
              ],
            ),
          ),
        ),
        Expanded(
          child: RefreshIndicator(
            onRefresh: () => state.load(force: true),
            child: ScrollConfig(
              context,
              child: ListView(
                padding: EdgeInsets.fromLTRB(
                  Dimens.pagePad,
                  0,
                  Dimens.pagePad,
                  Dimens.gapXl * 2,
                ),
                children: [
                  if (week != null) _header(context, week),
                  if (loading && week == null)
                    Skeletonizer(
                      child: Column(
                        children: [
                          for (var i = 0; i < 8; i++)
                            _tile(
                              context,
                              TrendzEntry(
                                position: i + 1,
                                name: 'Loading the chart entry',
                                sub: 'Studio',
                                votes: 100,
                              ),
                              false,
                            ),
                        ],
                      ),
                    )
                  else if (error != null && week == null)
                    EmptyState(
                      icon: Icons.cloud_off_rounded,
                      failed: true,
                      title: error,
                      actionLabel: getString.retry,
                      onAction: () => unawaited(state.load(force: true)),
                    )
                  else if (week != null && week.entries.isEmpty)
                    EmptyState(
                      icon: Icons.bar_chart_rounded,
                      title: getString.trendzEmpty,
                    )
                  else if (week != null)
                    for (final (i, e) in week.entries.indexed)
                      _tile(
                        context,
                        e,
                        state.chart.value == TrendzChart.anime,
                      ).animateStagger(i),
                  SizedBox(height: Dimens.gap),
                  Center(
                    child: Text(
                      getString.trendzCredit,
                      style: context.textTheme.labelSmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _header(BuildContext context, TrendzWeek week) {
    final scheme = context.colorScheme;
    final season = week.season.isEmpty
        ? ''
        : week.season[0].toUpperCase() + week.season.substring(1);
    return Padding(
      padding: EdgeInsets.only(bottom: Dimens.gap),
      child: Row(
        children: [
          Expanded(
            child: Text(
              getString.trendzWeek(week.week, season),
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Text(
            getString.trendzVotes('${week.votes}'),
            style: context.textTheme.labelMedium?.copyWith(
              color: scheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }

  Widget _tile(BuildContext context, TrendzEntry e, bool searchable) {
    final scheme = context.colorScheme;
    final text = context.textTheme;
    final top = e.position <= 3;
    return Padding(
      padding: EdgeInsets.only(bottom: Dimens.gapSm),
      child: Clickable(
        onTap: searchable
            ? () => openSearch(
                context,
                widget.service,
                type: MediaType.anime,
                query: e.name,
              )
            : null,
        child: ThemedContainer(
          blur: false,
          color: scheme.surfaceContainerLow,
          borderRadius: Dimens.borderSm,
          padding: EdgeInsets.all(Dimens.gapSm),
          child: Row(
            children: [
              SizedBox(
                width: 40,
                child: Text(
                  '${e.position}',
                  textAlign: TextAlign.center,
                  style: text.titleLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: top ? scheme.primary : scheme.onSurface,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  width: 56,
                  height: 76,
                  child: cachedNetworkImage(
                    imageUrl: e.image,
                    fit: BoxFit.cover,
                    width: 56,
                    height: 76,
                  ),
                ),
              ),
              SizedBox(width: Dimens.gap),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      e.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: text.titleSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    if (e.sub.isNotEmpty)
                      Text(
                        e.sub,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: text.bodySmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                    SizedBox(height: Dimens.gapXs),
                    Text(
                      [
                        getString.trendzPeak('${e.peak}'),
                        getString.trendzWeeks('${e.weeks}'),
                      ].join(' · '),
                      style: text.labelSmall?.copyWith(
                        color: scheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              _movement(context, e),
            ],
          ),
        ),
      ),
    );
  }

  Widget _movement(BuildContext context, TrendzEntry e) {
    final scheme = context.colorScheme;
    if (e.isNew) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text(
          getString.trendzNew,
          style: context.textTheme.labelMedium?.copyWith(
            color: scheme.tertiary,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    }
    final change = e.change ?? 0;
    final color = change > 0
        ? Colors.green
        : change < 0
        ? scheme.error
        : scheme.onSurfaceVariant;
    return SizedBox(
      width: 44,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            change > 0
                ? Icons.arrow_drop_up_rounded
                : change < 0
                ? Icons.arrow_drop_down_rounded
                : Icons.remove_rounded,
            color: color,
          ),
          if (change != 0)
            Text(
              '${change.abs()}',
              style: context.textTheme.labelSmall?.copyWith(color: color),
            ),
        ],
      ),
    );
  }
}
