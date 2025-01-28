import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../Preferences/PrefManager.dart';
import '../Model/Manga.dart';
import 'GetSourceList.dart';

part 'fetch_anime_sources.g.dart';

@riverpod
Future fetchAnimeSourcesList(FetchAnimeSourcesListRef ref,
    {int? id, required bool reFresh}) async {
  if ((PrefManager.getCustomVal('autoUpdate') ?? true) || reFresh) {
    await fetchSourcesList(
      sourcesIndexUrl:
          "https://raw.githubusercontent.com/RyanYuuki/anymex-extensions/refs/heads/main/anime_index.json",
      refresh: reFresh,
      id: id,
      ref: ref,
      itemType: ItemType.anime,
    );
  }
}
