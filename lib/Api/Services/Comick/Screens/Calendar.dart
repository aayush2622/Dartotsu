import '../../../../Core/Services/MediaService.dart';
import '../Auth.dart';

class ComickCalendarView implements CalendarScreenView {
  @override
  Stream<List<CalendarEntry>> schedule() async* {
    final media = await comickAuth.queries.getCalendarData();
    final out = <CalendarEntry>[];
    for (final m in media) {
      final parts = m.relation?.split(',');
      if (parts != null && parts.length >= 2) {
        final ep = int.tryParse(parts[0]);
        final sec = int.tryParse(parts[1]);
        if (sec != null) {
          out.add(
            CalendarEntry(
              media: m,
              episode: ep,
              airingAt: DateTime.fromMillisecondsSinceEpoch(sec * 1000),
            ),
          );
        }
      }
    }
    yield out;
  }
}
