import 'dart:async';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Model/News.dart';
import '../../Widgets/Components/PagedList.dart';
import '../../Widgets/Components/ScreenState.dart';

class NewsState extends ScreenState with PagedFields<NewsItem> {
  final NewsScreenView view;

  NewsState(this.view);

  @override
  late final list = PagedList<NewsItem>(
    tag: 'NewsState',
    idOf: (n) => n.id,
    fetch: (page) async {
      final result = await view.news(page: page);
      return (items: result.items, hasNext: result.hasNext);
    },
  );

  @override
  void onInit() => unawaited(load(reset: true));
}
