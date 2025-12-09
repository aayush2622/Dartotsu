import 'package:flutter/material.dart';
import 'package:isar_community/isar.dart';
part 'DafaultReaderSettings.g.dart';

@embedded
class ReaderSettings {
  @enumerated
  LayoutType layoutType;
  @enumerated
  Direction direction;
  @enumerated
  DualPageMode dualPageMode;
  bool scrollToNext;
  bool spacedPages;
  bool hideScrollbar;
  bool hidePageNumber;
  bool keepScreenOn;
  bool changePageWithVolumeButtons;
  bool openImageWithLongTap;
  bool cropBorders;

  ReaderSettings({
    this.layoutType = LayoutType.Continuous,
    this.direction = Direction.UTD,
    this.dualPageMode = DualPageMode.Auto,
    this.scrollToNext = true,
    this.spacedPages = false,
    this.hideScrollbar = false,
    this.hidePageNumber = false,
    this.keepScreenOn = false,
    this.changePageWithVolumeButtons = false,
    this.openImageWithLongTap = true,
    this.cropBorders = false,
  });

  Map<String, dynamic> toJson() {
    return {
      'layoutType': layoutType.index,
      'direction': direction.index,
      'dualPageMode': dualPageMode.index,
      'scrollToNext': scrollToNext,
      'spacedPages': spacedPages,
      'hideScrollbar': hideScrollbar,
      'hidePageNumber': hidePageNumber,
      'keepScreenOn': keepScreenOn,
      'changePageWithVolumeButtons': changePageWithVolumeButtons,
      'openImageWithLongTap': openImageWithLongTap,
      'cropBorders': cropBorders,
    };
  }

  factory ReaderSettings.fromJson(Map<String, dynamic> json) {
    return ReaderSettings(
      layoutType: _safeEnum(LayoutType.values, json['layoutType']) ??
          LayoutType.Continuous,
      direction:
          _safeEnum(Direction.values, json['direction']) ?? Direction.UTD,
      dualPageMode: _safeEnum(DualPageMode.values, json['dualPageMode']) ??
          DualPageMode.Auto,
      scrollToNext: json['scrollToNext'] ?? false,
      spacedPages: json['spacedPages'] ?? false,
      hideScrollbar: json['hideScrollbar'] ?? false,
      hidePageNumber: json['hidePageNumber'] ?? false,
      keepScreenOn: json['keepScreenOn'] ?? false,
      changePageWithVolumeButtons: json['changePageWithVolumeButtons'] ?? false,
      openImageWithLongTap: json['openImageWithLongTap'] ?? false,
      cropBorders: json['cropBorders'] ?? false,
    );
  }
}

T? _safeEnum<T>(List<T> values, dynamic raw) {
  if (raw == null) return null;
  if (raw is String) {
    try {
      return values.firstWhere((e) => e.toString().split('.').last == raw);
    } catch (_) {}
  }
  if (raw is int && raw >= 0 && raw < values.length) {
    return values[raw];
  }

  return null;
}

enum LayoutType {
  Continuous,
  Paged;

  IconData get icon {
    switch (this) {
      case LayoutType.Paged:
        return Icons.amp_stories_rounded;
      case LayoutType.Continuous:
        return Icons.view_column_rounded;
    }
  }
}

enum Direction {
  UTD,
  DTU,
  RTL,
  LTR;

  @override
  String toString() {
    switch (this) {
      case Direction.UTD:
        return 'getString.utd';
      case Direction.DTU:
        return 'getString.dtu';
      case Direction.RTL:
        return 'getString.rtl';
      case Direction.LTR:
        return 'getString.ltr';
    }
  }

  IconData get icon {
    switch (this) {
      case Direction.UTD:
        return Icons.swipe_down_alt_rounded;
      case Direction.DTU:
        return Icons.swipe_up_alt_rounded;
      case Direction.RTL:
        return Icons.swipe_left_alt_rounded;
      case Direction.LTR:
        return Icons.swipe_right_alt_rounded;
    }
  }

  Direction get next {
    switch (this) {
      case Direction.UTD:
        return Direction.RTL;
      case Direction.RTL:
        return Direction.DTU;
      case Direction.DTU:
        return Direction.LTR;
      case Direction.LTR:
        return Direction.UTD;
    }
  }
}

enum DualPageMode {
  Auto,
  Single,
  ForcedDouble,
}
