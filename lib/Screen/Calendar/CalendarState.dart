import 'dart:async';

import '../../Api/Discord/DiscordPresence.dart';
import '../../Core/Services/MediaServiceController.dart';
import '../../Core/SourceAlerts/SubCalendar.dart';
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

  bool get hasBothKinds =>
      entries.any((e) => e.chapter) && entries.any((e) => !e.chapter);

  bool _shown(CalendarEntry e) => switch (filter.value) {
    CalendarFilter.all => true,
    CalendarFilter.manga => e.chapter,
    CalendarFilter.anime => !e.chapter,
  };

  List<CalendarEntry> get selectedEntries {
    final selected = _day(day.value);
    return [
      for (final e in entries)
        if (dayOf(e.airingAt) == selected && _shown(e)) e,
    ];
  }

  DiscordPresence get presence =>
      DiscordPresence.browsing(getString.calendarTitle);

  @override
  void onInit() => unawaited(load());

  void _show(List<CalendarEntry> list, List<CalendarEntry> extra) {
    entries.value = [...list, ...extra]
      ..sort((a, b) => a.airingAt.compareTo(b.airingAt));
    if (!hasBothKinds) filter.value = CalendarFilter.all;
    loading.value = false;
  }

  Future<void> load() async {
    await _sub?.cancel();
    loading.value = true;
    failed.value = false;
    final done = Completer<void>();
    final extra = view is SubscriptionCalendarView
        ? const <CalendarEntry>[]
        : subscriptionCalendar(serviceId: service.id, chapters: true);

    _sub = view.schedule().listen(
      (list) => _show(list, extra),
      onError: (_) {
        if (entries.isEmpty) _show(const [], extra);
        failed.value = entries.isEmpty;
        loading.value = false;
        if (!done.isCompleted) done.complete();
      },
      onDone: () {
        if (entries.isEmpty) _show(const [], extra);
        loading.value = false;
        if (!done.isCompleted) done.complete();
      },
    );
    await done.future;
  }

  @override
  void onClose() => unawaited(_sub?.cancel());
}
