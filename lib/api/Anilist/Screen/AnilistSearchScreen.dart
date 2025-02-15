import 'package:dantotsu/DataClass/User.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../Adaptor/Charactes/Widgets/EntitySection.dart';
import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../Adaptor/User/Widgets/UserSection.dart';
import '../../../DataClass/Media.dart';
import '../../../DataClass/SearchResults.dart';
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

  var searchResult = Rxn<List<Object>?>();

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

  List<Object>? results(SearchResults? res) {
    switch (res?.type) {
      case SearchType.ANIME:
        return res?.results;
      case SearchType.MANGA:
        return res?.results;
      case SearchType.CHARACTER:
        return res?.characters;
      case SearchType.STAFF:
        return res?.staff;
      case SearchType.STUDIO:
        return res?.studios;
      case SearchType.USER:
        return res?.users;
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
      case SearchType.USER:
        return userResults(context);
    }
  }
  var type = 3.obs;
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
        list: searchResult.value,
      ),
    ];
  }
  List<Widget> userResults(BuildContext context) {
    return [
      userSection(
        context: context,
        type: type.value == 2 ? 1 : 2,
        title: 'Search Results',
        list: searchResult.value?.whereType<userData>().toList(),
        trailingIcon: _buildTrailingIcon(context),
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
