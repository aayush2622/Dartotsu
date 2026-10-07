import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/Services/Model/Media.dart';
import '../../Screen/Feed/ShelfScreen.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import 'CardShelf.dart';
import 'MediaCarousel.dart';
import 'MediaRows.dart';
import 'CardShelfState.dart';

class MediaSectionData {
  final int type;
  final String? title;
  final IconData? trailingIcon;

  final List<Media>? mediaList;

  final bool loading;

  final ScrollController? scrollController;

  final List<Widget>? customNullListIndicator;

  final void Function()? onTrailingIconTap;

  final void Function()? onTrailingIconLongPress;

  final void Function()? onTitleTap;

  final void Function()? onTitleLongPress;

  final bool fullPage;

  final void Function(
    BuildContext context,
    int index,
    Media media,
    String? heroTag,
  )?
  onMediaTap;

  final void Function(BuildContext context, int index, Media media)?
  onMediaLongPress;

  final Future<List<Media>?> Function()? onLoadMore;

  /// Namespaces this section's `Hero` tags so the same media in another
  /// mounted feed (IndexedStack tabs) can't clash.
  final String heroPrefix;

  final Widget Function(
    BuildContext context,
    int index,
    Media media,
    Widget defaultCard,
  )?
  itemBuilder;

  const MediaSectionData({
    required this.type,
    this.title,
    this.trailingIcon,
    this.mediaList,
    this.loading = false,
    this.scrollController,
    this.customNullListIndicator,
    this.onTrailingIconTap,
    this.onTrailingIconLongPress,
    this.onTitleTap,
    this.onTitleLongPress,
    this.fullPage = true,
    this.onMediaTap,
    this.onMediaLongPress,
    this.onLoadMore,
    this.heroPrefix = '',
    this.itemBuilder,
  });

  const MediaSectionData.loading()
    : type = 0,
      loading = true,
      title = null,
      trailingIcon = null,
      mediaList = null,
      scrollController = null,
      customNullListIndicator = null,
      onTrailingIconTap = null,
      onTrailingIconLongPress = null,
      onTitleTap = null,
      onTitleLongPress = null,
      fullPage = false,
      onMediaTap = null,
      onMediaLongPress = null,
      onLoadMore = null,
      heroPrefix = '',
      itemBuilder = null;
}

class MediaSection extends StatelessWidget {
  final MediaSectionData data;

  const MediaSection({super.key, required this.data});

  static int? _total(Media media) => media.anime != null
      ? media.anime?.totalEpisodes
      : media.manga?.totalChapters;

  static String _infoText(Media media) {
    final left = media.userProgress?.toString() ?? '~';
    final total = _total(media);
    final next = media.anime?.nextAiringEpisode;
    final right = next != null && next > 0
        ? '$next | ${total ?? '~'}'
        : '${total ?? '~'}';
    return '$left | $right';
  }

  static String? _progressText(Media media) {
    final done = media.userProgress?.toString() ?? '~';
    final next = media.anime?.nextAiringEpisode;
    final total =
        _total(media)?.toString() ?? (next != null && next > 0 ? '$next' : '~');
    return '$done · $total';
  }

  static double? _score(Media media) {
    final raw = (media.userScore ?? 0) > 0
        ? media.userScore!
        : (media.meanScore ?? 0);
    return raw > 0 ? raw / 10 : null;
  }

  static double? _progress(Media media) {
    final done = media.userProgress ?? 0;
    final total = media.anime?.totalEpisodes ?? media.manga?.totalChapters;
    if (done <= 0 || total == null || total <= 0 || done >= total) return null;
    return done / total;
  }

  Widget? overlay(Media media) => null;

  ShelfCardItem toItem(BuildContext context, int index, Media media) {
    final detailed = !media.minimal;
    final heroTag = detailed
        ? 'cover:${data.heroPrefix}:${data.title}:$index:${media.id}'
        : null;
    final source = media.sourceData;
    return ShelfCardItem(
      id: media.id,
      heroTag: heroTag,
      imageUrl: media.cover,
      overlay: overlay(media),
      title: media.relation != null && source == null
          ? '${media.relation} · ${media.mainName}'
          : media.mainName,
      subtitle: detailed ? _infoText(media) : null,
      progress: detailed ? _progress(media) : null,
      progressText: detailed ? _progressText(media) : null,
      score: detailed ? _score(media) : null,
      scoreHighlight: (media.userScore ?? 0) > 0,
      airing: detailed && media.status == 'RELEASING',
      onTap: () => data.onMediaTap?.call(context, index, media, heroTag),
      onLongPress: data.onMediaLongPress == null
          ? null
          : () => data.onMediaLongPress!(context, index, media),
      cardBuilder: data.itemBuilder == null
          ? null
          : (defaultCard) =>
                data.itemBuilder!(context, index, media, defaultCard),
    );
  }

  List<ShelfCardItem>? _items(BuildContext context) {
    final media = data.mediaList;
    if (data.loading || media == null) return null;
    return [for (final (index, m) in media.indexed) toItem(context, index, m)];
  }

  Widget _rows(BuildContext context, {required bool banner}) {
    final media = data.mediaList ?? const <Media>[];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
      child: Column(
        children: [
          for (final (index, m) in media.indexed)
            Padding(
              padding: EdgeInsets.only(bottom: Dimens.gapSm),
              child: rowFor(context, index, m, banner: banner),
            ),
        ],
      ),
    );
  }

  Widget rowFor(
    BuildContext context,
    int index,
    Media media, {
    required bool banner,
  }) {
    final tag = 'row:${data.heroPrefix}:${data.title}:$index:${media.id}';
    void tap() => data.onMediaTap?.call(context, index, media, tag);
    void hold() => data.onMediaLongPress?.call(context, index, media);
    return banner
        ? MediaBannerTile(media: media, tag: tag, onTap: tap, onLongPress: hold)
        : MediaListTile(media: media, tag: tag, onTap: tap, onLongPress: hold);
  }

  VoidCallback? _openShelf(BuildContext context) {
    final media = data.mediaList;
    final title = data.title;
    if (!data.fullPage ||
        data.loading ||
        media == null ||
        media.isEmpty ||
        title == null ||
        title.isEmpty ||
        data.trailingIcon != null) {
      return null;
    }
    return () => unawaited(
      navigateToPage(
        context,
        ShelfScreen(
          title: title,
          media: media,
          loadMore: data.onLoadMore,
          itemFor: toItem,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (data.type == 1) return MediaCarousel(data: data);
    if (data.type == 2) return _rows(context, banner: false);
    if (data.type == 3) return _rows(context, banner: true);
    final open = _openShelf(context);
    return CardShelf(
      title: data.title,
      trailingIcon:
          data.trailingIcon ??
          (open == null ? null : Icons.arrow_forward_rounded),
      onTrailingIconTap: data.onTrailingIconTap ?? open,
      onTrailingIconLongPress: data.onTrailingIconLongPress,
      onTitleTap: data.onTitleTap ?? open,
      onTitleLongPress: data.onTitleLongPress,
      items: _items(context),
      dataKey: data.loading ? null : data.mediaList,
      scrollController: data.scrollController,
      onLoadMore: data.onLoadMore == null
          ? null
          : () async {
              final more = await data.onLoadMore!();
              if (more == null || !context.mounted) return null;
              return [
                for (final (index, m) in more.indexed)
                  toItem(context, index, m),
              ];
            },
    );
  }
}
