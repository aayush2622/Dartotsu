// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      anime: (json['anime'] as List<dynamic>?)
          ?.map((e) => Anime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'anime': instance.anime,
    };

Anime _$AnimeFromJson(Map<String, dynamic> json) => Anime(
      lastWatchedAt: json['last_watched_at'] == null
          ? null
          : DateTime.parse(json['last_watched_at'] as String),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      userRating: (json['user_rating'] as num?)?.toInt(),
      lastWatched: json['last_watched'] as String?,
      nextToWatch: json['next_to_watch'] as String?,
      watchedEpisodesCount: (json['watched_episodes_count'] as num?)?.toInt(),
      totalEpisodesCount: (json['total_episodes_count'] as num?)?.toInt(),
      notAiredEpisodesCount:
          (json['not_aired_episodes_count'] as num?)?.toInt(),
      show: json['show'] == null
          ? null
          : Show.fromJson(json['show'] as Map<String, dynamic>),
      animeType: $enumDecodeNullable(_$AnimeTypeEnumMap, json['anime_type']),
    );

Map<String, dynamic> _$AnimeToJson(Anime instance) => <String, dynamic>{
      'last_watched_at': instance.lastWatchedAt?.toIso8601String(),
      'status': _$StatusEnumMap[instance.status],
      'user_rating': instance.userRating,
      'last_watched': instance.lastWatched,
      'next_to_watch': instance.nextToWatch,
      'watched_episodes_count': instance.watchedEpisodesCount,
      'total_episodes_count': instance.totalEpisodesCount,
      'not_aired_episodes_count': instance.notAiredEpisodesCount,
      'show': instance.show,
      'anime_type': _$AnimeTypeEnumMap[instance.animeType],
    };
const _$StatusEnumMap = {
  Status.COMPLETED: 'completed',
  Status.DROPPED: 'dropped',
  Status.PLANNING: 'plantowatch',
  Status.CURRENT: 'watching',
};

const _$AnimeTypeEnumMap = {
  AnimeType.MOVIE: 'movie',
  AnimeType.ONA: 'ona',
  AnimeType.OVA: 'ova',
  AnimeType.SPECIAL: 'special',
  AnimeType.TV: 'tv',
};

Show _$ShowFromJson(Map<String, dynamic> json) => Show(
      title: json['title'] as String?,
      poster: json['poster'] as String?,
      year: (json['year'] as num?)?.toInt(),
      ids: json['ids'] == null
          ? null
          : Ids.fromJson(json['ids'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShowToJson(Show instance) => <String, dynamic>{
      'title': instance.title,
      'poster': instance.poster,
      'year': instance.year,
      'ids': instance.ids,
    };

Ids _$IdsFromJson(Map<String, dynamic> json) => Ids(
      simkl: (json['simkl'] as num?)?.toInt(),
      slug: json['slug'] as String?,
      fb: json['fb'] as String?,
      instagram: json['instagram'] as String?,
      wikijp: json['wikijp'] as String?,
      ann: json['ann'] as String?,
      mal: json['mal'] as String?,
      offjp: json['offjp'] as String?,
      wikien: json['wikien'] as String?,
      allcin: json['allcin'] as String?,
      imdb: json['imdb'] as String?,
      tw: json['tw'] as String?,
      tvdbslug: json['tvdbslug'] as String?,
      crunchyroll: json['crunchyroll'] as String?,
      anilist: json['anilist'] as String?,
      animeplanet: json['animeplanet'] as String?,
      anisearch: json['anisearch'] as String?,
      kitsu: json['kitsu'] as String?,
      livechart: json['livechart'] as String?,
      traktslug: json['traktslug'] as String?,
      tmdb: json['tmdb'] as String?,
      offen: json['offen'] as String?,
      anidb: json['anidb'] as String?,
      anfo: json['anfo'] as String?,
      zap2It: json['zap2it'] as String?,
      vndb: json['vndb'] as String?,
      letterslug: json['letterslug'] as String?,
      tvdbmslug: json['tvdbmslug'] as String?,
    );

Map<String, dynamic> _$IdsToJson(Ids instance) => <String, dynamic>{
      'simkl': instance.simkl,
      'slug': instance.slug,
      'fb': instance.fb,
      'instagram': instance.instagram,
      'wikijp': instance.wikijp,
      'ann': instance.ann,
      'mal': instance.mal,
      'offjp': instance.offjp,
      'wikien': instance.wikien,
      'allcin': instance.allcin,
      'imdb': instance.imdb,
      'tw': instance.tw,
      'tvdbslug': instance.tvdbslug,
      'crunchyroll': instance.crunchyroll,
      'anilist': instance.anilist,
      'animeplanet': instance.animeplanet,
      'anisearch': instance.anisearch,
      'kitsu': instance.kitsu,
      'livechart': instance.livechart,
      'traktslug': instance.traktslug,
      'tmdb': instance.tmdb,
      'offen': instance.offen,
      'anidb': instance.anidb,
      'anfo': instance.anfo,
      'zap2it': instance.zap2It,
      'vndb': instance.vndb,
      'letterslug': instance.letterslug,
      'tvdbmslug': instance.tvdbmslug,
    };
