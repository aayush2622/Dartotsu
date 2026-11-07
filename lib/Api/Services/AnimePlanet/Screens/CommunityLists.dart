import 'package:flutter/widgets.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/CommunityList.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Utils/Function.dart';
import '../AnimePlanetService.dart';
import '../Data/Parser.dart';

class AnimePlanetCommunityListsView extends CommunityListsView {
  final AnimePlanetService service;

  AnimePlanetCommunityListsView(this.service);

  @override
  List<(String, String)> get kinds => [
    ('', getString.allCustomLists),
    ('anime', getString.anime),
    ('manga', getString.manga),
    ('characters', getString.characters),
    ('people', getString.people),
  ];

  @override
  List<(String, String)> get sorts => [
    ('date', getString.sortNewest),
    ('likes', getString.popular),
    ('comments', getString.mostComments),
    ('title', getString.alphabetical),
  ];

  @override
  Future<CommunityListPage> lists({
    required String kind,
    required String sort,
    int page = 1,
  }) => animePlanetQueries.communityLists(kind: kind, sort: sort, page: page);

  @override
  Future<void> open(BuildContext context, CommunityList list) async {
    if (list.kind == 'anime' || list.kind == 'manga') {
      return service.openList(context, list.id, list.title);
    }
    final path = list.id.replaceFirst('list/', '').replaceFirst('/', '/lists/');
    return openLinkInBrowser('$animePlanetHost/users/$path');
  }
}
