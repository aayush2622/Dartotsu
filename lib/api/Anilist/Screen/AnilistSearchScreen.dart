import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../Adaptor/Media/Widgets/MediaSection.dart';
import '../../../DataClass/Media.dart';
import '../../../DataClass/SearchResults.dart';
import '../../../Services/Screens/BaseSearchScreen.dart';
import '../Anilist.dart';

class AnilistSearchScreen extends BaseSearchScreen {
  final AnilistController Anilist;

  AnilistSearchScreen(this.Anilist);

  @override
  List<String> get searchTypes =>
      ['Anime', 'Manga', 'Character', 'Staff', 'Studio', 'User'];

  var searchResult = Rxn<List<Media>>();
  @override
  Future<void> search() async {
    showHistory.value = false;
    searchResult.value = null;
    canLoadMore.value = true;
    loadMore.value = true;

    var res = await Anilist.query?.search(searchResults.value);
    if (res != null) {
      searchResults.value = res;
      searchResult.value = res.results;
      canLoadMore.value = res.hasNextPage ?? false;
      loadMore.value = res.hasNextPage ?? false;
    }
  }
  @override
  void init({SearchResults? s}) {
    resetData();
    super.init(s:s);
  }

  void resetData(){
    searchResult.value = null;
  }
  @override
  Future<void>? loadNextPage() async {
    searchResults.value.page = searchResults.value.page != null ? searchResults.value.page! + 1 : 2;
    var res = await Anilist.query?.search(searchResults.value);
    if (res != null) {
      searchResult.value = [...searchResult.value!, ...?res.results];
      canLoadMore.value = res.hasNextPage ?? false;
    }
    loadMore.value = true;
  }
  var type = 3.obs;
  @override
  List<Widget> searchWidget(BuildContext context) {
    return [
      MediaSection(
        context: context,
        type: type.value,
        title: 'Search Results',
        mediaList: searchResult.value,
        trailingIcon: _buildTrailingIcon(context),
      )
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
