part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<List<String?>> _getBannerImages() async => [
    await _bannerImage('ANIME'),
    await _bannerImage('MANGA'),
  ];

  Future<String?> _bannerImage(String type) async {
    final id = userId();
    if (id == null) return null;

    final cached = loadCustomData<String>('banner_${type}_url');
    final savedAt = loadCustomData<int>('banner_${type}_time');
    final stale =
        savedAt == null ||
        DateTime.now()
                .difference(DateTime.fromMillisecondsSinceEpoch(savedAt))
                .inDays >
            1;
    if (cached != null && cached.isNotEmpty && !stale) return cached;

    final data = await client.query(_queryBanner(id, type));
    final lists =
        ((data['MediaListCollection'] as Map<String, dynamic>?)?['lists']
            as List?) ??
        const [];
    final banners = <String>[];
    for (final list in lists.cast<Map<String, dynamic>>()) {
      for (final entry
          in ((list['entries'] as List?) ?? const [])
              .cast<Map<String, dynamic>>()) {
        final media = entry['media'] as Map<String, dynamic>?;
        final banner = media?['bannerImage'] as String?;
        if (media?['isAdult'] == true || banner == null || banner == 'null') {
          continue;
        }
        banners.add(banner);
      }
    }

    final pick = banners.isEmpty
        ? null
        : banners[Random().nextInt(banners.length)];
    saveCustomData('banner_${type}_url', pick ?? '');
    saveCustomData(
      'banner_${type}_time',
      DateTime.now().millisecondsSinceEpoch,
    );
    return pick;
  }
}

String _queryBanner(int userId, String type) =>
    '''
{
  MediaListCollection(
    userId: $userId, type: $type, chunk: 1, perChunk: 25,
    sort: [SCORE_DESC, UPDATED_TIME_DESC]
  ) {
    lists { entries { media { id bannerImage isAdult } } }
  }
}''';
