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

class CalendarScreen extends StatefulWidget {
  final CalendarScreenView view;
  const CalendarScreen({super.key, required this.view});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends BaseScreen<CalendarScreen> {
  final _entries = <CalendarEntry>[].liveList;
  final _loading = true.live;
  final _failed = false.live;
  final _day = 0.live;

  static DateTime _dayOf(DateTime t) => DateTime(t.year, t.month, t.day);

  final _today = _dayOf(DateTime.now());

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    _loading.value = true;
    _failed.value = false;
    try {
      _entries.value = await widget.view.schedule();
    } catch (_) {
      _failed.value = true;
    } finally {
      _loading.value = false;
    }
  }

  @override
  DiscordPresence? get presence =>
      DiscordPresence.browsing(getString.calendarTitle);

  @override
  Widget buildContent(BuildContext context) {
    final locale = Localizations.localeOf(context).toString();
    final days = [for (var i = -1; i <= 5; i++) _today.add(Duration(days: i))];
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(title: getString.calendarTitle),
      body: Column(
        children: [
          Watch(() {
            final selected = _day.value;
            return ScrollConfig(
              context,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.gap,
                  vertical: Dimens.gapXs,
                ),
                child: AppChoiceChips<int>(
                  value: selected,
                  onChanged: (v) => _day.value = v,
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
              ),
            );
          }),
          Expanded(
            child: RefreshIndicator(
              onRefresh: _load,
              child: Watch(() {
                final day = _today.add(Duration(days: _day.value));
                final loading = _loading.value;
                final failed = _failed.value;
                final items = [
                  for (final e in _entries)
                    if (_dayOf(e.airingAt) == day) e,
                ];
                if (loading && _entries.isEmpty) return _skeleton();
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
                            onAction: failed ? _load : null,
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
    final service = find<MediaServiceController>().currentService.value;
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
            onTap: () => openDetail(context, service, e.media),
            child: Padding(
              padding: EdgeInsets.all(Dimens.gapSm + 2),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
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
                        if (e.episode != null)
                          Text(
                            getString.calendarEpisode(e.episode!),
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
                          color: aired
                              ? scheme.onSurfaceVariant
                              : scheme.primary,
                        ),
                      ),
                      if (aired)
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
