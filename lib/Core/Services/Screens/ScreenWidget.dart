import 'package:flutter/widgets.dart';

import '../Model/Media.dart';

class ScreenWidget {
  final String? title;
  final List<Media>? media;
  final Future<List<Media>?> Function(int page)? onLoadMore;
  final Widget? widget;

  const ScreenWidget.media(this.title, this.media, {this.onLoadMore})
    : widget = null;

  const ScreenWidget.extra(this.widget)
    : title = null,
      media = null,
      onLoadMore = null;

  bool get isMedia => media != null;
}
