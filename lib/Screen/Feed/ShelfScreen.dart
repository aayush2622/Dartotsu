import 'dart:async';

import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Api/Discord/DiscordPresence.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Shelf/CardShelfState.dart';
import '../../Widgets/Shelf/PosterCard.dart';

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

class _ShelfScreenState extends BaseScreen<ShelfScreen> {
  late final List<Media> _items = [...widget.media];
  late final Set<String> _known = {for (final m in _items) m.id};
  bool _loading = false;
  late bool _more = widget.loadMore != null;

  Future<void> _next() async {
    final loader = widget.loadMore;
    if (loader == null || _loading || !_more) return;
    setState(() => _loading = true);
    try {
      final batch = await loader();
      if (!mounted) return;
      final fresh = [
        for (final m in batch ?? const <Media>[])
          if (_known.add(m.id)) m,
      ];
      setState(() {
        _items.addAll(fresh);
        _more = fresh.isNotEmpty;
      });
    } catch (_) {
      if (mounted) setState(() => _more = false);
    } finally {
      if (mounted) setState(() => _loading = false);
    }
    if (mounted && _more && _items.length < 24) unawaited(_next());
  }

  bool _onScroll(ScrollNotification n) {
    if (n.metrics.axis == Axis.vertical && n.metrics.extentAfter < 700) {
      unawaited(_next());
    }
    return false;
  }

  @override
  void initState() {
    super.initState();
    if (_more && _items.length < 24) {
      WidgetsBinding.instance.addPostFrameCallback((_) => unawaited(_next()));
    }
  }

  @override
  DiscordPresence? get presence =>
      DiscordPresence.browsing('Browsing a list', state: widget.title);

  @override
  Widget buildContent(BuildContext context) => Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppScreenBar(title: widget.title),
    body: _items.isEmpty ? _empty() : _grid(context),
  );

  Widget _empty() =>
      const EmptyState(icon: Icons.inbox_rounded, title: 'Nothing here yet');

  Widget _grid(BuildContext context) {
    final style = tryFind<CardStyleController>()?.current ?? const CardStyle();
    final tail = _more ? 8 : 0;
    return NotificationListener<ScrollNotification>(
      onNotification: _onScroll,
      child: ScrollConfig(
        context,
        child: GridView.builder(
          padding: EdgeInsets.fromLTRB(
            Dimens.pagePad,
            Dimens.gapSm,
            Dimens.pagePad,
            Dimens.gapXl,
          ),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: style.itemWidth + Dimens.cardGap + 6,
            childAspectRatio: style.itemWidth / style.itemHeight,
            crossAxisSpacing: Dimens.cardGap,
            mainAxisSpacing: Dimens.gap,
          ),
          itemCount: _items.length + (_loading ? tail : 0),
          itemBuilder: (context, i) {
            if (i >= _items.length) {
              return Skeletonizer(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: _card(ShelfCardItem.skeleton(), skeleton: true),
                ),
              );
            }
            final item = widget.itemFor(context, i, _items[i]);
            return Align(
              key: ValueKey('shelf:${_items[i].id}'),
              alignment: Alignment.topCenter,
              child: _card(item),
            );
          },
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
    score: item.score,
    scoreHighlight: item.scoreHighlight,
    airing: item.airing,
    onTap: skeleton ? null : item.onTap,
    onLongPress: skeleton ? null : item.onLongPress,
  );
}
