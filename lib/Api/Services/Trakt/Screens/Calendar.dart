import '../../../../Core/Services/MediaService.dart';
import '../Auth.dart';

class TraktCalendarView implements CalendarScreenView {
  @override
  Stream<List<CalendarEntry>> schedule() => traktAuth.queries.schedule();
}
