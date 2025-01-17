import 'package:hive/hive.dart';

part 'DefaultPlayerSettings.g.dart';

@HiveType(typeId: 3)
class PlayerSettings {
  @HiveField(0)
  String speed;
  @HiveField(1)
  int resizeMode;
  // subtitlesSettings
  @HiveField(2)
  bool showSubtitle;
  @HiveField(3)
  String subtitleLanguage;
  @HiveField(4)
  int  subtitleSize;
  @HiveField(5)
  int subtitleColor;
  @HiveField(6)
  String subtitleFont;
  @HiveField(7)
  int subtitleBackgroundColor;
  @HiveField(8)
  int subtitleOutlineColor;
  @HiveField(9)
  int subtitleBottomPadding;
  @HiveField(10)
  int skipDuration;
  @HiveField(11)
  int subtitleWeight;

  PlayerSettings({
    this.speed = '1x',
    this.resizeMode = 0,
    this.subtitleLanguage = 'en',
    this.subtitleSize = 32,
    this.subtitleColor = 0xFFFFFFFF,
    this.subtitleFont = 'Poppins',
    this.subtitleBackgroundColor = 0x80000000,
    this.subtitleOutlineColor = 0x00000000,
    this.showSubtitle = true,
    this.subtitleBottomPadding = 0,
    this.skipDuration = 85,
    this.subtitleWeight = 5,
  });
}

