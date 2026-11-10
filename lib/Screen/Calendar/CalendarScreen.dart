import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Api/Discord/DiscordPresence.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/AppControls.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/CachedNetworkImage.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../Feed/FeedNavigation.dart';
import '../../Core/State/State.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'CalendarState.dart';

class CalendarScreen extends StatefulWidget {
  final CalendarScreenView view;
  const CalendarScreen({super.key, required this.view});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends BaseScreen<CalendarScreen>
    with ScreenStateHost<CalendarScreen, CalendarState> {
  @override
  CalendarState buildState() => CalendarState(widget.view);

  @override
  DiscordPresence? get presence => state.presence;

  @override
  Widget buildContent(BuildContext context) {
    final locale = Localizations.localeOf(context).toString();
    final days = state.days;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(title: getString.calendarTitle),
      body: Column(
        children: [
          Watch(() {
            final selected = state.day.value;
            return ScrollConfig(
              context,
              child: ScrollConfig(
                context,
                child: ScrollConfig(context, child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimens.gap,
                    vertical: Dimens.gapXs,
                  ),
                  child: AppChoiceChips<int>(
                    value: selected,
                    onChanged: (v) => state.day.value = v,
                    options: [
                      for (var i = 0; i < days.length; i++)
                        AppSegment(
                          i - 1,
                          label: i == 1
                              ? getString.calendarToday
                              : DateFormat('EEE d', locale).format(days[i]),
                        ),
                    ],
                  ),
                )),
              ),
            );
          }),
          Watch(() {
            if (!state.hasBothKinds) return const SizedBox.shrink();
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.gap,
                vertical: Dimens.gapXs,
              ),
              child: AppSegmented<CalendarFilter>(
                value: state.filter.value,
                onChanged: (v) => state.filter.value = v,
                segments: [
                  AppSegment(CalendarFilter.all, label: getString.calendarAll),
                  AppSegment(
                    CalendarFilter.anime,
                    label: getString.calendarAnime,
                  ),
                  AppSegment(
                    CalendarFilter.manga,
                    label: getString.calendarManga,
                  ),
                ],
              ),
            );
          }),
          Expanded(
            child: RefreshIndicator(
              onRefresh: state.load,
              child: Watch(() {
                final loading = state.loading.value;
                final failed = state.failed.value;
                final items = state.selectedEntries;
                if (loading && state.entries.isEmpty) return _skeleton();
                if (items.isEmpty) {
                  return ScrollConfig(
                    context,
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 320,
                          child: EmptyState(
                            icon: Icons.event_busy_rounded,
                            title: failed
                                ? getString.calendarFailed
                                : getString.calendarEmpty,
                            failed: failed,
                            onAction: failed ? state.load : null,
                          ),
                        ),
                      ],
                    ),
                  );
                }
                return ScrollConfig(
                  context,
                  child: ListView.builder(
                    padding: EdgeInsets.fromLTRB(
                      Dimens.gap,
                      Dimens.gapXs,
                      Dimens.gap,
                      Dimens.gapXl,
                    ),
                    itemCount: items.length,
                    itemBuilder: (_, i) => _row(items[i]),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _row(CalendarEntry e) {
    final scheme = context.colorScheme;
    final aired = e.airingAt.isBefore(DateTime.now());
    final service = state.service;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Dimens.gapXs),
      child: SectionCard(
        padding: EdgeInsets.zero,
        child: Material(
          color: Colors.transparent,
          borderRadius: Dimens.border,
          clipBehavior: Clip.antiAlias,
          child: DpadTap(
            borderRadius: Dimens.border,
            onTap: () => e.open != null
                ? e.open!()
                : openDetail(context, service, e.media),
            child: Padding(
              padding: EdgeInsets.all(Dimens.gapSm + 2),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: SizedBox(
                      width: 52,
                      height: 72,
                      child: cachedNetworkImage(
                        imageUrl: e.media.cover,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e.media.mainName,
                          style: context.textTheme.titleSmall,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        if (e.episode != null || e.source != null)
                          Text(
                            [
                              if (e.episode != null)
                                e.chapter
                                    ? getString.calendarChapter(e.episode!)
                                    : getString.calendarEpisode(e.episode!),
                              ?e.source,
                            ].join(' · '),
                            style: context.textTheme.bodySmall?.copyWith(
                              color: scheme.onSurfaceVariant,
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        DateFormat.jm(
                          Localizations.localeOf(context).toString(),
                        ).format(e.airingAt),
                        style: context.textTheme.labelLarge?.copyWith(
                          color: e.expected
                              ? scheme.tertiary
                              : aired
                              ? scheme.onSurfaceVariant
                              : scheme.primary,
                        ),
                      ),
                      if (e.expected)
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.schedule_rounded,
                              size: 12,
                              color: scheme.tertiary,
                            ),
                            const SizedBox(width: 3),
                            Text(
                              getString.calendarExpected,
                              style: context.textTheme.labelSmall?.copyWith(
                                color: scheme.tertiary,
                              ),
                            ),
                          ],
                        )
                      else if (aired)
                        Icon(
                          Icons.check_circle_rounded,
                          size: 16,
                          color: scheme.onSurfaceVariant,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _skeleton() => Skeletonizer(
    child: ListView.builder(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 24),
      itemCount: 6,
      itemBuilder: (_, i) => _row(
        CalendarEntry(
          media: Media.skeleton(),
          episode: 1,
          airingAt: DateTime.now(),
        ),
      ),
    ),
  );
}
