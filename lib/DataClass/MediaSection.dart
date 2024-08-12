
import 'package:flutter/cupertino.dart';

import 'Media.dart';

class MediaSectionData {
  final String title;
  final List<media>? list;
  final IconData? icon;
  final String? message;
  final String? buttonText;
  void Function()? onPressed;

  MediaSectionData({
    required this.title,
    required this.list,
    this.icon,
    this.message,
    this.buttonText,
    this.onPressed,
  });
}