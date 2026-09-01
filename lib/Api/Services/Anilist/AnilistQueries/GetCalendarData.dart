part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<List<Media>> _getCalendarData() async {
    final out = <Media>[];
    var page = 1;
    var hasNextPage = true;

    while (hasNextPage) {
      final data = await executeQuery(_queryCalendar(page));
      final node = data['Page'] as Map<String, dynamic>?;
      final schedules = (node?['airingSchedules'] as List?) ?? const [];

      for (final s in schedules.cast<Map<String, dynamic>>()) {
        final m = s['media'] as Map<String, dynamic>?;
        if (m == null || m['countryOfOrigin'] != 'JP' || m['isAdult'] == true) {
          continue;
        }
        out.add(
          mapAnilistMedia(m)..relation = '${s['episode']},${s['airingAt']}',
        );
      }

      hasNextPage = (node?['pageInfo'] as Map?)?['hasNextPage'] == true;
      page++;
    }

    return out.reversed.toList();
  }
}

String _queryCalendar(int page) {
  final curr = DateTime.now().millisecondsSinceEpoch ~/ 1000;
  return '''
{
  Page(page: $page, perPage: 50) {
    pageInfo { hasNextPage }
    airingSchedules(
      airingAt_greater: ${curr - 86400},
      airingAt_lesser: ${curr + 86400 * 6},
      sort: TIME_DESC
    ) {
      episode airingAt
      media { $anilistMediaFragment }
    }
  }
}''';
}
