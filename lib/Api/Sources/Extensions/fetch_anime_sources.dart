import 'package:dartotsu/Functions/GetExtensions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../Preferences/PrefManager.dart';
import '../Model/Manga.dart';
import 'GetSourceList.dart';

part 'fetch_anime_sources.g.dart';

@riverpod
Future fetchAnimeSourcesList(FetchAnimeSourcesListRef ref,
    {int? id, required bool reFresh}) async {
  var repo = Extensions.animeRepo.value;
  if ((loadData(PrefName.autoUpdateExtensions) || reFresh) && repo.isNotEmpty) {
    await fetchSourcesList(
      sourcesIndexUrl: repo,
      refresh: reFresh,
      id: id,
      ref: ref,
      itemType: ItemType.anime,
    );
  }
}
