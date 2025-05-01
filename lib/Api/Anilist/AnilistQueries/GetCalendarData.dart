part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<List<Media>> _getCalendarData() async {
    int page = 1;
    List<Media> mediaList = [];

    Future<Page?> execute(int page) async =>
        (await executeQuery<PageResponse>(_queryCalendar(page), force: true))
            ?.data
            ?.page;

    Page? result;
    do {
      result = await execute(page);
      if (result != null && result.airingSchedules != null) {
        List<Media> process(Map<String, dynamic> params) {
          var result = params['page'] as Page;
          var adult = params['adult'] as bool;
          return result.airingSchedules!
              .where((m) =>
                  m.media != null &&
                  m.media!.countryOfOrigin == "JP" &&
                  (!adult || m.media!.isAdult == false))
              .map((j) {
            final mediaItem = Media.mediaData(j.media!);
            mediaItem.relation = "${j.episode},${j.airingAt}";
            return mediaItem;
          }).toList();
        }

        mediaList.addAll(
            await compute(process, {'page': result, 'adult': Anilist.adult}));
        page++;
      }
    } while (result?.pageInfo?.hasNextPage == true);

    return mediaList.reversed.toList();
  }

  _queryCalendar(int page) {
    final int curr = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    return '''{
      Page(page: $page, perPage: 50) {
        pageInfo {
          hasNextPage
          total
        }
        airingSchedules(
          airingAt_greater: ${curr - 86400},
          airingAt_lesser: ${curr + (86400 * 6)},
          sort: TIME_DESC
        ) {
          episode
          airingAt
          media {
            id
            idMal
            status
            chapters
            episodes
            nextAiringEpisode { episode }
            isAdult
            type
            meanScore
            isFavourite
            format
            bannerImage
            countryOfOrigin
            coverImage { large }
            title {
              english
              romaji
              userPreferred
            }
            mediaListEntry {
              progress
              private
              score(format: POINT_100)
              status
            }
          }
        }
      }
    }''';
  }
}
