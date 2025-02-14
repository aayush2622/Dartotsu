import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../Adaptor/Charactes/Widgets/EntitySection.dart';
import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/Author.dart';
import '../../../DataClass/Character.dart';
import '../../../DataClass/Media.dart';
import '../../../DataClass/SearchResults.dart';
import '../../../DataClass/Studio.dart';
import '../../../DataClass/User.dart';
import '../../../Services/Screens/BaseSearchScreen.dart';
import '../Anilist.dart';

class AnilistSearchScreen extends BaseSearchScreen {
  final AnilistController Anilist;

  AnilistSearchScreen(this.Anilist);

  @override
  List<SearchType> get searchTypes => [
        SearchType.ANIME,
        SearchType.MANGA,
        SearchType.CHARACTER,
        SearchType.STAFF,
        SearchType.STUDIO,
        SearchType.USER
      ];

  var searchResult = Rxn<List<Object?>>();

  @override
  Future<void> search() async {
    showHistory.value = false;
    searchResult.value = null;
    canLoadMore.value = true;
    loadMore.value = true;

    var res = await Anilist.query?.search(searchResults.value);
    if (res != null) {
      searchResults.value = res;
      canLoadMore.value = res.hasNextPage ?? false;
      loadMore.value = res.hasNextPage ?? false;
    }
    searchResult.value = results(res) ?? [];
  }

  List<dynamic>? results(SearchResults? res) {
    switch (res?.type) {
      case SearchType.ANIME:
        return res?.results as List<Media?>;
      case SearchType.MANGA:
        return res?.results as List<Media?>;
      case SearchType.CHARACTER:
        return res?.characters as List<character?>;
      case SearchType.STAFF:
        return res?.staff as List<author?>;
      case SearchType.STUDIO:
        return res?.studios as List<studio?>;
      case SearchType.USER:
        return res?.users as List<userData?>;
      default:
        return [];
    }
  }

  @override
  void init({SearchResults? s}) {
    resetData();
    super.init(s: s);
  }

  void resetData() {
    searchResult.value = null;
  }

  @override
  Future<void>? loadNextPage() async {
    searchResults.value.page =
        searchResults.value.page != null ? searchResults.value.page! + 1 : 2;
    var res = await Anilist.query?.search(searchResults.value);
    if (res != null) {
      searchResult.value = [...searchResult.value ?? [], ...results(res) ?? []];
      canLoadMore.value = res.hasNextPage ?? false;
    }
    loadMore.value = true;
  }

  var type = 3.obs;

  @override
  List<Widget> searchWidget(BuildContext context) {
    switch (searchResults.value.type) {
      case SearchType.ANIME:
      case SearchType.MANGA:
        return animeAndMangaResults(context);
      case SearchType.CHARACTER:
        return characterAndStaffResults(context, EntityType.Character);
      case SearchType.STAFF:
        return characterAndStaffResults(context, EntityType.Staff);
      case SearchType.STUDIO:
        return characterAndStaffResults(context, EntityType.Studio);
      default:
        return animeAndMangaResults(context);
    }
  }

  List<Widget> animeAndMangaResults(BuildContext context) {
    return [
      MediaSection(
        context: context,
        type: type.value,
        title: 'Search Results',
        mediaList: searchResult.value?.whereType<Media>().toList(),
        trailingIcon: _buildTrailingIcon(context),
      ),
    ];
  }

  List<Widget> characterAndStaffResults(BuildContext context, EntityType type) {
    return [
      entitySection(
        adaptorType: 2,
        context: context,
        type: type,
        title: 'Search Results',
        characterList: type == EntityType.Character
            ? searchResult.value?.whereType<character>().toList()
            : null,
        staffList: type == EntityType.Staff
            ? searchResult.value?.whereType<author>().toList()
            : null,
        studioList: type == EntityType.Studio
            ? searchResult.value?.whereType<studio>().toList()
            : null,
      ),
    ];
  }

  Widget _buildTrailingIcon(BuildContext context) {
    final icons = [
      Icons.view_list_sharp,
      Icons.grid_view_rounded,
    ];

    final theme = Theme.of(context).colorScheme;
    return Row(
      children: List.generate(
        icons.length,
        (index) {
          var value = index == 0 ? 2 : 3;
          final isSelected = value == type.value;
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: IconButton(
              icon: Transform(
                alignment: Alignment.center,
                transform: index == 0
                    ? Matrix4.rotationY(3.14159)
                    : Matrix4.identity(),
                child: Icon(icons[index]),
              ),
              iconSize: 24,
              color: isSelected
                  ? theme.onSurface
                  : theme.onSurface.withOpacity(0.33),
              onPressed: () {
                if (!isSelected) {
                  type.value = value;
                }
              },
            ),
          );
        },
      ),
    );
  }
}
