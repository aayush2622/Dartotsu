import '../../../../Core/Preferences/PrefManager.dart';

const watchDefaultViewPref = Pref('watchDefaultView', 0, PrefLocation.OTHER);
const watchAutoMatchPref = Pref(
  'watchAutoMatch',
  'closest',
  PrefLocation.OTHER,
);
const watchAutoSourcePref = Pref('watchAutoSource', true, PrefLocation.OTHER);
const watchChunkSizePref = Pref('watchChunkSize', 30, PrefLocation.OTHER);
const watchBlurUnwatchedPref = Pref(
  'watchBlurUnwatched',
  false,
  PrefLocation.OTHER,
);
const watchShowDescriptionPref = Pref(
  'watchShowDescription',
  true,
  PrefLocation.OTHER,
);
const watchShowFillerPref = Pref('watchShowFiller', true, PrefLocation.OTHER);
const watchMarkOnLongPressPref = Pref(
  'watchMarkOnLongPress',
  true,
  PrefLocation.OTHER,
);

const watchResumeShelfPref = Pref('watchResumeShelf', true, PrefLocation.OTHER);

const aniSkipSubmitterPref = Pref('aniSkipSubmitter', '', PrefLocation.OTHER);

const trackAnimePref = Pref('trackProgressAnime', 'ask', PrefLocation.OTHER);
const trackMangaPref = Pref('trackProgressManga', 'ask', PrefLocation.OTHER);

class MediaWatchSettings {
  int? viewType;
  bool reverse;
  String? sourceId;
  String? sourceName;
  List<String> hiddenScanlators;
  String? matchMode;
  String? metaSource;
  String? season;

  MediaWatchSettings({
    this.viewType,
    this.reverse = false,
    this.sourceId,
    this.sourceName,
    List<String>? hiddenScanlators,
    this.matchMode,
    this.metaSource,
    this.season,
  }) : hiddenScanlators = hiddenScanlators ?? [];

  int get view => viewType ?? watchDefaultViewPref.rx.value;

  String get match => matchMode ?? watchAutoMatchPref.rx.value;

  Map<String, Object?> toJson() => {
    'viewType': viewType,
    'reverse': reverse,
    'sourceId': sourceId,
    'sourceName': sourceName,
    'hiddenScanlators': hiddenScanlators,
    'matchMode': matchMode,
    'metaSource': metaSource,
    'season': season,
  };

  factory MediaWatchSettings.fromJson(Map<dynamic, dynamic> json) =>
      MediaWatchSettings(
        viewType: (json['viewType'] as num?)?.toInt(),
        reverse: json['reverse'] == true,
        sourceId: json['sourceId'] as String?,
        sourceName: json['sourceName'] as String?,
        hiddenScanlators: [
          for (final s in (json['hiddenScanlators'] as List?) ?? const []) '$s',
        ],
        matchMode: json['matchMode'] as String?,
        metaSource: json['metaSource'] as String?,
        season: json['season'] as String?,
      );

  MediaWatchSettings copy() => MediaWatchSettings.fromJson(toJson());
}
