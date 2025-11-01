import 'package:isar/isar.dart';

part 'DefaultPlayerSettings.g.dart';

//TODO => see if i broke anything

@embedded
class PlayerSettings {
  String speed;
  int resizeMode;
//  bool useCustomMpvConfig;

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
  bool useLibass;
  bool useGpuNext;
  bool autoPlay;

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
    this.useLibass = false,
    this.useGpuNext = false,
    this.autoPlay = true,
    //  this.useCustomMpvConfig = false,
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
      useLibass: json['useLibass'] ?? false,
      useGpuNext: json['useGpuNext'] ?? false,
      autoPlay: json['autoPlay'] ?? true,
      //  useCustomMpvConfig: json['useCustomMpvConfig'] ?? false,
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
      'useLibass': useLibass,
      'useGpuNext': useGpuNext,
      'autoPlay': autoPlay,
      //'useCustomMpvConfig': useCustomMpvConfig,
    };
  }
}
