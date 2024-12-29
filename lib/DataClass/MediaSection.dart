import 'package:flutter/cupertino.dart';

import 'Media.dart';

class MediaSectionData {
  final int type;
  final String title;
  final String pairTitle;
  final List<Media>? list;
  final IconData? emptyIcon;
  final String? emptyMessage;
  final String? emptyButtonText;
  final bool isLarge;
  final ScrollController? scrollController;
  void Function()? emptyButtonOnPressed;
  void Function()? onLongPressTitle;

  MediaSectionData({
    required this.type,
    required this.title,
    required this.pairTitle,
    required this.list,
    this.scrollController,
    this.isLarge = false,
    this.emptyIcon,
    this.emptyMessage,
    this.emptyButtonText,
    this.emptyButtonOnPressed,
    this.onLongPressTitle,
  });
}
