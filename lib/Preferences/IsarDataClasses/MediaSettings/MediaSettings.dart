import 'dart:convert';

import 'package:dartotsu/DataClass/Media.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/DefaultReaderSettings/DafaultReaderSettings.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:get/get.dart';
import 'package:isar/isar.dart';

part 'MediaSettings.g.dart';

@collection
class MediaSettings {
  Id id = Isar.autoIncrement;
  @Index(unique: true, replace: true)
  late String key;

  int navBarIndex = 0;
  String? lastUsedSource;
  int viewType;
  bool isReverse;
  String? server; // for only anime
  List<String>? selectedScanlators; // for only manga
  PlayerSettings playerSettings;
  ReaderSettings readerSettings;

  MediaSettings({
    this.navBarIndex = 0,
    this.lastUsedSource,
    this.viewType = 0,
    this.isReverse = false,
    this.server,
    this.selectedScanlators,
    PlayerSettings? playerSetting,
    ReaderSettings? readerSetting,
  })  : playerSettings = playerSetting ??
            PlayerSettings.fromJson(
              jsonDecode(loadData(PrefName.playerSettings)),
            ),
        readerSettings = readerSetting ??
            ReaderSettings.fromJson(
              jsonDecode(loadData(PrefName.readerSettings)),
            );

  factory MediaSettings.fromJson(Map<String, dynamic> json) {
    return MediaSettings(
      navBarIndex: json['navBarIndex'],
      lastUsedSource: json['lastUsedSource'],
      viewType: json['viewType'],
      isReverse: json['isReverse'],
      server: json['server'],
      selectedScanlators: json['selectedScanlators'],
      playerSetting: PlayerSettings.fromJson(
          json['playerSettings'] as Map<String, dynamic>),
      readerSetting: json['readerSettings'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'navBarIndex': navBarIndex,
      'lastUsedSource': lastUsedSource,
      'viewType': viewType,
      'isReverse': isReverse,
      'server': server,
      'selectedScanlators': selectedScanlators,
      'playerSettings': playerSettings,
      'readerSettings': readerSettings,
    };
  }

  static void saveMediaSettings(Media media) {
    var service = Get.context!.currentService(listen: false);
    var key = "${service.getName}-${media.id}-Settings";
    saveCustomData(key, media.settings);
  }
}
