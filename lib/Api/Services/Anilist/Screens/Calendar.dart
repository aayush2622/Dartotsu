import '../../../../Core/Services/MediaService.dart';
import '../Auth.dart';

class AnilistCalendarView implements CalendarScreenView {
  @override
  Future<List<CalendarEntry>> schedule() async {
    final media = await anilistAuth.queries.getCalendarData();
    final entries = <CalendarEntry>[];
    for (final m in media) {
      final parts = (m.relation ?? '').split(',');
      final episode = int.tryParse(parts.first);
      final at = parts.length > 1 ? int.tryParse(parts[1]) : null;
      if (episode == null || at == null) continue;
      entries.add(
        CalendarEntry(
          media: m,
          episode: episode,
          airingAt: DateTime.fromMillisecondsSinceEpoch(at * 1000),
        ),
      );
    }
    entries.sort((a, b) => a.airingAt.compareTo(b.airingAt));
    return entries;
  }
}
