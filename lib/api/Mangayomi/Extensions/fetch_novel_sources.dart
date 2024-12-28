import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../Preferences/PrefManager.dart';
import '../Model/Manga.dart';
import 'GetSourceList.dart';
part 'fetch_novel_sources.g.dart';

@riverpod
Future fetchNovelSourcesList(Ref ref, {int? id, required reFresh}) async {
  if ((PrefManager.getCustomVal('something') ?? true) || reFresh) {
    await fetchSourcesList(
        sourcesIndexUrl:
            "https://raw.githubusercontent.com/Schnitzel5/mangayomi-extensions/refs/heads/main/novel_index.json",
        refresh: reFresh,
        id: id,
        ref: ref,
        itemType: ItemType.novel,);
  }
}
