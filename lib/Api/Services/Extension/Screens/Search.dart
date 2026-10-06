import 'package:flutter/widgets.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/Media.dart';
import '../../../../Model/SearchResults.dart';
import '../Queries.dart';
import '../Widgets/SourceBadge.dart';

class ExtensionSearchView extends SearchScreenView {
  final ExtensionQueries queries;

  ExtensionSearchView(this.queries);

  @override
  List<MediaType> get types => const [MediaType.anime, MediaType.manga];

  @override
  Widget? overlay(Media media) => extensionSourceBadge(media);

  @override
  SearchFilterSpec filters(MediaType type) => SearchFilterSpec.none;

  @override
  Future<SearchResults?> search(SearchResults query) => queries.search(query);
}
