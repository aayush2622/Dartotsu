import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';

import '../../Api/Services/Extension/Services.dart';
import '../Services/Screens/ServiceScreens.dart';
import '../State/State.dart';
import 'SourceAlerts.dart';
import 'SourceSchedule.dart';
import 'SourceSub.dart';
import 'SourceSubscriptions.dart';

List<CalendarEntry> subscriptionCalendar({String? serviceId, bool? chapters}) {
  final subs = tryFind<SourceSubscriptions>()?.subs;
  if (subs == null) return const [];
  final alerts = tryFind<SourceAlerts>();
  final now = DateTime.now().millisecondsSinceEpoch;
  final out = <CalendarEntry>[];
  for (final sub in subs) {
    if (sub.muted || sub.health == SubHealth.finished) continue;
    if (serviceId != null &&
        sub.serviceId != serviceId &&
        sub.serviceId != extensionServiceId) {
      continue;
    }
    final chapter = ItemType.values.asNameMap()[sub.type] != ItemType.anime;
    if (chapters != null && chapter != chapters) continue;
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
          chapter: chapter,
          source: sub.sourceName,
          open: alerts == null ? null : () => alerts.openSub(sub),
        ),
      );
    }
  }
  out.sort((a, b) => a.airingAt.compareTo(b.airingAt));
  return out;
}

class SubscriptionCalendarView implements CalendarScreenView {
  final String? serviceId;
  final bool? chapters;

  const SubscriptionCalendarView({this.serviceId, this.chapters});

  @override
  Stream<List<CalendarEntry>> schedule() => Stream.value(
    subscriptionCalendar(serviceId: serviceId, chapters: chapters),
  );
}
