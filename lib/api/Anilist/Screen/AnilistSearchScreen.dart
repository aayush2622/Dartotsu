
import 'package:flutter/cupertino.dart';
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
      ['Anime', 'Manga', 'Character', 'Staff', 'Studio'];

  var searchResult = Rxn<List<Media>>();
  @override
  Future<void> search() async {
    searchResult.value = null;
    canLoadMore.value = true;
    loadMore.value = true;
    var res = await Anilist.query?.search(searchResults.value);
    if (res != null) {
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
  @override
  List<Widget> searchWidget(BuildContext context) {
    return [
      MediaSection(
        context: context,
        type: 3,
        title: 'Search Results',
        mediaList: searchResult.value,
      )
    ];
  }
}
