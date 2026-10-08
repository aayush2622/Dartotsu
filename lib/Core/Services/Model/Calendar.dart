import 'Media.dart';

class CalendarEntry {
  final Media media;
  final int episode;
  final DateTime airingAt;

  const CalendarEntry({
    required this.media,
    required this.episode,
    required this.airingAt,
  });
}
