import 'package:isar/isar.dart';

part 'DefaultPlayerSettings.g.dart';

@embedded
class PlayerSettings {
  String speed;
  int resizeMode;

  // subtitlesSettings
  bool showSubtitle;
  String subtitleLanguage;
  int subtitleSize;
  int subtitleColor;
  String subtitleFont;
  int subtitleBackgroundColor;
  int subtitleOutlineColor;
  int subtitleBottomPadding;
  int skipDuration;
  int subtitleWeight;

  PlayerSettings({
    this.speed = '1x',
    this.resizeMode = 0,
    this.subtitleLanguage = 'en',
    this.subtitleSize = 32,
    this.subtitleColor = 0xFFFFFFFF,
    this.subtitleFont = 'Poppins',
    this.subtitleBackgroundColor = 0x00000000,
    this.subtitleOutlineColor = 0x00000000,
    this.showSubtitle = true,
    this.subtitleBottomPadding = 0,
    this.skipDuration = 85,
    this.subtitleWeight = 5,
  });

  factory PlayerSettings.fromJson(Map<String, dynamic> json) {
    return PlayerSettings(
      speed: json['speed'],
      resizeMode: json['resizeMode'],
      subtitleLanguage: json['subtitleLanguage'],
      subtitleSize: json['subtitleSize'],
      subtitleColor: json['subtitleColor'],
      subtitleFont: json['subtitleFont'],
      subtitleBackgroundColor: json['subtitleBackgroundColor'],
      subtitleOutlineColor: json['subtitleOutlineColor'],
      showSubtitle: json['showSubtitle'],
      subtitleBottomPadding: json['subtitleBottomPadding'],
      skipDuration: json['skipDuration'],
      subtitleWeight: json['subtitleWeight'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'speed': speed,
      'resizeMode': resizeMode,
      'subtitleLanguage': subtitleLanguage,
      'subtitleSize': subtitleSize,
      'subtitleColor': subtitleColor,
      'subtitleFont': subtitleFont,
      'subtitleBackgroundColor': subtitleBackgroundColor,
      'subtitleOutlineColor': subtitleOutlineColor,
      'showSubtitle': showSubtitle,
      'subtitleBottomPadding': subtitleBottomPadding,
      'skipDuration': skipDuration,
      'subtitleWeight': subtitleWeight,
    };
  }
}
