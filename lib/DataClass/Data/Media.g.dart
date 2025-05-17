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
      id: (json['id'] as num).toInt(),
      typeMAL: json['typeMAL'] as String?,
      name: json['name'] as String?,
      nameRomaji: json['nameRomaji'] as String,
      userPreferredName: json['userPreferredName'] as String,
      cover: json['cover'] as String?,
      banner: json['banner'] as String?,
      relation: json['relation'] as String?,
      favourites: (json['favourites'] as num?)?.toInt(),
      minimal: json['minimal'] as bool? ?? false,
      isAdult: json['isAdult'] as bool? ?? false,
      isFav: json['isFav'] as bool? ?? false,
      notify: json['notify'] as bool? ?? false,
      userListId: (json['userListId'] as num?)?.toInt(),
      isListPrivate: json['isListPrivate'] as bool? ?? false,
      notes: json['notes'] as String?,
      userProgress: (json['userProgress'] as num?)?.toInt(),
      userStatus: json['userStatus'] as String?,
      userScore: (json['userScore'] as num?)?.toInt() ?? 0,
      userRepeat: (json['userRepeat'] as num?)?.toInt() ?? 0,
      userUpdatedAt: (json['userUpdatedAt'] as num?)?.toInt(),
      userStartedAt: json['userStartedAt'] ?? 0,
      userCompletedAt: json['userCompletedAt'] ?? 0,
      inCustomListsOf: (json['inCustomListsOf'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
      userFavOrder: (json['userFavOrder'] as num?)?.toInt(),
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
          : FuzzyDate.fromJson(json['startDate'] as Map<String, dynamic>),
      endDate: json['endDate'] == null
          ? null
          : FuzzyDate.fromJson(json['endDate'] as Map<String, dynamic>),
      popularity: (json['popularity'] as num?)?.toInt(),
      timeUntilAiring: (json['timeUntilAiring'] as num?)?.toInt(),
      characters: (json['characters'] as List<dynamic>?)
          ?.map((e) => character.fromJson(e as Map<String, dynamic>))
          .toList(),
      review: (json['review'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
      staff: (json['staff'] as List<dynamic>?)
          ?.map((e) => author.fromJson(e as Map<String, dynamic>))
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
          ?.map((e) => userData.fromJson(e as Map<String, dynamic>))
          .toList(),
      vrvId: json['vrvId'] as String?,
      crunchySlug: json['crunchySlug'] as String?,
      nameMAL: json['nameMAL'] as String?,
      shareLink: json['shareLink'] as String?,
      settings:
          MediaSettings.fromJson(json['settings'] as Map<String, dynamic>),
      streamingEpisodes: (json['streamingEpisodes'] as List<dynamic>?)
          ?.map((e) => anilistApi.MediaStreamingEpisode.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      idKitsu: json['idKitsu'] as String?,
      idAnilist: (json['idAnilist'] as num?)?.toInt(),
      idMAL: (json['idMAL'] as num?)?.toInt(),
      idSimkl: (json['idSimkl'] as num?)?.toInt(),
      cameFromContinue: json['cameFromContinue'] as bool? ?? false,
      mal: json['mal'] as bool? ?? false,
      kitsu: json['kitsu'] as bool? ?? false,
      sourceData: json['sourceData'] == null
          ? null
          : Source.fromJson(json['sourceData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'anime': instance.anime,
      'manga': instance.manga,
      'id': instance.id,
      'typeMAL': instance.typeMAL,
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
      'notify': instance.notify,
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
      'userFavOrder': instance.userFavOrder,
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
      'vrvId': instance.vrvId,
      'crunchySlug': instance.crunchySlug,
      'nameMAL': instance.nameMAL,
      'shareLink': instance.shareLink,
      'settings': instance.settings,
      'streamingEpisodes': instance.streamingEpisodes,
      'cameFromContinue': instance.cameFromContinue,
      'mal': instance.mal,
      'kitsu': instance.kitsu,
      'idAnilist': instance.idAnilist,
      'idMAL': instance.idMAL,
      'idKitsu': instance.idKitsu,
      'idSimkl': instance.idSimkl,
      'sourceData': instance.sourceData,
    };
