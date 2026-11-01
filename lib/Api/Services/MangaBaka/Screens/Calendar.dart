import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/SourceAlerts/SourceAlerts.dart';
import '../../../../Core/SourceAlerts/SourceSchedule.dart';
import '../../../../Core/SourceAlerts/SourceSub.dart';
import '../../../../Core/SourceAlerts/SourceSubscriptions.dart';
import '../../../../Core/State/State.dart';
import '../MangaBakaService.dart';

class MangaBakaCalendarView implements CalendarScreenView {
  @override
  Stream<List<CalendarEntry>> schedule() async* {
    final now = DateTime.now().millisecondsSinceEpoch;
    final alerts = tryFind<SourceAlerts>();
    final out = <CalendarEntry>[];
    for (final sub in tryFind<SourceSubscriptions>()?.subs ?? const <SourceSub>[]) {
      if (sub.muted || sub.health == SubHealth.finished) continue;
      if (sub.serviceId != mangaBakaServiceId && sub.serviceId != 'extension') {
        continue;
      }
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
    out.sort((a, b) => a.airingAt.compareTo(b.airingAt));
    yield out;
  }
}
