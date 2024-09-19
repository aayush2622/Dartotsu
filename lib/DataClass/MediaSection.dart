
import 'package:flutter/cupertino.dart';

import 'Media.dart';

class MediaSectionData {
  final int type;
  final String title;
  final List<media>? list;
  final IconData? emptyIcon;
  final String? emptyMessage;
  final String? emptyButtonText;
  void Function()? emptyButtonOnPressed;
  MediaSectionData({
    required this.type,
    required this.title,
    required this.list,
    this.emptyIcon,
    this.emptyMessage,
    this.emptyButtonText,
    this.emptyButtonOnPressed,
  });
}