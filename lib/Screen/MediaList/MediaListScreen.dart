import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/ThemeManager/CardStyleController.dart';
import '../../Model/CardStyle.dart';
import '../../Utils/Extensions/CardStyleMetrics.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/GetXFunctions.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Shelf/MediaRows.dart';
import '../../Widgets/Shelf/PosterCard.dart';
import '../Feed/FeedNavigation.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/AppTabs.dart';

class MediaListScreen extends StatefulWidget {
  final MediaService service;
  final bool anime;

  const MediaListScreen({
    super.key,
    required this.service,
    required this.anime,
  });

  @override
  State<MediaListScreen> createState() => _MediaListScreenState();
}

class _MediaListScreenState extends BaseScreen<MediaListScreen>
    with TickerProviderStateMixin {
  static const _loadingKey = 'Loading';

  Map<String, List<Media>>? _lists;
  bool _failed = false;
  TabController? _tabs;

  static final _skeletonLists = <String, List<Media>>{
    for (var i = 0; i < 4; i++)
      '$_loadingKey $i': [for (var j = 0; j < 12; j++) Media.skeleton()],
  };

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final user = widget.service.auth?.user.value;
    final queries = widget.service.getQueries;
    if (queries == null) {
      if (mounted) setState(() => _failed = true);
      return;
    }
    try {
      final lists = await queries.getMediaLists(
        anime: widget.anime,
        userId: user?.id,
      );
      if (!mounted) return;
      setState(() {
        _lists = lists;
        _failed = false;
      });
    } catch (_) {
      if (mounted) setState(() => _failed = true);
    }
  }

  Map<String, List<Media>> get _shown => _lists ?? _skeletonLists;

  TabController _controllerFor(int length) {
    final current = _tabs;
    if (current != null && current.length == length) return current;
    final index = current == null ? 0 : current.index.clamp(0, length - 1);
    current?.dispose();
    return _tabs = TabController(
      length: length,
      vsync: this,
      initialIndex: index,
    );
  }

  @override
  void dispose() {
    _tabs?.dispose();
    super.dispose();
  }

  @override
  Widget buildContent(BuildContext context) {
    final user = widget.service.auth?.user.value;
    final kind = widget.anime ? 'Anime' : 'Manga';
    final title = user == null ? '$kind list' : "${user.name}'s $kind list";
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(title: title),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    final loading = _lists == null && !_failed;
    final lists = _failed ? <String, List<Media>>{} : _shown;
    if (lists.isEmpty) return _empty(context);

    final keys = lists.keys.toList();
    final controller = _controllerFor(keys.length);
    return Column(
      children: [
        ScrollConfig(
          context,
          child: Skeletonizer(
            enabled: loading,
            child: AppTabs(
              controller: controller,
              items: [
                for (final key in keys)
                  AppTabItem(
                    loading ? 'Loading list' : key,
                    count: loading ? 0 : lists[key]!.length,
                  ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ScrollConfig(
            context,
            child: TabBarView(
              controller: controller,
              children: [
                for (final key in keys)
                  _grid(context, lists[key]!, skeleton: loading),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _empty(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _load,
      child: ListView(
        children: [
          SizedBox(
            height: 360,
            child: EmptyState(
              icon: _failed ? Icons.cloud_off_rounded : Icons.inbox_rounded,
              failed: _failed,
              title: _failed ? 'Could not load the list' : 'Nothing here yet',
            ),
          ),
        ],
      ),
    );
  }

  Widget _grid(
    BuildContext context,
    List<Media> media, {
    required bool skeleton,
  }) {
    final style = tryFind<CardStyleController>()?.current ?? const CardStyle();
    final grid = GridView.builder(
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
      itemCount: media.length,
      itemBuilder: (_, i) => Align(
        alignment: Alignment.topCenter,
        child: _card(media[i], i, skeleton: skeleton),
      ),
    );
    final scrolling = ScrollConfig(context, child: grid);
    return skeleton ? Skeletonizer(child: scrolling) : scrolling;
  }

  Widget _card(Media media, int index, {required bool skeleton}) {
    final facts = MediaRowFacts(media);
    final tag = skeleton ? null : 'list:${media.id}';
    return PosterCard(
      heroTag: tag,
      imageUrl: media.cover,
      title: media.mainName,
      subtitle: skeleton
          ? null
          : '${media.userProgress ?? '~'} | ${facts.total ?? '~'}',
      progress: skeleton ? null : facts.progress,
      progressText: skeleton
          ? null
          : '${media.userProgress ?? '~'} · ${facts.total ?? '~'}',
      score: skeleton
          ? null
          : (media.userScore ?? 0) > 0
          ? media.userScore! / 10
          : facts.score,
      scoreHighlight: (media.userScore ?? 0) > 0,
      airing: !skeleton && media.status == 'RELEASING',
      onTap: skeleton
          ? null
          : () => openDetail(context, widget.service, media, heroTag: tag),
      onLongPress: skeleton
          ? null
          : () => showQuickListEditor(context, widget.service, media),
    );
  }
}
