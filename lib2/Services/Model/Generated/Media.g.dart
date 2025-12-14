// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      anime: json['anime'] == null
          ? null
          : Anime.fromJson(json['anime'] as Map<String, dynamic>),
      manga: json['manga'] == null
          ? null
          : Manga.fromJson(json['manga'] as Map<String, dynamic>),
      id: json['id'] as String,
      name: json['name'] as String?,
      nameRomaji: json['nameRomaji'] as String?,
      userPreferredName: json['userPreferredName'] as String?,
      cover: json['cover'] as String?,
      banner: json['banner'] as String?,
      relation: json['relation'] as String?,
      favourites: (json['favourites'] as num?)?.toInt(),
      minimal: json['minimal'] as bool? ?? false,
      isAdult: json['isAdult'] as bool? ?? false,
      isFav: json['isFav'] as bool? ?? false,
      userListId: (json['userListId'] as num?)?.toInt(),
      isListPrivate: json['isListPrivate'] as bool? ?? false,
      notes: json['notes'] as String?,
      userProgress: (json['userProgress'] as num?)?.toInt(),
      userStatus: json['userStatus'] as String?,
      userScore: (json['userScore'] as num?)?.toInt() ?? 0,
      userRepeat: (json['userRepeat'] as num?)?.toInt() ?? 0,
      userUpdatedAt: (json['userUpdatedAt'] as num?)?.toInt(),
      userStartedAt: json['userStartedAt'] == null
          ? null
          : Date.fromJson(json['userStartedAt'] as Map<String, dynamic>),
      userCompletedAt: json['userCompletedAt'] == null
          ? null
          : Date.fromJson(json['userCompletedAt'] as Map<String, dynamic>),
      inCustomListsOf: (json['inCustomListsOf'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
      status: json['status'] as String?,
      format: json['format'] as String?,
      source: json['source'] as String?,
      countryOfOrigin: json['countryOfOrigin'] as String?,
      meanScore: (json['meanScore'] as num?)?.toInt(),
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      description: json['description'] as String?,
      synonyms: (json['synonyms'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      trailer: json['trailer'] as String?,
      startDate: json['startDate'] == null
          ? null
          : Date.fromJson(json['startDate'] as Map<String, dynamic>),
      endDate: json['endDate'] == null
          ? null
          : Date.fromJson(json['endDate'] as Map<String, dynamic>),
      popularity: (json['popularity'] as num?)?.toInt(),
      timeUntilAiring: (json['timeUntilAiring'] as num?)?.toInt(),
      characters: (json['characters'] as List<dynamic>?)
          ?.map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
      review: (json['review'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      staff: (json['staff'] as List<dynamic>?)
          ?.map((e) => Author.fromJson(e as Map<String, dynamic>))
          .toList(),
      prequel: json['prequel'] == null
          ? null
          : Media.fromJson(json['prequel'] as Map<String, dynamic>),
      sequel: json['sequel'] == null
          ? null
          : Media.fromJson(json['sequel'] as Map<String, dynamic>),
      relations: (json['relations'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendations: (json['recommendations'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      settings: json['settings'] == null
          ? null
          : MediaSettings.fromJson(json['settings'] as Map<String, dynamic>),
      shareLink: json['shareLink'] as String?,
      cameFromContinue: json['cameFromContinue'] as bool? ?? false,
      sourceData: json['sourceData'] == null
          ? null
          : Source.fromJson(json['sourceData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'id': instance.id,
      'anime': instance.anime,
      'manga': instance.manga,
      'name': instance.name,
      'nameRomaji': instance.nameRomaji,
      'userPreferredName': instance.userPreferredName,
      'cover': instance.cover,
      'banner': instance.banner,
      'relation': instance.relation,
      'favourites': instance.favourites,
      'minimal': instance.minimal,
      'isAdult': instance.isAdult,
      'isFav': instance.isFav,
      'userListId': instance.userListId,
      'isListPrivate': instance.isListPrivate,
      'notes': instance.notes,
      'userProgress': instance.userProgress,
      'userStatus': instance.userStatus,
      'userScore': instance.userScore,
      'userRepeat': instance.userRepeat,
      'userUpdatedAt': instance.userUpdatedAt,
      'userStartedAt': instance.userStartedAt,
      'userCompletedAt': instance.userCompletedAt,
      'inCustomListsOf': instance.inCustomListsOf,
      'status': instance.status,
      'format': instance.format,
      'source': instance.source,
      'countryOfOrigin': instance.countryOfOrigin,
      'meanScore': instance.meanScore,
      'genres': instance.genres,
      'tags': instance.tags,
      'description': instance.description,
      'synonyms': instance.synonyms,
      'trailer': instance.trailer,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'popularity': instance.popularity,
      'timeUntilAiring': instance.timeUntilAiring,
      'characters': instance.characters,
      'review': instance.review,
      'staff': instance.staff,
      'prequel': instance.prequel,
      'sequel': instance.sequel,
      'relations': instance.relations,
      'recommendations': instance.recommendations,
      'users': instance.users,
      'shareLink': instance.shareLink,
      'settings': instance.settings,
      'cameFromContinue': instance.cameFromContinue,
      'sourceData': instance.sourceData,
    };
