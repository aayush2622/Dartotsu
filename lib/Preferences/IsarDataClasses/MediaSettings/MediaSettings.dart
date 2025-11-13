import 'dart:convert';

import 'package:dartotsu/DataClass/Media.dart';
import 'package:dartotsu/Functions/Extensions.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/DefaultPlayerSettings/DefaultPlayerSettings.dart';
import 'package:dartotsu/Preferences/IsarDataClasses/DefaultReaderSettings/DafaultReaderSettings.dart';
import 'package:dartotsu/Preferences/PrefManager.dart';
import 'package:get/get.dart';
import 'package:isar_community/isar.dart';

part 'MediaSettings.g.dart';

enum AutoSourceMatch {
  Exact,
  Closest;

  int toJson() {
    return switch (this) {
      AutoSourceMatch.Exact => 0,
      AutoSourceMatch.Closest => 1,
    };
  }

  static AutoSourceMatch fromJson(int json) {
    return switch (json) {
      0 => AutoSourceMatch.Exact,
      1 => AutoSourceMatch.Closest,
      _ => AutoSourceMatch.Exact,
    };
  }
}

@collection
class MediaSettings {
  Id id = Isar.autoIncrement;
  @Index(unique: true, replace: true)
  late String key;
  @Enumerated(EnumType.name)
  late PrefLocation location;
  int navBarIndex = 0;
  String? lastUsedSource;
  int viewType;
  bool isReverse;
  String? server; // for only anime
  List<String>? selectedScanlators; // for only manga
  late PlayerSettings playerSettings;
  late ReaderSettings readerSettings;

  MediaSettings({
    this.navBarIndex = 0,
    this.lastUsedSource,
    this.viewType = 0,
    this.isReverse = false,
    this.server,
    this.selectedScanlators,
    PlayerSettings? playerSetting,
    ReaderSettings? readerSetting,
  }) {
    var perPlayerSettings = loadData<bool>(PrefName.perAnimePlayerSettings);
    late var defaultPlayerSettings = PlayerSettings.fromJson(
      jsonDecode(loadData(PrefName.playerSettings)),
    );
    late var defaultReaderSettings = ReaderSettings.fromJson(
      jsonDecode(loadData(PrefName.readerSettings)),
    );

    playerSettings = perPlayerSettings
        ? (playerSetting ?? defaultPlayerSettings)
        : defaultPlayerSettings;
    readerSettings = perPlayerSettings
        ? (readerSetting ?? defaultReaderSettings)
        : defaultReaderSettings;
  }

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
      readerSetting: ReaderSettings.fromJson(
          json['playerSettings'] as Map<String, dynamic>),
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
