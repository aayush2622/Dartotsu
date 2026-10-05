import '../../../../Core/Preferences/PrefManager.dart';
import '../../../../Core/Services/MediaService.dart';
import '../../../../Model/SearchResults.dart';
import '../AnilistAuth.dart';

const _anilistSorts = {
  'SCORE_DESC': 'Top rated',
  'POPULARITY_DESC': 'Most popular',
  'TRENDING_DESC': 'Trending',
  'START_DATE_DESC': 'Newest',
  'TITLE_ROMAJI': 'A–Z',
  'FAVOURITES_DESC': 'Most favourited',
};

class AnilistSearchView extends SearchScreenView {
  @override
  Future<SearchResults?> search(SearchResults query) =>
      anilistAuth.queries.search(query);

  @override
  List<MediaType> get types => const [MediaType.anime, MediaType.manga];

  @override
  SearchFilterSpec filters(MediaType type) {
    final anime = type.isVideo;
    final genres =
        loadCustomData<List<String>>('anilist_genres') ?? const <String>[];
    final tags =
        loadCustomData<List<String>>('anilist_tags_nonadult') ??
        const <String>[];
    return SearchFilterSpec(
      sorts: _anilistSorts,
      formats: anime
          ? const ['TV', 'TV SHORT', 'MOVIE', 'SPECIAL', 'OVA', 'ONA', 'MUSIC']
          : const ['MANGA', 'NOVEL', 'ONE SHOT'],
      statuses: const [
        'RELEASING',
        'FINISHED',
        'NOT YET RELEASED',
        'CANCELLED',
        'HIATUS',
      ],
      sources: const [
        'ORIGINAL',
        'MANGA',
        'LIGHT NOVEL',
        'VISUAL NOVEL',
        'VIDEO GAME',
        'NOVEL',
        'WEB NOVEL',
        'OTHER',
      ],
      genres: genres,
      tags: tags,
      countries: const {
        '': 'Any country',
        'JP': 'Japan',
        'KR': 'Korea',
        'CN': 'China',
        'TW': 'Taiwan',
      },
      season: anime,
      year: true,
    );
  }
}
