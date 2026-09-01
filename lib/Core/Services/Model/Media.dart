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

/// The one shared media type. A service that carries extra data subclasses this
/// (see `AnilistMedia`) — the subclass is never serialized, only the base is.
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
  bool minimal;
  bool isAdult;
  bool isFav;

  // -- user list entry --
  int? userListId;
  bool isListPrivate;
  String? notes;
  int? userProgress;
  String? userStatus;
  int? userScore;
  int userRepeat;
  int? userUpdatedAt;
  Date? userStartedAt;
  Date? userCompletedAt;

  // -- metadata --
  String? status;
  String? format;
  String? source;
  String? countryOfOrigin;
  int? meanScore;
  List<String> genres;
  List<String> tags;
  String? description;
  List<String> synonyms;
  String? trailer;
  Date? startDate;
  Date? endDate;
  int? popularity;
  int? timeUntilAiring;

  // -- detail page (not persisted) --
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Character>? characters;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Review>? review;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Author>? staff;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Media? prequel;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Media? sequel;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Media>? relations;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<Media>? recommendations;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<User>? users;

  String shareLink;

  /// Lazily created — a rail of 300 media should not allocate 300 settings
  /// objects, and this keeps [Media] cheap to copy across an isolate.
  @JsonKey(includeFromJson: false, includeToJson: false)
  MediaSettings? _settings;

  MediaSettings get settings => _settings ??= MediaSettings();

  set settings(MediaSettings value) => _settings = value;

  bool cameFromContinue;

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required this.shareLink,
    this.cameFromContinue = false,
    this.sourceData,
  });

  factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);

  String get mainName => userPreferredName ?? name ?? nameRomaji ?? '';

  bool get isAnime => anime != null;

  int? get totalUnits => anime?.totalEpisodes ?? manga?.totalChapters;

  factory Media.skeleton() {
    final random = Random();
    final values = {'userScore': 26, 'meanScore': 32, 'userProgress': 100};
    final keys = values.keys.toList()..shuffle(random);
    final kept = keys.take(random.nextInt(values.length + 1)).toSet();

    return Media(
      id: '0',
      userPreferredName: 'Media',
      genres: const ['ergsdf', 'fsdf', 'ergsdf', 'fsdf'],
      status: 'who knows',
      userScore: kept.contains('userScore') ? values['userScore'] : 0,
      meanScore: kept.contains('meanScore') ? values['meanScore'] : null,
      userProgress: kept.contains('userProgress')
          ? values['userProgress']
          : null,
      shareLink: 'https://github.com/aayush2622/Dartotsu',
    );
  }

  DMedia toDMedia() => DMedia(
    title: name,
    url: shareLink,
    cover: cover,
    description: description,
  );
}

extension M on Pages {
  List<Media> toMedia({bool isAnime = false, Source? source}) {
    return list.map((e) {
      var id = loadCustomData<String>('${source?.name}-${e.url}');
      if (id == null) {
        id = e.hashCode.toString();
        saveCustomData('${source?.name}-${e.url}', id);
      }
      return Media(
        id: id,
        name: e.title,
        cover: e.cover,
        nameRomaji: e.title ?? '',
        userPreferredName: e.title ?? '',
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
