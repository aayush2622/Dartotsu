// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../Media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      anime: (json['anime'] as List<dynamic>?)
          ?.map((e) => Anime.fromJson(e as Map<String, dynamic>))
          .toList(),
      show: (json['shows'] as List<dynamic>?)
          ?.map((e) => ShowElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      movies: (json['movies'] as List<dynamic>?)
          ?.map((e) => MovieElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'anime': instance.anime,
      'shows': instance.show,
      'movies': instance.movies,
    };

MovieElement _$MovieElementFromJson(Map<String, dynamic> json) => MovieElement(
      title: json['title'] as String?,
      year: (json['year'] as num?)?.toInt(),
      type: json['type'] as String?,
      ids: json['ids'] == null
          ? null
          : Ids.fromJson(json['ids'] as Map<String, dynamic>),
      enTitle: json['en_title'] as String?,
      rank: (json['rank'] as num?)?.toInt(),
      poster: json['poster'] as String?,
      fanart: json['fanart'] as String?,
      firstAired: json['first_aired'] == null
          ? null
          : DateTime.parse(json['first_aired'] as String),
      airs: json['airs'] == null
          ? null
          : Airs.fromJson(json['airs'] as Map<String, dynamic>),
      certification: json['certification'] as String?,
      overview: json['overview'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      country: json['country'] as String?,
      totalEpisodes: (json['total_episodes'] as num?)?.toInt(),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      network: json['network'] as String?,
      ratings: json['ratings'] == null
          ? null
          : Ratings.fromJson(json['ratings'] as Map<String, dynamic>),
      trailers: (json['trailers'] as List<dynamic>?)
          ?.map((e) => Trailer.fromJson(e as Map<String, dynamic>))
          .toList(),
      usersRecommendations: (json['users_recommendations'] as List<dynamic>?)
          ?.map((e) => Anime.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastWatchedAt: json['last_watched_at'] == null
          ? null
          : DateTime.parse(json['last_watched_at'] as String),
      userRating: json['user_rating'],
      rating: (json['rating'] as num?)?.toDouble(),
      releaseStatus: json['release_status'] as String?,
      watchedEpisodesCount: (json['watched_episodes_count'] as num?)?.toInt(),
      totalEpisodesCount: (json['total_episodes_count'] as num?)?.toInt(),
      notAiredEpisodesCount:
          (json['not_aired_episodes_count'] as num?)?.toInt(),
      movie: json['movie'] == null
          ? null
          : MovieMovie.fromJson(json['movie'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MovieElementToJson(MovieElement instance) =>
    <String, dynamic>{
      'title': instance.title,
      'year': instance.year,
      'type': instance.type,
      'ids': instance.ids,
      'en_title': instance.enTitle,
      'rank': instance.rank,
      'poster': instance.poster,
      'fanart': instance.fanart,
      'first_aired': instance.firstAired?.toIso8601String(),
      'airs': instance.airs,
      'certification': instance.certification,
      'overview': instance.overview,
      'genres': instance.genres,
      'country': instance.country,
      'total_episodes': instance.totalEpisodes,
      'network': instance.network,
      'ratings': instance.ratings,
      'trailers': instance.trailers,
      'users_recommendations': instance.usersRecommendations,
      'last_watched_at': instance.lastWatchedAt?.toIso8601String(),
      'status': _$StatusEnumMap[instance.status],
      'user_rating': instance.userRating,
      'rating': instance.rating,
      'release_status': instance.releaseStatus,
      'watched_episodes_count': instance.watchedEpisodesCount,
      'total_episodes_count': instance.totalEpisodesCount,
      'not_aired_episodes_count': instance.notAiredEpisodesCount,
      'movie': instance.movie,
    };

const _$StatusEnumMap = {
  Status.COMPLETED: 'completed',
  Status.DROPPED: 'dropped',
  Status.PLANNING: 'plantowatch',
  Status.CURRENT: 'watching',
  Status.HOLD: 'hold',
  Status.ONGOING: 'ongoing',
  Status.ENDED: 'ended',
  Status.SOON: 'soon',
  Status.PREMIERE: 'premiere',
};

MovieMovie _$MovieMovieFromJson(Map<String, dynamic> json) => MovieMovie(
      title: json['title'] as String?,
      poster: json['poster'] as String?,
      year: (json['year'] as num?)?.toInt(),
      ids: json['ids'] == null
          ? null
          : Ids.fromJson(json['ids'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MovieMovieToJson(MovieMovie instance) =>
    <String, dynamic>{
      'title': instance.title,
      'poster': instance.poster,
      'year': instance.year,
      'ids': instance.ids,
    };

Anime _$AnimeFromJson(Map<String, dynamic> json) => Anime(
      title: json['title'] as String?,
      year: (json['year'] as num?)?.toInt(),
      type: json['type'] as String?,
      ids: json['ids'] == null
          ? null
          : Ids.fromJson(json['ids'] as Map<String, dynamic>),
      enTitle: json['en_title'] as String?,
      rank: (json['rank'] as num?)?.toInt(),
      poster: json['poster'] as String?,
      fanart: json['fanart'] as String?,
      firstAired: json['first_aired'] == null
          ? null
          : DateTime.parse(json['first_aired'] as String),
      airs: json['airs'] == null
          ? null
          : Airs.fromJson(json['airs'] as Map<String, dynamic>),
      certification: json['certification'] as String?,
      overview: json['overview'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      country: json['country'] as String?,
      totalEpisodes: (json['total_episodes'] as num?)?.toInt(),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      network: json['network'] as String?,
      animeType: $enumDecodeNullable(_$AnimeTypeEnumMap, json['anime_type']),
      ratings: json['ratings'] == null
          ? null
          : Ratings.fromJson(json['ratings'] as Map<String, dynamic>),
      trailers: (json['trailers'] as List<dynamic>?)
          ?.map((e) => Trailer.fromJson(e as Map<String, dynamic>))
          .toList(),
      usersRecommendations: (json['users_recommendations'] as List<dynamic>?)
          ?.map((e) => Anime.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastWatchedAt: json['last_watched_at'] == null
          ? null
          : DateTime.parse(json['last_watched_at'] as String),
      userRating: (json['user_rating'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
      releaseStatus: json['release_status'] as String?,
      lastWatched: json['last_watched'] as String?,
      nextToWatch: json['next_to_watch'] as String?,
      watchedEpisodesCount: (json['watched_episodes_count'] as num?)?.toInt(),
      totalEpisodesCount: (json['total_episodes_count'] as num?)?.toInt(),
      notAiredEpisodesCount:
          (json['not_aired_episodes_count'] as num?)?.toInt(),
      show: json['show'] == null
          ? null
          : Show.fromJson(json['show'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeToJson(Anime instance) => <String, dynamic>{
      'title': instance.title,
      'year': instance.year,
      'type': instance.type,
      'ids': instance.ids,
      'en_title': instance.enTitle,
      'rank': instance.rank,
      'poster': instance.poster,
      'fanart': instance.fanart,
      'first_aired': instance.firstAired?.toIso8601String(),
      'airs': instance.airs,
      'certification': instance.certification,
      'overview': instance.overview,
      'genres': instance.genres,
      'country': instance.country,
      'total_episodes': instance.totalEpisodes,
      'network': instance.network,
      'ratings': instance.ratings,
      'trailers': instance.trailers,
      'users_recommendations': instance.usersRecommendations,
      'last_watched_at': instance.lastWatchedAt?.toIso8601String(),
      'status': _$StatusEnumMap[instance.status],
      'user_rating': instance.userRating,
      'rating': instance.rating,
      'release_status': instance.releaseStatus,
      'last_watched': instance.lastWatched,
      'next_to_watch': instance.nextToWatch,
      'watched_episodes_count': instance.watchedEpisodesCount,
      'total_episodes_count': instance.totalEpisodesCount,
      'not_aired_episodes_count': instance.notAiredEpisodesCount,
      'show': instance.show,
      'anime_type': _$AnimeTypeEnumMap[instance.animeType],
    };

const _$AnimeTypeEnumMap = {
  AnimeType.MOVIE: 'movie',
  AnimeType.ONA: 'ona',
  AnimeType.OVA: 'ova',
  AnimeType.SPECIAL: 'special',
  AnimeType.TV: 'tv',
  AnimeType.MUSIC_VIDEO: 'music video',
};

Airs _$AirsFromJson(Map<String, dynamic> json) => Airs(
      day: json['day'] as String?,
      time: json['time'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$AirsToJson(Airs instance) => <String, dynamic>{
      'day': instance.day,
      'time': instance.time,
      'timezone': instance.timezone,
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

ShowElement _$ShowElementFromJson(Map<String, dynamic> json) => ShowElement(
      title: json['title'] as String?,
      year: (json['year'] as num?)?.toInt(),
      type: json['type'] as String?,
      ids: json['ids'] == null
          ? null
          : Ids.fromJson(json['ids'] as Map<String, dynamic>),
      enTitle: json['en_title'] as String?,
      rank: (json['rank'] as num?)?.toInt(),
      poster: json['poster'] as String?,
      fanart: json['fanart'] as String?,
      firstAired: json['first_aired'] == null
          ? null
          : DateTime.parse(json['first_aired'] as String),
      airs: json['airs'] == null
          ? null
          : Airs.fromJson(json['airs'] as Map<String, dynamic>),
      certification: json['certification'] as String?,
      overview: json['overview'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      country: json['country'] as String?,
      totalEpisodes: (json['total_episodes'] as num?)?.toInt(),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      network: json['network'] as String?,
      ratings: json['ratings'] == null
          ? null
          : Ratings.fromJson(json['ratings'] as Map<String, dynamic>),
      trailers: (json['trailers'] as List<dynamic>?)
          ?.map((e) => Trailer.fromJson(e as Map<String, dynamic>))
          .toList(),
      usersRecommendations: (json['users_recommendations'] as List<dynamic>?)
          ?.map((e) => Anime.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastWatchedAt: json['last_watched_at'] == null
          ? null
          : DateTime.parse(json['last_watched_at'] as String),
      userRating: json['user_rating'],
      rating: (json['rating'] as num?)?.toDouble(),
      releaseStatus: json['release_status'] as String?,
      lastWatched: json['last_watched'] as String?,
      nextToWatch: json['next_to_watch'] as String?,
      watchedEpisodesCount: (json['watched_episodes_count'] as num?)?.toInt(),
      totalEpisodesCount: (json['total_episodes_count'] as num?)?.toInt(),
      notAiredEpisodesCount:
          (json['not_aired_episodes_count'] as num?)?.toInt(),
      show: json['show'] == null
          ? null
          : Show.fromJson(json['show'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShowElementToJson(ShowElement instance) =>
    <String, dynamic>{
      'title': instance.title,
      'year': instance.year,
      'type': instance.type,
      'ids': instance.ids,
      'en_title': instance.enTitle,
      'rank': instance.rank,
      'poster': instance.poster,
      'fanart': instance.fanart,
      'first_aired': instance.firstAired?.toIso8601String(),
      'airs': instance.airs,
      'certification': instance.certification,
      'overview': instance.overview,
      'genres': instance.genres,
      'country': instance.country,
      'total_episodes': instance.totalEpisodes,
      'network': instance.network,
      'ratings': instance.ratings,
      'trailers': instance.trailers,
      'users_recommendations': instance.usersRecommendations,
      'last_watched_at': instance.lastWatchedAt?.toIso8601String(),
      'status': _$StatusEnumMap[instance.status],
      'user_rating': instance.userRating,
      'last_watched': instance.lastWatched,
      'rating': instance.rating,
      'release_status': instance.releaseStatus,
      'next_to_watch': instance.nextToWatch,
      'watched_episodes_count': instance.watchedEpisodesCount,
      'total_episodes_count': instance.totalEpisodesCount,
      'not_aired_episodes_count': instance.notAiredEpisodesCount,
      'show': instance.show,
    };

Ids _$IdsFromJson(Map<String, dynamic> json) => Ids(
      simkl: (json['simkl'] as num? ?? json['simkl_id'] as num?)?.toInt(),
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

MediaRatings _$MediaRatingsFromJson(Map<String, dynamic> json) => MediaRatings(
      animeRatings: (json['anime'] as List<dynamic>?)
          ?.map((e) => Ratings.fromJson(e as Map<String, dynamic>))
          .toList(),
      showRatings: (json['shows'] as List<dynamic>?)
          ?.map((e) => Ratings.fromJson(e as Map<String, dynamic>))
          .toList(),
      movieRatings: (json['movies'] as List<dynamic>?)
          ?.map((e) => Ratings.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaRatingsToJson(MediaRatings instance) =>
    <String, dynamic>{
      'anime': instance.animeRatings,
      'shows': instance.showRatings,
      'movies': instance.movieRatings,
    };

Trailer _$TrailerFromJson(Map<String, dynamic> json) => Trailer(
      name: json['name'],
      youtube: json['youtube'] as String?,
      size: (json['size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TrailerToJson(Trailer instance) => <String, dynamic>{
      'name': instance.name,
      'youtube': instance.youtube,
      'size': instance.size,
    };
