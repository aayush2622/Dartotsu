import 'package:flutter/widgets.dart';

import '../../../Widgets/Shelf/MediaSection.dart';
import '../Model/Author.dart';
import '../Model/Character.dart';
import '../Model/Media.dart';

enum ScreenWidgetType { media, character, staff, data, extra }

class ScreenData {
  final String? text;
  final List<String> chips;
  final int chipLimit;
  final List<(String, String)> rows;

  const ScreenData({
    this.text,
    this.chips = const [],
    this.chipLimit = 12,
    this.rows = const [],
  });
}

class ScreenWidget {
  final ScreenWidgetType type;
  final String? title;
  final List<Media>? media;
  final List<Character>? characters;
  final List<Author>? staff;
  final ScreenData? data;
  final Widget? widget;
  final Future<List<Media>?> Function(int page)? onLoadMore;
  final MediaSection Function(MediaSectionData data)? section;
  final bool spotlight;

  const ScreenWidget.media(
    this.title,
    this.media, {
    this.onLoadMore,
    this.section,
    this.spotlight = false,
  }) : type = ScreenWidgetType.media,
       characters = null,
       staff = null,
       data = null,
       widget = null;

  const ScreenWidget.characters(this.title, this.characters)
    : type = ScreenWidgetType.character,
      media = null,
      staff = null,
      data = null,
      widget = null,
      onLoadMore = null,
      section = null,
      spotlight = false;

  const ScreenWidget.staff(this.title, this.staff)
    : type = ScreenWidgetType.staff,
      media = null,
      characters = null,
      data = null,
      widget = null,
      onLoadMore = null,
      section = null,
      spotlight = false;

  const ScreenWidget.data(this.title, this.data)
    : type = ScreenWidgetType.data,
      media = null,
      characters = null,
      staff = null,
      widget = null,
      onLoadMore = null,
      section = null,
      spotlight = false;

  const ScreenWidget.extra(this.widget)
    : type = ScreenWidgetType.extra,
      title = null,
      media = null,
      characters = null,
      staff = null,
      data = null,
      onLoadMore = null,
      section = null,
      spotlight = false;

  bool get isMedia => type == ScreenWidgetType.media;
}
