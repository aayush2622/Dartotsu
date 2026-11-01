import 'dart:async';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../Api/Discord/DiscordPresence.dart';
import '../../Api/Services/Extension/Screens/Calendar.dart';
import '../../Core/Services/MediaService.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Calendar.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/SourceAlerts/SourceAlerts.dart';
import '../../Core/SourceAlerts/SourceSchedule.dart';
import '../../Core/SourceAlerts/SourceSub.dart';
import '../../Core/SourceAlerts/SourceSubscriptions.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Widgets/Components/ScreenState.dart';

enum CalendarFilter { all, anime, manga }

class CalendarState extends ScreenState {
  final CalendarScreenView view;

  CalendarState(this.view);

  final entries = <CalendarEntry>[].liveList;
  final loading = true.live;
  final failed = false.live;
  final day = 0.live;
  final filter = CalendarFilter.all.live;

  static DateTime dayOf(DateTime t) => DateTime(t.year, t.month, t.day);

  final today = dayOf(DateTime.now());

  StreamSubscription<List<CalendarEntry>>? _sub;

  MediaService get service =>
      find<MediaServiceController>().currentService.value;

  DateTime _day(int offset) =>
      DateTime(today.year, today.month, today.day + offset);

  List<DateTime> get days => [for (var i = -1; i <= 5; i++) _day(i)];

  List<CalendarEntry> get selectedEntries {
    final selected = _day(day.value);
    final f = filter.value;
    return [
      for (final e in entries)
        if (dayOf(e.airingAt) == selected)
          if (f == CalendarFilter.all ||
              (f == CalendarFilter.manga && e.chapter) ||
              (f == CalendarFilter.anime && !e.chapter))
            e,
    ];
  }

  DiscordPresence get presence =>
      DiscordPresence.browsing(getString.calendarTitle);

  @override
  void onInit() => unawaited(load());

  List<CalendarEntry> _mangaSchedule(int now) {
    final subs = tryFind<SourceSubscriptions>()?.subs ?? const <SourceSub>[];
    final alerts = tryFind<SourceAlerts>();
    final out = <CalendarEntry>[];
    final currentId = service.id;
    for (final sub in subs) {
      if (sub.muted || sub.health == SubHealth.finished) continue;
      final isAnime =
          sub.anime || ItemType.values.asNameMap()[sub.type] == ItemType.anime;
      if (isAnime) continue;
      if (sub.serviceId != currentId && sub.serviceId != 'extension') continue;
      final media = sub.buildMedia();
      for (final r in subReleases(sub, now)) {
        final value = r.episode;
        out.add(
          CalendarEntry(
            media: media,
            episode: value != null && value == value.truncateToDouble()
                ? value.toInt()
                : null,
            airingAt: DateTime.fromMillisecondsSinceEpoch(r.at),
            expected: r.expected,
            chapter: true,
            source: sub.sourceName,
            open: alerts != null ? () => alerts.openSub(sub) : null,
          ),
        );
      }
    }
    return out;
  }

  Future<void> load() async {
    await _sub?.cancel();
    loading.value = true;
    failed.value = false;
    final done = Completer<void>();
    final now = DateTime.now().millisecondsSinceEpoch;
    final mangaEntries = view is! ExtensionCalendarView
        ? _mangaSchedule(now)
        : const <CalendarEntry>[];

    _sub = view.schedule().listen(
      (list) {
        final combined = [...list, ...mangaEntries]
          ..sort((a, b) => a.airingAt.compareTo(b.airingAt));
        entries.value = combined;
        loading.value = false;
      },
      onError: (_) {
        if (mangaEntries.isNotEmpty) {
          entries.value = mangaEntries;
          loading.value = false;
        } else {
          failed.value = entries.isEmpty;
          loading.value = false;
        }
        if (!done.isCompleted) done.complete();
      },
      onDone: () {
        if (entries.isEmpty && mangaEntries.isNotEmpty) {
          entries.value = mangaEntries;
        }
        loading.value = false;
        if (!done.isCompleted) done.complete();
      },
    );
    await done.future;
  }

  @override
  void onClose() => unawaited(_sub?.cancel());
}
