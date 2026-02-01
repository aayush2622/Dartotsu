import 'dart:math';

import 'package:dartotsu_extension_bridge/dartotsu_extension_bridge.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../Preferences/IsarDataClasses/MediaSettings/MediaSettings.dart';
import '../../Preferences/PrefManager.dart';
import 'Anime.dart';
import 'Author.dart';
import 'Character.dart';
import 'Date.dart';
import 'Manga.dart';
import 'Review.dart';
import 'User.dart';

part 'Generated/Media.g.dart';

@JsonSerializable()
class Media {
  String id;

  final Anime? anime;
  final Manga? manga;

  String? name;
  String? nameRomaji;
  String? userPreferredName;

  String? cover;
  String? banner;
  String? relation;
  int? favourites;
  bool? minimal = false;
  bool isAdult;
  bool isFav = false;

  int? userListId;
  bool isListPrivate = false;
  String? notes;
  int? userProgress;
  String? userStatus;
  int? userScore = 0;
  int userRepeat = 0;
  int? userUpdatedAt;
  Date? userStartedAt;
  Date? userCompletedAt;
  Map<String, bool>? inCustomListsOf;

  String? status;
  String? format;
  String? source;
  String? countryOfOrigin;
  int? meanScore;
  List<String> genres = [];
  List<String> tags = [];
  String? description;
  List<String> synonyms = [];
  String? trailer;
  Date? startDate;
  Date? endDate;
  int? popularity;
  int? timeUntilAiring;
  List<Character>? characters;
  List<Review>? review;
  List<Author>? staff;
  Media? prequel;
  Media? sequel;
  List<Media>? relations;
  List<Media>? recommendations;
  List<User>? users;
  String shareLink;
  MediaSettings settings = MediaSettings();

  bool cameFromContinue = false;
  Source? sourceData;

  Media({
    this.anime,
    this.manga,
    required this.id,
    this.name,
    this.nameRomaji,
    this.userPreferredName,
    this.cover,
    this.banner,
    this.relation,
    this.favourites,
    this.minimal = false,
    this.isAdult = false,
    this.isFav = false,
    this.userListId,
    this.isListPrivate = false,
    this.notes,
    this.userProgress,
    this.userStatus,
    this.userScore = 0,
    this.userRepeat = 0,
    this.userUpdatedAt,
    this.userStartedAt,
    this.userCompletedAt,
    this.inCustomListsOf,
    this.status,
    this.format,
    this.source,
    this.countryOfOrigin,
    this.meanScore,
    this.genres = const [],
    this.tags = const [],
    this.description,
    this.synonyms = const [],
    this.trailer,
    this.startDate,
    this.endDate,
    this.popularity,
    this.timeUntilAiring,
    this.characters,
    this.review,
    this.staff,
    this.prequel,
    this.sequel,
    this.relations,
    this.recommendations,
    this.users,
    MediaSettings? settings,
    required this.shareLink,
    this.cameFromContinue = false,
    this.sourceData,
  }) : settings = settings ?? MediaSettings();

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);

  String get mainName => userPreferredName ?? name ?? nameRomaji ?? "";

  factory Media.skeleton() {
    final random = Random();
    final values = {
      'userScore': 26,
      'meanScore': 32,
      'userProgress': 100,
    };

    final keys = values.keys.toList()..shuffle(random);
    final keepCount = random.nextInt(values.length + 1);

    final keptKeys = keys.take(keepCount).toSet();

    return Media(
      id: "0",
      userPreferredName: 'Media',
      genres: ["ergsdf", "fsdf", "ergsdf", "fsdf"],
      status: "who knows",
      isAdult: false,
      userScore:
          keptKeys.contains('userScore') ? values['userScore'] as int : 0,
      meanScore:
          keptKeys.contains('meanScore') ? values['meanScore'] as int : null,
      userProgress: keptKeys.contains('userProgress')
          ? values['userProgress'] as int
          : null,
      shareLink: 'https://github.com/aayush2622/Dartotsu',
    );
  }

  DMedia toDMedia() {
    return DMedia(
      title: name,
      url: shareLink,
      cover: cover,
      description: description,
    );
  }
}

class MediaMapWrapper {
  final Map<String, List<Media>> mediaMap;

  MediaMapWrapper({required this.mediaMap});

  factory MediaMapWrapper.fromJson(Map<String, dynamic> json) {
    return MediaMapWrapper(
      mediaMap: json.map((key, value) => MapEntry(
          key, (value as List).map((e) => Media.fromJson(e)).toList())),
    );
  }

  Map<String, dynamic> toJson() {
    return mediaMap.map((key, value) =>
        MapEntry(key, value.map((media) => media.toJson()).toList()));
  }
}

extension M on Pages {
  List<Media> toMedia({bool isAnime = false, Source? source}) {
    return list.map((e) {
      var id = loadCustomData<String>('${source?.name}-${e.url}');
      if (id == null) {
        var hash = e.hashCode;
        saveCustomData('${source?.name}-${e.url}', hash);
        id = hash.toString();
      }
      return Media(
        id: id,
        name: e.title,
        cover: e.cover,
        nameRomaji: e.title ?? '',
        userPreferredName: e.title ?? '',
        isAdult: false,
        shareLink: e.url!,
        minimal: true,
        anime: isAnime ? Anime() : null,
        manga: isAnime ? null : Manga(),
        sourceData: source,
        relation: source?.name ?? '',
      );
    }).toList();
  }
}
