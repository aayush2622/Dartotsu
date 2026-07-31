import 'package:dartotsu/DataClass/Media.dart';
import 'package:dartotsu/DataClass/SearchResults.dart';
import '../../Services/Api/Queries.dart';
import 'MangaBaka.dart';
import 'MangaBakaModels.dart';

class MangaBakaQueries extends Queries {
  final MangaBakaController controller;

  MangaBakaQueries(this.controller);

  @override
  Future<bool>? getUserData() async {
    return await controller.fetchUserProfile();
  }

  @override
  Future<Media?>? getMedia(int id, {bool mal = true}) async {
    final series = await controller.fetchSeriesById(id);
    if (series == null) return null;
    final entry = await controller.fetchLibraryEntry(id);
    return Media.fromMangaBaka(series, libraryEntry: entry);
  }

  @override
  Future<Media?>? mediaDetails(Media media) async {
    final series = await controller.fetchSeriesById(media.id);
    if (series == null) return media;
    final entry = await controller.fetchLibraryEntry(media.id);
    return Media.fromMangaBaka(series, libraryEntry: entry);
  }

  @override
  Future<Map<String, List<Media>>>? initHomePage() async {
    final userEntries = await controller.fetchUserLibrary();
    final continueReading = userEntries
        .where((e) => e.state == MangaBakaLibraryState.reading && e.series != null)
        .map((e) => Media.fromMangaBaka(e.series!, libraryEntry: e))
        .toList();

    final planned = userEntries
        .where((e) => e.state == MangaBakaLibraryState.planToRead && e.series != null)
        .map((e) => Media.fromMangaBaka(e.series!, libraryEntry: e))
        .toList();

    final completed = userEntries
        .where((e) => e.state == MangaBakaLibraryState.completed && e.series != null)
        .map((e) => Media.fromMangaBaka(e.series!, libraryEntry: e))
        .toList();

    final dropped = userEntries
        .where((e) => e.state == MangaBakaLibraryState.dropped && e.series != null)
        .map((e) => Media.fromMangaBaka(e.series!, libraryEntry: e))
        .toList();

    final onHold = userEntries
        .where((e) => e.state == MangaBakaLibraryState.paused && e.series != null)
        .map((e) => Media.fromMangaBaka(e.series!, libraryEntry: e))
        .toList();

    return {
      "Reading": continueReading,
      "PlanToRead": planned,
      "Completed": completed,
      "DroppedReading": dropped,
      "OnHoldReading": onHold,
    };
  }

  @override
  Future<Map<String, List<Media>>> getMangaList() async {
    final results = await Future.wait([
      controller.fetchSeries(types: [MangaBakaType.manga, MangaBakaType.manhwa, MangaBakaType.manhua, MangaBakaType.oel, MangaBakaType.other], sortBy: 'latest', limit: 15),
      controller.fetchSeries(types: [MangaBakaType.manga], sortBy: 'popularity_desc', limit: 15),
      controller.fetchSeries(types: [MangaBakaType.manhwa], sortBy: 'popularity_desc', limit: 15),
      controller.fetchSeries(types: [MangaBakaType.manhua], sortBy: 'popularity_desc', limit: 15),
      controller.fetchSeries(types: [MangaBakaType.novel], sortBy: 'popularity_desc', limit: 15),
      controller.fetchSeries(types: [MangaBakaType.manga], sortBy: 'rating_desc', limit: 15),
    ]);

    return {
      "trendingManga": results[0].map((s) => Media.fromMangaBaka(s)).toList(),
      "popularManga": results[1].map((s) => Media.fromMangaBaka(s)).toList(),
      "trendingManhwa": results[2].map((s) => Media.fromMangaBaka(s)).toList(),
      "trendingManhua": results[3].map((s) => Media.fromMangaBaka(s)).toList(),
      "trendingNovels": results[4].map((s) => Media.fromMangaBaka(s)).toList(),
      "topRatedManga": results[5].map((s) => Media.fromMangaBaka(s)).toList(),
      "mostFavouriteManga": results[1].map((s) => Media.fromMangaBaka(s)).toList(),
    };
  }

  @override
  Future<Map<String, List<Media>>> getAnimeList() async {
    return {};
  }

  @override
  Future<List<Media>> getCalendarData() async {
    return [];
  }

  @override
  Future<bool>? getGenresAndTags() async {
    return true;
  }

  @override
  Future<Map<String, List<Media>>> getMediaLists({
    required bool anime,
    required int userId,
    String? sortOrder,
  }) async {
    if (anime) return {};
    return getMangaList();
  }

  @override
  Future<SearchResults?> search(SearchResults? searchResults) async {
    final query = searchResults?.search ?? '';
    final series = await controller.searchSeries(query);
    final mediaList = series.map((s) => Media.fromMangaBaka(s)).toList();

    return SearchResults(
      page: searchResults?.page ?? 1,
      hasNextPage: false,
      list: mediaList,
    );
  }
}
