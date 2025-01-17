
import 'package:isar/isar.dart';
part 'DefaultPlayerSettings.g.dart';

@collection
class PlayerSettings {
  Id id = Isar.autoIncrement;
  @Index(unique: true, replace: true)
  late String key;

  String speed;
  int resizeMode;
  // subtitlesSettings
  bool showSubtitle;
  String subtitleLanguage;
  int  subtitleSize;
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
    this.subtitleBackgroundColor = 0x80000000,
    this.subtitleOutlineColor = 0x00000000,
    this.showSubtitle = true,
    this.subtitleBottomPadding = 0,
    this.skipDuration = 85,
    this.subtitleWeight = 5,
  });
}

