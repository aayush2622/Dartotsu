import 'package:dartotsu/DataClass/SearchResults.dart';
import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Screens/Search/SearchScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widgets/CustomBottomDialog.dart';

abstract class BaseSearchScreen extends GetxController {
  var page = 1;
  var scrollToTop = false.obs;
  var loadMore = true.obs;
  var canLoadMore = true.obs;
  var scrollController = ScrollController();
  var title = SearchType.ANIME.obs;

  bool get paging => true;

  Rx<SearchResults> searchResults = SearchResults(
    type: SearchType.ANIME,
  ).obs;

  RxBool showHistory = true.obs;

  Future<void> search();

  List<SearchChip> activeChips() => [];

  List<SearchType> get searchTypes => [];

  List<Widget> searchWidget(BuildContext context);

  List<Widget> headerWidget(BuildContext context) => [];

  Future<void>? loadNextPage() => null;

  void init({SearchResults? s}) {
    scrollController.addListener(scrollListener);
    searchResults.value = s ?? SearchResults(type: title.value);
    if (s != null) search();
  }

  void remove() {
    scrollController.removeListener(scrollListener);
    showHistory.value = true;
    loadMore.value = true;
    canLoadMore.value = true;
  }

  void onSearchIconLongClick(BuildContext context) {}

  void onSearchIconClick(
    BuildContext context,
  ) {
    if (searchTypes.isEmpty) return;
    if (searchTypes.length == 1) {
      navigateToPage(
        context,
        SearchScreen(
          title: searchTypes[0],
          args: null,
        ),
      );
      return;
    }
    var dialog = CustomBottomDialog(title: 'Search', viewList: [
      ListView.builder(
        shrinkWrap: true,
        itemCount: searchTypes.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              elevation: 4,
              child: InkWell(
                borderRadius: BorderRadius.circular(12.0),
                onTap: () {
                  Navigator.pop(context);
                  navigateToPage(
                    context,
                    SearchScreen(
                      title: searchTypes[index],
                      args: null,
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    searchTypes[index].name,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    ]);
    showCustomBottomDialog(context, dialog);
  }

  bool _canScroll() {
    final maxScrollExtent = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.offset;
    return currentScroll > (maxScrollExtent * 0.1);
  }

  Future<void> scrollListener() async {
    var scroll = scrollController.position;
    if (scroll.pixels >= scroll.maxScrollExtent - 50 && loadMore.value) {
      loadMore.value = false;
      if (canLoadMore.value) {
        await loadNextPage();
      }
    }
    scrollToTop.value = _canScroll();
  }
}
