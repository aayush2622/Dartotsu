import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Api/Discord/DiscordPresence.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Shelf/CardShelfState.dart';
import '../../Widgets/Shelf/PosterCard.dart';
import '../../Core/State/State.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Nav/DpadLayers.dart';
import '../../Widgets/Components/ScreenState.dart';
import 'ShelfState.dart';

class ShelfScreen extends StatefulWidget {
  final String title;
  final List<Media> media;
  final Future<List<Media>?> Function()? loadMore;
  final ShelfCardItem Function(BuildContext context, int index, Media media)
  itemFor;

  const ShelfScreen({
    super.key,
    required this.title,
    required this.media,
    required this.itemFor,
    this.loadMore,
  });

  @override
  State<ShelfScreen> createState() => _ShelfScreenState();
}

class _ShelfScreenState extends BaseScreen<ShelfScreen>
    with ScreenStateHost<ShelfScreen, ShelfState> {
  @override
  ShelfState buildState() => ShelfState(
    title: widget.title,
    media: widget.media,
    loader: widget.loadMore,
  );

  @override
  DiscordPresence? get presence => state.presence;

  @override
  Widget buildContent(BuildContext context) => Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppScreenBar(title: widget.title),
    body: state.items.isEmpty ? _empty() : _grid(context),
  );

  Widget _empty() =>
      EmptyState(icon: Icons.inbox_rounded, title: getString.nothingHereYet);

  Widget _grid(BuildContext context) {
    final style = tryFind<CardStyleController>()?.current ?? CardStyle.cozy;
    final tail = state.more.value ? 8 : 0;
    return NotificationListener<ScrollNotification>(
      onNotification: state.onScroll,
      child: ScrollConfig(
        context,
        child: DpadColumn(
          child: GridView.builder(
            padding: EdgeInsets.fromLTRB(
              Dimens.pagePad,
              Dimens.gapSm,
              Dimens.pagePad,
              Dimens.gapXl,
            ),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: style.itemWidth + Dimens.cardGap + 6,
              mainAxisExtent: style.itemHeightFor(context),
              crossAxisSpacing: Dimens.cardGap,
              mainAxisSpacing: Dimens.gap,
            ),
            itemCount: state.items.length + (state.loading.value ? tail : 0),
            itemBuilder: (context, i) {
              if (i >= state.items.length) {
                return Skeletonizer(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: _card(ShelfCardItem.skeleton(), skeleton: true),
                  ),
                );
              }
              final item = widget.itemFor(context, i, state.items[i]);
              return Align(
                key: ValueKey('shelf:${state.items[i].id}'),
                alignment: Alignment.topCenter,
                child: _card(item),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _card(ShelfCardItem item, {bool skeleton = false}) => PosterCard(
    heroTag: skeleton || item.heroTag == null ? null : 'shelf:${item.heroTag}',
    imageUrl: item.imageUrl,
    overlay: item.overlay,
    title: item.title,
    subtitle: item.subtitle,
    progress: item.progress,
    progressText: item.progressText,
    unread: skeleton ? null : item.unread,
    score: item.score,
    scoreHighlight: item.scoreHighlight,
    airing: item.airing,
    onTap: skeleton ? null : item.onTap,
    onLongPress: skeleton ? null : item.onLongPress,
  );
}
