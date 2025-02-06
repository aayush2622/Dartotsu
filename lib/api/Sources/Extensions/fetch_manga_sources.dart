import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../Functions/GetExtensions.dart';
import '../../../Preferences/PrefManager.dart';
import '../Model/Manga.dart';
import 'GetSourceList.dart';

part 'fetch_manga_sources.g.dart';

@riverpod
Future fetchMangaSourcesList(FetchMangaSourcesListRef ref,
    {int? id, required reFresh}) async {
  var repo = Extensions.mangaRepo.value;
  if ((loadData(PrefName.autoUpdateExtensions) || reFresh) && repo.isNotEmpty) {
    await fetchSourcesList(
      sourcesIndexUrl: repo,
      refresh: reFresh,
      id: id,
      ref: ref,
      itemType: ItemType.manga,
    );
  }
}
