part of '../Queries.dart';

extension on AnilistQueries {
  Future<Media?> _mediaDetails(Media media) async {
    try {
      final body = await client.queryRaw(_queryMediaDetails(media));
      return await compute(_parseDetail, {'media': media, 'body': body});
    } on AnilistException {
      // adult content / auth quirk — retry anonymously
      try {
        final body = await client.queryRaw(
          _queryMediaDetails(media),
          useToken: false,
        );
        return await compute(_parseDetail, {'media': media, 'body': body});
      } on AnilistException catch (e) {
        snackString(getString.serviceError(getString.anilist, e.message));
        return await _unreachable(media);
      } catch (e, st) {
        logError('GetMediaDetails', e, st);
        snackString(getString.errorGettingAnilistData);
        return await _unreachable(media);
      }
    }
  }

  Future<Media> _unreachable(Media media) async {
    final id = int.tryParse(media.id);
    final named = media.name != null || media.nameRomaji != null;
    final base = named || id == null ? media : await _mediaIndex.findById(id);
    final result = base ?? media;
    if (result is AnilistMedia) result.stale = true;
    return result;
  }
}

Media _parseDetail(Map<String, dynamic> args) {
  final media = args['media'] as Media;
  final data = anilistData(args['body'] as String);
  final node = data['Media'] as Map<String, dynamic>?;
  if (node == null) return media;
  node['Page'] = data['Page'];
  mapAnilistDetail(media, node);
  if (media is AnilistMedia) media.stale = false;
  return media;
}

String _queryMediaDetails(Media media) =>
    '''
{
  Media(id: ${media.id}) {
    id idMal favourites popularity meanScore episodes chapters duration
    isFavourite siteUrl source countryOfOrigin format season seasonYear
    bannerImage genres synonyms description(asHtml: true)
    coverImage { large extraLarge }
    title { english romaji userPreferred native }
    startDate { year month day }
    endDate { year month day }
    nextAiringEpisode { episode airingAt timeUntilAiring }
    trailer { site id }
    tags { name rank isMediaSpoiler }
    studios(isMain: true) { nodes { id name siteUrl } }
    externalLinks { site url }
    mediaListEntry {
      id status score(format: POINT_100) progress private notes repeat
      hiddenFromStatusLists updatedAt
      startedAt { year month day }
      completedAt { year month day }
      customLists
    }
    characters(sort: [ROLE, FAVOURITES_DESC], perPage: 25, page: 1) {
      edges {
        role
        voiceActors(language: JAPANESE, sort: [RELEVANCE]) {
          id languageV2
          name { userPreferred }
          image { large medium }
        }
        node {
          id gender description isFavourite
          name { userPreferred }
          image { large medium }
        }
      }
    }
    staffPreview: staff(perPage: 12, sort: [RELEVANCE, ID]) {
      edges {
        role
        node { id name { userPreferred } image { large medium } }
      }
    }
    relations {
      edges {
        relationType(version: 2)
        node { $anilistMediaFragment }
      }
    }
    recommendations(sort: RATING_DESC, perPage: 16) {
      nodes { mediaRecommendation { $anilistMediaFragment } }
    }
    reviews(perPage: 3, sort: SCORE_DESC) {
      nodes {
        id mediaId mediaType summary body(asHtml: true) rating ratingAmount
        score siteUrl createdAt userRating
        user { id name bannerImage avatar { large medium } }
      }
    }
  }
  Page(page: 1) {
    mediaList(isFollowing: true, sort: [STATUS], mediaId: ${media.id}) {
      id status score(format: POINT_100) progress
      user { id name avatar { large medium } }
    }
  }
}''';
