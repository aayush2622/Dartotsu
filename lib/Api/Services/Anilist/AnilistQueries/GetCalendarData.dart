part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<List<Media>> _getCalendarData() async {
    final bodies = <String>[];
    for (var page = 1; page <= 6; page++) {
      final body = await client.queryRaw(_queryCalendar(page));
      bodies.add(body);
      if (!body.contains('"hasNextPage":true')) break;
    }
    return compute(_parseCalendar, bodies);
  }
}

List<Media> _parseCalendar(List<dynamic> bodies) {
  final out = <Media>[];
  for (final body in bodies) {
    final node = anilistData(body as String)['Page'] as Map<String, dynamic>?;
    for (final s
        in ((node?['airingSchedules'] as List?) ?? const [])
            .cast<Map<String, dynamic>>()) {
      final m = s['media'] as Map<String, dynamic>?;
      if (m == null || m['countryOfOrigin'] != 'JP' || m['isAdult'] == true) {
        continue;
      }
      out.add(
        mapAnilistMedia(m)..relation = '${s['episode']},${s['airingAt']}',
      );
    }
  }
  return out.reversed.toList();
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
