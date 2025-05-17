import 'package:dartotsu/Api/Anilist/Screen/Widgets/SearchFilter.dart';
import 'package:dartotsu/DataClass/User.dart';
import 'package:dartotsu/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Adaptor/Charactes/Widgets/EntitySection.dart';
import '../../../Adaptor/Media/Widgets/Chips.dart';
import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../Adaptor/User/Widgets/UserSection.dart';
import '../../../DataClass/Media.dart';
import '../../../DataClass/SearchResults.dart';
import '../../../Functions/Function.dart';
import '../../../Screens/Search/SearchScreen.dart';
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
    searchResults.value = searchResults.value..page = 1;
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
  void onSearchIconLongClick(BuildContext context) {
    if (navbar.selectedIndex == 0) {
      navigateToPage(
        context,
        SearchScreen(
          title: searchTypes[0],
          args: null,
        ),
      );
    } else if (navbar.selectedIndex == 2) {
      navigateToPage(
        context,
        SearchScreen(
          title: searchTypes[1],
          args: null,
        ),
      );
    }
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
        return animeAndMangaResults(context, SearchType.ANIME);
      case SearchType.MANGA:
        return animeAndMangaResults(context, SearchType.MANGA);
      case SearchType.CHARACTER:
        return characterAndStaffResults(context, EntityType.Character);
      case SearchType.STAFF:
        return characterAndStaffResults(context, EntityType.Staff);
      case SearchType.STUDIO:
        return characterAndStaffResults(context, EntityType.Studio);
      case SearchType.USER:
        return userResults(context);
      default:
        return [];
    }
  }

  @override
  List<Widget> headerWidget(BuildContext context) {
    switch (searchResults.value.type) {
      case SearchType.ANIME:
        return animeAndMangaFilter(context, SearchType.ANIME);
      case SearchType.MANGA:
        return animeAndMangaFilter(context, SearchType.MANGA);
      default:
        return [];
    }
  }

  List<Widget> animeAndMangaFilter(BuildContext context, SearchType mediaType) {
    return [
      Obx(() {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        value: searchResults.value.onList ?? false,
                        onChanged: (n) {
                          var value = n == true ? true : null;
                          searchResults.value = searchResults.value
                            ..onList = value;
                          search();
                        },
                        activeColor: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 4),
                      const Text("List Only"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 28.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Checkbox(
                        value: searchResults.value.isAdult ?? false,
                        onChanged: (n) {
                          searchResults.value = searchResults.value
                            ..isAdult = n;
                          search();
                        },
                        activeColor: Theme.of(context).colorScheme.primary,
                      ),
                      const SizedBox(width: 4),
                      const Text("Adult"),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ChipsWidget(
                    chips: searchResults.value.toChipList().map(
                      (label) {
                        return ChipData(
                          label: label.text.replaceAll("_", " "),
                          action: () {
                            searchResults.value.removeChip(label);
                            if (searchResults.value.toChipList().isEmpty &&
                                (searchResults.value.search == null ||
                                    searchResults.value.search!.isEmpty)) {
                              showHistory.value = true;
                            } else {
                              search();
                            }
                          },
                        );
                      },
                    ).toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SearchFilter(
                        type: mediaType,
                        searchResults: searchResults.value,
                        onFilterChanged: (n) {
                          searchResults.value = n;
                          if (searchResults.value.toChipList().isEmpty &&
                              (searchResults.value.search == null ||
                                  searchResults.value.search!.isEmpty)) {
                            showHistory.value = true;
                          } else {
                            search();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
          ],
        );
      })
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

  var type = 3.obs;

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

  List<Widget> animeAndMangaResults(
      BuildContext context, SearchType mediaType) {
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
                if (!isSelected) type.value = value;
              },
            ),
          );
        },
      ),
    );
  }
}
