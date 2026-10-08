import '../../../../Core/Services/MediaService.dart';
import '../Auth.dart';

class SimklCalendarView implements CalendarScreenView {
  @override
  Stream<List<CalendarEntry>> schedule() => simklAuth.queries.schedule();
}
