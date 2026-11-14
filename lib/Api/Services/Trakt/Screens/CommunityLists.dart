import 'package:flutter/widgets.dart';

import '../../../../Core/Services/MediaService.dart';
import '../../../../Core/Services/Model/CommunityList.dart';
import '../../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../../Screen/Feed/FeedNavigation.dart';
import '../../../../Screen/Feed/ShelfScreen.dart';
import '../../../../Utils/Functions/NavigateToScreen.dart';
import '../../../../Utils/Functions/SnackBar.dart';
import '../../../../Widgets/Shelf/CardShelfState.dart';
import '../Auth.dart';

class TraktCommunityListsView extends CommunityListsView {
  final MediaService service;

  TraktCommunityListsView(this.service);

  @override
  List<(String, String)> get kinds => [
    ('trending', getString.trending),
    ('popular', getString.popular),
    if (traktAuth.isLoggedIn) ...[
      ('liked', getString.listsLiked),
      ('mine', getString.listsYours),
    ],
  ];

  @override
  List<(String, String)> get sorts => [('', getString.all)];

  @override
  Future<CommunityListPage> lists({
    required String kind,
    required String sort,
    int page = 1,
  }) async {
    final (items, hasNext) = await traktAuth.queries.communityLists(
      kind,
      page: page,
      countLabel: getString.simklListTitles,
    );
    return CommunityListPage(items, hasNext);
  }

  @override
  Future<void> open(BuildContext context, CommunityList list) async {
    try {
      final items = await traktAuth.queries.listTitles(list.id);
      if (!context.mounted) return;
      if (items.isEmpty) return snackString(getString.noMatches);
      await navigateToPage(
        context,
        ShelfScreen(
          title: list.title,
          media: items,
          itemFor: (ctx, index, m) => ShelfCardItem(
            id: m.id,
            imageUrl: m.cover,
            title: m.mainName,
            onTap: () => openDetail(ctx, service, m),
          ),
        ),
      );
    } catch (e) {
      snackString(getString.serviceError(getString.trakt, '$e'));
    }
  }
}
