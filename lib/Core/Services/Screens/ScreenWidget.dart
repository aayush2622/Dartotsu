import 'package:flutter/widgets.dart';

import '../../../Model/Setting.dart';
import '../../../Widgets/Shelf/MediaSection.dart';
import '../Model/Author.dart';
import '../Model/Character.dart';
import '../Model/Media.dart';

enum ScreenWidgetType { media, character, staff, data, settings, extra }

class ScreenData {
  final String? text;
  final List<String> chips;
  final int chipLimit;
  final List<(String, String)> rows;
  final void Function(String chip)? onChipTap;
  final int? columns;

  const ScreenData({
    this.onChipTap,
    this.columns,
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
  final List<Setting>? settings;
  final Widget? widget;
  final Future<List<Media>?> Function(int page)? onLoadMore;
  final MediaSection Function(MediaSectionData data)? section;

  /// How a media section renders: 0 card shelf, 1 carousel, 2 list rows,
  /// 3 banner rows (see `MediaSection`).
  final int sectionType;

  const ScreenWidget.media(
    this.title,
    this.media, {
    this.onLoadMore,
    this.section,
    this.sectionType = 0,
  }) : type = ScreenWidgetType.media,
       settings = null,
       characters = null,
       staff = null,
       data = null,
       widget = null;

  const ScreenWidget.characters(this.title, this.characters)
    : type = ScreenWidgetType.character,
      settings = null,
      media = null,
      staff = null,
      data = null,
      widget = null,
      onLoadMore = null,
      section = null,
      sectionType = 0;

  const ScreenWidget.staff(this.title, this.staff)
    : type = ScreenWidgetType.staff,
      settings = null,
      media = null,
      characters = null,
      data = null,
      widget = null,
      onLoadMore = null,
      section = null,
      sectionType = 0;

  const ScreenWidget.data(this.title, this.data)
    : type = ScreenWidgetType.data,
      settings = null,
      media = null,
      characters = null,
      staff = null,
      widget = null,
      onLoadMore = null,
      section = null,
      sectionType = 0;

  const ScreenWidget.settings(this.title, this.settings)
    : type = ScreenWidgetType.settings,
      media = null,
      characters = null,
      staff = null,
      data = null,
      widget = null,
      onLoadMore = null,
      section = null,
      sectionType = 0;

  const ScreenWidget.extra(this.widget)
    : type = ScreenWidgetType.extra,
      settings = null,
      title = null,
      media = null,
      characters = null,
      staff = null,
      data = null,
      onLoadMore = null,
      section = null,
      sectionType = 0;

  bool get isMedia => type == ScreenWidgetType.media;

  bool get isCarousel => sectionType == 1;

  bool get isRows => sectionType == 2 || sectionType == 3;
}
