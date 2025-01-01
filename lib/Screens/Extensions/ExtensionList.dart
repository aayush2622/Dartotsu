import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grouped_list/sliver_grouped_list.dart';

import '../../Preferences/Preferences.dart';
import '../../api/Mangayomi/Extensions/GetSourceList.dart';
import '../../api/Mangayomi/Extensions/extensions_provider.dart';
import '../../api/Mangayomi/Extensions/fetch_anime_sources.dart';
import '../../api/Mangayomi/Extensions/fetch_manga_sources.dart';
import '../../api/Mangayomi/Extensions/fetch_novel_sources.dart';
import '../../api/Mangayomi/Model/Manga.dart';
import '../../api/Mangayomi/Model/Source.dart';
import '../Settings/language.dart';
import 'ExtensionItem.dart';

class Extension extends ConsumerStatefulWidget {
  final bool installed;
  final ItemType itemType;
  final String query;
  final String selectedLanguage;

  const Extension({
    required this.installed,
    required this.query,
    required this.itemType,
    required this.selectedLanguage,
    super.key,
  });

  @override
  ConsumerState<Extension> createState() => _ExtensionScreenState();
}

class _ExtensionScreenState extends ConsumerState<Extension> {
  final controller = ScrollController();

  Future<void> _refreshData() async {
    if (widget.itemType == ItemType.manga) {
      return await ref.refresh(
          fetchMangaSourcesListProvider(id: null, reFresh: true).future);
    } else if (widget.itemType == ItemType.anime) {
      return await ref.refresh(
          fetchAnimeSourcesListProvider(id: null, reFresh: true).future);
    } else {
      return await ref.refresh(
          fetchNovelSourcesListProvider(id: null, reFresh: true).future);
    }
  }

  Future<void> _fetchData() async {
    if (widget.itemType == ItemType.manga) {
      ref.watch(fetchMangaSourcesListProvider(id: null, reFresh: false));
    } else if (widget.itemType == ItemType.anime) {
      ref.watch(fetchAnimeSourcesListProvider(id: null, reFresh: false));
    } else {
      ref.watch(fetchNovelSourcesListProvider(id: null, reFresh: false));
    }
  }

  @override
  Widget build(BuildContext context) {
    _fetchData();
    final streamExtensions =
        ref.watch(getExtensionsStreamProvider(widget.itemType));

    return RefreshIndicator(
      onRefresh: _refreshData,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: streamExtensions.when(
          data: (data) {
            data = _filterData(data);
            final installedEntries = _getInstalledEntries(data);
            final updateEntries = _getUpdateEntries(data);
            final notInstalledEntries = _getNotInstalledEntries(data);

            return Scrollbar(
              interactive: true,
              controller: controller,
              child: CustomScrollView(
                controller: controller,
                slivers: [
                  if (widget.installed) _buildUpdatePendingList(updateEntries),
                  if (widget.installed) _buildInstalledList(installedEntries),
                  if (!widget.installed)
                    _buildNotInstalledList(notInstalledEntries),
                ],
              ),
            );
          },
          error: (error, _) => Center(
            child: ElevatedButton(
              onPressed: () => _fetchData(),
              child: const Text('Refresh'),
            ),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  List<Source> _filterData(List<Source> data) {
    return data
        .where((element) => widget.selectedLanguage != 'all'
            ? element.lang!.toLowerCase() == completeLanguageCode(widget.selectedLanguage)
            : true)
        .where((element) =>
            widget.query.isEmpty ||
            element.name!.toLowerCase().contains(widget.query.toLowerCase()))
        .where((element) =>
            PrefManager.getVal(PrefName.NSFWExtensions) ||
            element.isNsfw == false)
        .toList();
  }

  List<Source> _getInstalledEntries(List<Source> data) {
    return data
        .where((element) => element.version == element.versionLast!)
        .where((element) => element.isAdded!)
        .toList();
  }

  List<Source> _getUpdateEntries(List<Source> data) {
    return data
        .where((element) =>
            compareVersions(element.version!, element.versionLast!) < 0)
        .where((element) => element.isAdded!)
        .toList();
  }

  List<Source> _getNotInstalledEntries(List<Source> data) {
    return data
        .where((element) => element.version == element.versionLast!)
        .where((element) => !element.isAdded!)
        .toList();
  }

  SliverGroupedListView<Source, String> _buildUpdatePendingList(
      List<Source> updateEntries) {
    return SliverGroupedListView<Source, String>(
      elements: updateEntries,
      groupBy: (element) => "",
      groupSeparatorBuilder: (_) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Update Pending',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            ElevatedButton(
              onPressed: () async {
                for (var source in updateEntries) {
                  source.itemType == ItemType.manga
                      ? await ref.watch(fetchMangaSourcesListProvider(
                              id: source.id, reFresh: true)
                          .future)
                      : source.itemType == ItemType.anime
                          ? await ref.watch(fetchAnimeSourcesListProvider(
                                  id: source.id, reFresh: true)
                              .future)
                          : await ref.watch(fetchNovelSourcesListProvider(
                                  id: source.id, reFresh: true)
                              .future);
                }
              },
              child: const Text(
                'Update All',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
            ),
          ],
        ),
      ),
      itemBuilder: (context, Source element) =>
          ExtensionListTileWidget(source: element),
      groupComparator: (group1, group2) => group1.compareTo(group2),
      itemComparator: (item1, item2) => item1.name!.compareTo(item2.name!),
      order: GroupedListOrder.ASC,
    );
  }

  SliverGroupedListView<Source, String> _buildInstalledList(
      List<Source> installedEntries) {
    return SliverGroupedListView<Source, String>(
      elements: installedEntries,
      groupBy: (element) => "",
      groupSeparatorBuilder: (_) => const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: SizedBox(),
      ),
      itemBuilder: (context, Source element) =>
          ExtensionListTileWidget(source: element),
      groupComparator: (group1, group2) => group1.compareTo(group2),
      itemComparator: (item1, item2) => item1.name!.compareTo(item2.name!),
      order: GroupedListOrder.ASC,
    );
  }

  SliverGroupedListView<Source, String> _buildNotInstalledList(
      List<Source> notInstalledEntries) {
    return SliverGroupedListView<Source, String>(
      elements: notInstalledEntries,
      groupBy: (element) => completeLanguageName(element.lang!.toLowerCase()),
      groupSeparatorBuilder: (String groupByValue) => Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Row(
          children: [
            Text(
              groupByValue,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ],
        ),
      ),
      itemBuilder: (context, Source element) =>
          ExtensionListTileWidget(source: element),
      groupComparator: (group1, group2) => group1.compareTo(group2),
      itemComparator: (item1, item2) => item1.name!.compareTo(item2.name!),
      order: GroupedListOrder.ASC,
    );
  }
}
