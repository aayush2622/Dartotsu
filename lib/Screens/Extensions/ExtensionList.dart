import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:grouped_list/sliver_grouped_list.dart';

import '../../Api/Sources/Extensions/GetSourceList.dart';
import '../../Api/Sources/Extensions/extensions_provider.dart';
import '../../Api/Sources/Extensions/fetch_anime_sources.dart';
import '../../Api/Sources/Extensions/fetch_manga_sources.dart';
import '../../Api/Sources/Extensions/fetch_novel_sources.dart';
import '../../Api/Sources/Model/Manga.dart';
import '../../Api/Sources/Model/Source.dart';
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
  var sortedList = <int>[];

  @override
  void initState() {
    super.initState();
    sortedList = loadCustomData<List<int>?>(
            "sortedExtensions_${widget.itemType.name}") ??
        [];
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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

  @override
  Widget build(BuildContext context) {
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
              onPressed: () => _refreshData(),
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
            ? element.lang!.toLowerCase() ==
                completeLanguageCode(widget.selectedLanguage)
            : true)
        .where((element) =>
            widget.query.isEmpty ||
            element.name!.toLowerCase().contains(widget.query.toLowerCase()))
        .where((element) =>
            loadData(PrefName.NSFWExtensions) || element.isNsfw == false)
        .toList();
  }

  List<Source> _getInstalledEntries(List<Source> data) {
    final installed = data
        .where((element) => element.version == element.versionLast!)
        .where((element) => element.isAdded!)
        .toList();

    final installedIds = installed.map((source) => source.id!).toList();

    final removedIds =
        sortedList.where((id) => !installedIds.contains(id)).toList();

    if (removedIds.isNotEmpty) {
      sortedList = List.from(sortedList);
      sortedList.removeWhere((id) => removedIds.contains(id));
      saveCustomData("sortedExtensions_${widget.itemType.name}", sortedList);
    }

    final newEntries =
        installedIds.where((id) => !sortedList.contains(id)).toList();

    if (newEntries.isNotEmpty) {
      sortedList = List.from(sortedList);
      sortedList.addAll(newEntries);
      saveCustomData("sortedExtensions_${widget.itemType.name}", sortedList);
    }

    final sorted = installed
        .where((source) => sortedList.contains(source.id))
        .toList()
      ..sort((a, b) =>
          sortedList.indexOf(a.id!).compareTo(sortedList.indexOf(b.id!)));
    final unsorted =
        installed.where((source) => !sortedList.contains(source.id)).toList();

    return [...sorted, ...unsorted];
  }

  List<Source> _getUpdateEntries(List<Source> data) {
    return data
        .where((element) =>
            compareVersions(element.version!, element.versionLast!) < 0)
        .where((element) => element.isAdded!)
        .toList();
  }

  List<Source> _getNotInstalledEntries(List<Source> data) {
    return data.where((element) => !element.isAdded!).toList();
  }

  Widget _buildInstalledList(List<Source> installedEntries) {
    return SliverToBoxAdapter(
      child: ReorderableListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        onReorder: (int oldIndex, int newIndex) {
          if (newIndex > oldIndex) newIndex -= 1;
          setState(() {
            final Source movedItem = installedEntries.removeAt(oldIndex);
            installedEntries.insert(newIndex, movedItem);

            if (sortedList.contains(movedItem.id)) {
              sortedList = List.from(sortedList);
              sortedList.remove(movedItem.id);
            }
            sortedList = List.from(sortedList);
            sortedList.insert(newIndex, movedItem.id!);
            saveCustomData(
                "sortedExtensions_${widget.itemType.name}", sortedList);
          });
        },
        itemBuilder: (context, index) {
          final source = installedEntries[index];
          return ExtensionListTileWidget(
            key: ValueKey(source.id ?? index),
            source: source,
          );
        },
        itemCount: installedEntries.length,
      ),
    );
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
              groupByValue.toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ],
        ),
      ),
      itemBuilder: (context, Source element) =>
          ExtensionListTileWidget(source: element),
      groupComparator: (group1, group2) {
        if (group1 == "all") return -1;
        if (group2 == "all") return 1;
        return group1.compareTo(group2);
      },
      itemComparator: (item1, item2) => item1.name!.compareTo(item2.name!),
      order: GroupedListOrder.ASC,
    );
  }
}
