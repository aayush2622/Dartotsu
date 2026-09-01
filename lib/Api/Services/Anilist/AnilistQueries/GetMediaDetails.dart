part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<Media?> _mediaDetails(Media media) async {
    var data = await executeQuery(_queryMediaDetails(media));
    var node = data['Media'] as Map<String, dynamic>?;

    if (node == null) {
      data = await executeQuery(_queryMediaDetails(media), useToken: false);
      node = data['Media'] as Map<String, dynamic>?;
      if (node == null) {
        snackString('Error getting data from AniList.');
        return media;
      }
    }

    node['Page'] = data['Page'];
    mapAnilistDetail(media, node);
    return media;
  }
}

String _queryMediaDetails(Media media) =>
    '''
{
  Media(id: ${media.id}) {
    id idMal favourites popularity meanScore episodes chapters duration
    isFavourite siteUrl source countryOfOrigin format season seasonYear
    bannerImage genres synonyms description(asHtml: false)
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
      updatedAt
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
        score siteUrl createdAt
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
