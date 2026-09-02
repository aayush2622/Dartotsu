import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import 'FeedScreens.dart';

/// One shell tab — a browse [type], or Home when `type` is null.
class FeedTab {
  final MediaType? type;
  const FeedTab(this.type);

  bool get isHome => type == null;

  String get label => type?.label ?? 'Home';

  IconData get icon => switch (type) {
    null => Icons.home_rounded,
    MediaType.anime => Icons.movie_filter_rounded,
    MediaType.manga => Icons.menu_book_rounded,
    MediaType.novel => Icons.auto_stories_rounded,
    MediaType.movie => Icons.theaters_rounded,
    MediaType.series => Icons.live_tv_rounded,
  };

  Widget build(MediaService service) => type == null
      ? HomeFeed(service: service)
      : BrowseFeed(service: service, type: type!);
}

/// The shell tabs for [service] — its browse types split around a centred
/// Home tab (`[anime] Home [manga]`, `Home [type]` for one, `[Home]` for none).
List<FeedTab> feedTabsFor(MediaService service) {
  final types = service.feedTypes;
  final mid = types.length ~/ 2;
  return [
    for (final t in types.take(mid)) FeedTab(t),
    const FeedTab(null),
    for (final t in types.skip(mid)) FeedTab(t),
  ];
}

/// Index of the Home tab in [feedTabsFor].
int homeTabIndex(MediaService service) => service.feedTypes.length ~/ 2;
