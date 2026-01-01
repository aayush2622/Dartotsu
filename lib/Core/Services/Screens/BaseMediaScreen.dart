import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseMediaScreen extends GetxController {
  var page = 1;
  var scrollToTop = false.obs;
  var loadMore = true.obs;
  var canLoadMore = true.obs;
  var running = true.obs;
  var scrollController = ScrollController();
  var initialLoad = false;

  List<Widget> mediaContent(BuildContext context);

  int get refreshID;

  bool get paging => true;

  Future<void> loadAll();

  Future<void>? loadNextPage() => null;
}
