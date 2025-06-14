part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<List<String?>> _getBannerImages() async {
    final b = <String?>[null, null];
    b[0] = await _bannerImage("ANIME");
    b[1] = await _bannerImage("MANGA");
    return b;
  }

  Future<String?> _bannerImage(String type) async {
    var url = loadCustomData<String>("banner_${type}_url");
    var time = loadCustomData<int>("banner_${type}_time");
    bool checkTime() {
      if (time == null) return true;
      return DateTime.now()
              .difference(DateTime.fromMillisecondsSinceEpoch(time))
              .inDays >
          1;
    }

    if (url == null || url.isEmpty || checkTime()) {
      final response =
          await executeQuery<MediaListCollectionResponse>(_queryBanner(type));
      final entries = response?.data?.mediaListCollection?.lists
          ?.expand((list) => list.entries ?? [] as List<api.MediaList>)
          .where((e) => !(e.media?.isAdult ?? false))
          .map((e) => e.media?.bannerImage)
          .where((url) => url != null && url != 'null')
          .cast<String>()
          .toList() ?? [];

      entries.shuffle(Random());
      var random = entries.isNotEmpty ? entries.first : null;

      saveCustomData("banner_${type}_url", random);
      saveCustomData(
          "banner_${type}_time", DateTime.now().millisecondsSinceEpoch);

      return random;
    } else {
      return url;
    }
  }
}

String _queryBanner(String type) => '''{
  MediaListCollection(
    userId: ${Anilist.userid}, 
    type: $type, 
    chunk: 1, 
    perChunk: 25, 
    sort: [SCORE_DESC, UPDATED_TIME_DESC]
  ) { 
    lists { 
      entries { 
        media { 
          id 
          bannerImage 
          isAdult
        } 
      } 
    } 
  } 
}
''';
