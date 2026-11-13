import '../../../Model/SectionLayout.dart';

import 'package:flutter/widgets.dart';

import '../../../Model/Setting.dart';
import '../../../Widgets/Shelf/MediaSection.dart';
import '../Model/Author.dart';
import '../Model/Character.dart';
import '../Model/Media.dart';

enum ScreenWidgetType { media, character, staff, data, settings, extra }

class ScreenData {
  final String? text;
  final String? html;
  final List<String> chips;
  final int chipLimit;
  final List<(String, String)> rows;
  final void Function(String chip)? onChipTap;
  final Map<String, void Function(BuildContext context)> onRowTap;
  final int? columns;

  const ScreenData({
    this.onChipTap,
    this.onRowTap = const {},
    this.columns,
    this.text,
    this.html,
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

  final SectionLayout sectionType;

  const ScreenWidget.media(
    this.title,
    this.media, {
    this.onLoadMore,
    this.section,
    this.sectionType = SectionLayout.shelf,
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
      sectionType = SectionLayout.shelf;

  const ScreenWidget.staff(this.title, this.staff)
    : type = ScreenWidgetType.staff,
      settings = null,
      media = null,
      characters = null,
      data = null,
      widget = null,
      onLoadMore = null,
      section = null,
      sectionType = SectionLayout.shelf;

  const ScreenWidget.data(this.title, this.data)
    : type = ScreenWidgetType.data,
      settings = null,
      media = null,
      characters = null,
      staff = null,
      widget = null,
      onLoadMore = null,
      section = null,
      sectionType = SectionLayout.shelf;

  const ScreenWidget.settings(this.title, this.settings)
    : type = ScreenWidgetType.settings,
      media = null,
      characters = null,
      staff = null,
      data = null,
      widget = null,
      onLoadMore = null,
      section = null,
      sectionType = SectionLayout.shelf;

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
      sectionType = SectionLayout.shelf;

  bool get isMedia => type == ScreenWidgetType.media;

  bool get isCarousel => sectionType == SectionLayout.carousel;

  bool get isRows =>
      sectionType == SectionLayout.rows || sectionType == SectionLayout.banner;
}
