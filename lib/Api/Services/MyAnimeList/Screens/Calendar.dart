import '../../../../Core/Services/MediaService.dart';
import '../Auth.dart';

class MalCalendarView implements CalendarScreenView {
  @override
  Stream<List<CalendarEntry>> schedule() => malAuth.queries.schedule();
}
