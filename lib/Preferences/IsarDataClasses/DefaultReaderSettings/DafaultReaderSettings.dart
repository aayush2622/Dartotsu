import 'package:flutter/material.dart';
import 'package:isar/isar.dart';

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
    };
  }

  factory ReaderSettings.fromJson(Map<String, dynamic> json) {
    return ReaderSettings(
      layoutType: LayoutType.values[json['layoutType']],
      direction: Direction.values[json['direction']],
      dualPageMode: DualPageMode.values[json['dualPageMode']],
      scrollToNext: json['scrollToNext'],
      spacedPages: json['spacedPages'],
      hideScrollbar: json['hideScrollbar'],
      hidePageNumber: json['hidePageNumber'],
      keepScreenOn: json['keepScreenOn'],
      changePageWithVolumeButtons: json['changePageWithVolumeButtons'],
      openImageWithLongTap: json['openImageWithLongTap'],
    );
  }
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
        return 'Up to Down';
      case Direction.DTU:
        return 'Down to Up';
      case Direction.RTL:
        return 'Right to Left';
      case Direction.LTR:
        return 'Left to Right';
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
