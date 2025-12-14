// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      mainPicture: json['main_picture'] == null
          ? null
          : Picture.fromJson(json['main_picture'] as Map<String, dynamic>),
      alternativeTitles: json['alternative_titles'] == null
          ? null
          : AlternativeTitles.fromJson(
              json['alternative_titles'] as Map<String, dynamic>),
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      synopsis: json['synopsis'] as String?,
      mean: (json['mean'] as num?)?.toDouble(),
      rank: (json['rank'] as num?)?.toInt(),
      popularity: (json['popularity'] as num?)?.toInt(),
      numListUsers: (json['num_list_users'] as num?)?.toInt(),
      numScoringUsers: (json['num_scoring_users'] as num?)?.toInt(),
      nsfw: json['nsfw'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      mediaType: json['media_type'] as String?,
      status: json['status'] as String?,
      genres: (json['genres'] as List<dynamic>?)
          ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
      pictures: (json['pictures'] as List<dynamic>?)
          ?.map((e) => Picture.fromJson(e as Map<String, dynamic>))
          .toList(),
      background: json['background'] as String?,
      relatedAnime: (json['related_anime'] as List<dynamic>?)
          ?.map((e) => Related.fromJson(e as Map<String, dynamic>))
          .toList(),
      relatedManga: (json['related_manga'] as List<dynamic>?)
          ?.map((e) => Related.fromJson(e as Map<String, dynamic>))
          .toList(),
      recommendations: (json['recommendations'] as List<dynamic>?)
          ?.map((e) => Recommendation.fromJson(e as Map<String, dynamic>))
          .toList(),
      myListStatus: json['my_list_status'] == null
          ? null
          : MyListStatus.fromJson(
              json['my_list_status'] as Map<String, dynamic>),
      numEpisodes: (json['num_episodes'] as num?)?.toInt(),
      numChapters: (json['num_chapters'] as num?)?.toInt(),
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'main_picture': instance.mainPicture,
      'alternative_titles': instance.alternativeTitles,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'synopsis': instance.synopsis,
      'mean': instance.mean,
      'rank': instance.rank,
      'popularity': instance.popularity,
      'num_list_users': instance.numListUsers,
      'num_scoring_users': instance.numScoringUsers,
      'nsfw': instance.nsfw,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'media_type': instance.mediaType,
      'status': instance.status,
      'genres': instance.genres,
      'pictures': instance.pictures,
      'background': instance.background,
      'related_anime': instance.relatedAnime,
      'related_manga': instance.relatedManga,
      'recommendations': instance.recommendations,
      'my_list_status': instance.myListStatus,
      'num_episodes': instance.numEpisodes,
      'num_chapters': instance.numChapters,
    };

MyListStatus _$MyListStatusFromJson(Map<String, dynamic> json) => MyListStatus(
      status: json['status'] as String?,
      score: (json['score'] as num?)?.toInt(),
      numEpisodesWatched: (json['num_episodes_watched'] as num?)?.toInt(),
      numChaptersRead: (json['num_chapters_read'] as num?)?.toInt(),
      isRewatching: json['is_rewatching'] as bool?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(formatDate(json['updated_at'] as String)),
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(formatDate(json['start_date'] as String)),
      finishDate: json['finish_date'] == null
          ? null
          : DateTime.parse(formatDate(json['finish_date'] as String)),
    );

String formatDate(String date) {
  if (date.length == 4) {
    return "$date-01-01";
  } else if (date.length == 7) {
    return "$date-01";
  }
  return date;
}

Map<String, dynamic> _$MyListStatusToJson(MyListStatus instance) =>
    <String, dynamic>{
      'status': instance.status,
      'score': instance.score,
      'num_episodes_watched': instance.numEpisodesWatched,
      'num_chapters_read': instance.numChaptersRead,
      'is_rewatching': instance.isRewatching,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'start_date': instance.startDate?.toIso8601String(),
      'finish_date': instance.finishDate?.toIso8601String(),
    };

Ranking _$RankingFromJson(Map<String, dynamic> json) => Ranking(
      rank: (json['rank'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RankingToJson(Ranking instance) => <String, dynamic>{
      'rank': instance.rank,
    };

AlternativeTitles _$AlternativeTitlesFromJson(Map<String, dynamic> json) =>
    AlternativeTitles(
      synonyms: (json['synonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      en: json['en'] as String?,
      ja: json['ja'] as String?,
    );

Map<String, dynamic> _$AlternativeTitlesToJson(AlternativeTitles instance) =>
    <String, dynamic>{
      'synonyms': instance.synonyms,
      'en': instance.en,
      'ja': instance.ja,
    };

Genre _$GenreFromJson(Map<String, dynamic> json) => Genre(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$GenreToJson(Genre instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

Picture _$PictureFromJson(Map<String, dynamic> json) => Picture(
      medium: json['medium'] as String?,
      large: json['large'] as String?,
    );

Map<String, dynamic> _$PictureToJson(Picture instance) => <String, dynamic>{
      'medium': instance.medium,
      'large': instance.large,
    };

Recommendation _$RecommendationFromJson(Map<String, dynamic> json) =>
    Recommendation(
      node: json['node'] == null
          ? null
          : Media.fromJson(json['node'] as Map<String, dynamic>),
      numRecommendations: (json['num_recommendations'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RecommendationToJson(Recommendation instance) =>
    <String, dynamic>{
      'node': instance.node,
      'num_recommendations': instance.numRecommendations,
    };

Related _$RelatedFromJson(Map<String, dynamic> json) => Related(
      node: json['node'] == null
          ? null
          : Media.fromJson(json['node'] as Map<String, dynamic>),
      relationType: json['relation_type'] as String?,
      relationTypeFormatted: json['relation_type_formatted'] as String?,
    );

Map<String, dynamic> _$RelatedToJson(Related instance) => <String, dynamic>{
      'node': instance.node,
      'relation_type': instance.relationType,
      'relation_type_formatted': instance.relationTypeFormatted,
    };
