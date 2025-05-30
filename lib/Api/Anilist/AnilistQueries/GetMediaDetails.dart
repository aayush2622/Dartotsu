part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<Media?> _mediaDetails(Media media) async {
    var response =
        (await executeQuery<MediaResponse>(_queryMedia(media), force: true));
    if (response == null) return null;

    Media parse(Map<String, dynamic> params) {
      var media = params["media"] as Media;
      var response = params["response"] as MediaResponse;
      var fetchedMedia = response.data?.media;
      var user = response.data?.page;
      if (fetchedMedia == null) media;
      media.source = fetchedMedia!.source?.name;
      media.countryOfOrigin = fetchedMedia.countryOfOrigin;
      media.format = fetchedMedia.format?.name;
      media.favourites = fetchedMedia.favourites;
      media.popularity = fetchedMedia.popularity;
      media.startDate = fetchedMedia.startDate;
      media.endDate = fetchedMedia.endDate;
      media.streamingEpisodes = fetchedMedia.streamingEpisodes;
      media.shareLink = fetchedMedia.siteUrl;
      if (fetchedMedia.genres != null) {
        media.genres = fetchedMedia.genres?.toList() ?? [];
      }
      if (fetchedMedia.trailer != null &&
          fetchedMedia.trailer!.site != null &&
          fetchedMedia.trailer!.site.toString() == "youtube") {
        media.trailer =
            "https://www.youtube.com/embed/${fetchedMedia.trailer!.id.toString().trim()}";
      } else {
        media.trailer = null;
      }
      media.synonyms = fetchedMedia.synonyms?.toList() ?? [];
      media.tags = fetchedMedia.tags
              ?.where((i) => i.isMediaSpoiler == false)
              .map((i) => "${i.name} : ${i.rank.toString()}%")
              .toList() ??
          [];
      media.description = fetchedMedia.description.toString();
      if (fetchedMedia.characters != null) {
        media.characters = [];

        fetchedMedia.characters?.edges?.forEach((i) {
          var node = i.node;
          if (node != null) {
            media.characters?.add(
              character(
                id: node.id,
                name: node.name?.userPreferred,
                image: node.image?.medium,
                banner: media.banner ?? media.cover,
                isFav: node.isFavourite ?? false,
                role: i.role?.toString() ?? "",
                description: node.description ?? "",
                gender: node.gender,
                voiceActor: (i.voiceActors?.map((voiceActor) {
                      return author(
                          id: voiceActor.id,
                          name: voiceActor.name?.userPreferred,
                          image: voiceActor.image?.large,
                          role: voiceActor.languageV2,
                          character: voiceActor.characters?.nodes);
                    }).toList()) ??
                    [],
              ),
            );
          }
        });
      }

      if (fetchedMedia.staff != null) {
        media.staff = [];

        fetchedMedia.staff?.edges?.forEach((i) {
          var node = i.node;
          if (node != null) {
            media.staff?.add(
              author(
                id: node.id,
                name: node.name?.userPreferred,
                image: node.image?.large,
                role: i.role?.toString() ?? "",
              ),
            );
          }
        });
      }
      if (fetchedMedia.relations != null) {
        media.relations = [];

        fetchedMedia.relations?.edges?.forEach((mediaEdge) {
          final m = Media.mediaEdgeData(mediaEdge);
          media.relations?.add(m);

          if (m.relation == "SEQUEL") {
            media.sequel =
                ((media.sequel?.popularity ?? 0) < (m.popularity ?? 0)
                    ? m
                    : media.sequel);
          } else if (m.relation == "PREQUEL") {
            media.prequel =
                ((media.prequel?.popularity ?? 0) < (m.popularity ?? 0)
                    ? m
                    : media.prequel);
          }
        });

        media.relations?.sort((a, b) {
          final popularityComparison =
              (b.popularity ?? 0).compareTo(a.popularity ?? 0);
          if (popularityComparison != 0) return popularityComparison;

          final startDateComparison =
              (b.startDate?.year ?? 0).compareTo(a.startDate?.year ?? 0);
          if (startDateComparison != 0) return startDateComparison;

          return (a.relation ?? "").compareTo(b.relation ?? "");
        });
      }
      if (fetchedMedia.recommendations != null) {
        media.recommendations = [];
        fetchedMedia.recommendations?.nodes?.forEach((i) {
          var mediaRecommendation = i.mediaRecommendation;
          if (mediaRecommendation != null) {
            media.recommendations?.add(
              Media.mediaData(mediaRecommendation),
            );
          }
        });
      }
      if (fetchedMedia.reviews?.nodes != null) {
        media.review = fetchedMedia.reviews?.nodes;
      }
      if (user?.mediaList?.isNotEmpty == true) {
        final uniqueUsers = <int>{};
        media.users = (user?.mediaList?.where((item) {
              final user = item.user;
              return user != null && uniqueUsers.add(user.id);
            }).map((item) {
              final user = item.user!;
              return userData(
                id: user.id,
                name: user.name ?? "Unknown",
                pfp: user.avatar?.large,
                banner: "",
                status: item.status?.name ?? "",
                score: item.score ?? 0,
                progress: item.progress ?? 0,
                totalEpisodes: fetchedMedia.episodes ?? fetchedMedia.chapters,
              );
            }).toList() ??
            []);
      }
      if (fetchedMedia.mediaListEntry != null) {
        final mediaListEntry = fetchedMedia.mediaListEntry!;
        media.userProgress = mediaListEntry.progress;
        media.isListPrivate = mediaListEntry.private ?? false;
        media.notes = mediaListEntry.notes;
        media.userListId = mediaListEntry.id;
        media.userScore = mediaListEntry.score?.toInt() ?? 0;
        media.userStatus = mediaListEntry.status?.name;
        media.inCustomListsOf =
            mediaListEntry.customLists?.map((k, v) => MapEntry(k, v)) ?? {};
        media.userRepeat = mediaListEntry.repeat ?? 0;
        media.userUpdatedAt = mediaListEntry.updatedAt != null
            ? (mediaListEntry.updatedAt! * 1000)
            : null;
        media.userCompletedAt = mediaListEntry.completedAt;
        media.userStartedAt = mediaListEntry.startedAt;
      } else {
        media.isListPrivate = false;
        media.userStatus = null;
        media.userListId = null;
        media.userProgress = null;
        media.userScore = 0;
        media.userRepeat = 0;
        media.userUpdatedAt = null;
        media.userCompletedAt = FuzzyDate();
        media.userStartedAt = FuzzyDate();
      }
      StaffEdge? findAuthorEdge(List<StaffEdge>? edges) {
        if (edges == null) return null;
        try {
          return edges.firstWhere(
              (edge) => Anilist.authorRoles.contains(edge.role?.trim()));
        } catch (e) {
          return null;
        }
      }

      if (media.anime != null) {
        media.anime!.episodeDuration = fetchedMedia.duration;
        media.anime!.season = fetchedMedia.season?.name;
        media.anime!.seasonYear = fetchedMedia.seasonYear;
        if (fetchedMedia.studios?.nodes?.isNotEmpty == true) {
          final firstStudio = fetchedMedia.studios!.nodes![0];
          media.anime?.mainStudio = api.Studio(
            id: firstStudio.id,
            name: firstStudio.name,
            siteUrl: firstStudio.siteUrl,
            isAnimationStudio: firstStudio.isAnimationStudio,
            media: firstStudio.media,
          );
        }
        final authorEdge = findAuthorEdge(fetchedMedia.staff?.edges);
        if (authorEdge != null) {
          final authorNode = authorEdge.node;
          media.anime!.mediaAuthor = author(
            id: authorNode!.id,
            name: authorNode.name?.userPreferred ?? "N/A",
            image: authorNode.image?.medium,
            role: "AUTHOR",
          );
        }
        media.anime!.nextAiringEpisodeTime =
            fetchedMedia.nextAiringEpisode?.airingAt?.toInt();
        fetchedMedia.externalLinks?.forEach((link) {
          switch (link.site.toLowerCase()) {
            case "youtube":
              media.anime!.youtube = link.url;
              break;
            case "crunchyroll":
              media.crunchySlug = link.url?.split("/").elementAtOrNull(3);
              break;
            case "vrv":
              media.vrvId = link.url?.split("/").elementAtOrNull(4);
              break;
          }
        });
      } else if (media.manga != null) {
        final authorEdge = findAuthorEdge(fetchedMedia.staff?.edges);
        if (authorEdge != null) {
          final authorNode = authorEdge.node;
          media.manga!.mediaAuthor = author(
            id: authorNode!.id,
            name: authorNode.name?.userPreferred ?? "N/A",
            image: authorNode.image?.medium,
            role: "AUTHOR",
          );
        }
      }
      return media;
    }

    if (response.data?.media != null) {
      media = await compute(parse, {"media": media, "response": response});
    } else {
      response =
          await executeQuery(_queryMedia(media), force: true, useToken: false);
      if (response?.data?.media != null) {
        snackString('Adult Stuff? Adult Stuff? ( ͡° ͜ʖ ͡° )');
        media = await compute(parse, {"media": media, "response": response});
      } else {
        snackString('Error getting data from Anilist.');
      }
    }
    return media;
  }
}

String _queryMedia(Media media) => '''{
  Media(id:${media.id}) {
    id
    favourites
    popularity
    episodes
    chapters
    streamingEpisodes {
      title
      thumbnail
      url
      site
    }
    mediaListEntry {
      id
      status
      score(format: POINT_100)
      progress
      private
      notes
      repeat
      customLists
      updatedAt
      startedAt {
        year
        month
        day
      }
      completedAt {
        year
        month
        day
      }
    }
    reviews(perPage: 3, sort: SCORE_DESC) {
      nodes {
        id
        mediaId
        mediaType
        summary
        body(asHtml: true)
        rating
        ratingAmount
        userRating
        score
        private
        siteUrl
        createdAt
        updatedAt
        user {
          id
          name
          bannerImage
          avatar {
            medium
            large
          }
        }
      }
    }
    isFavourite
    siteUrl
    idMal
    nextAiringEpisode {
      episode
      airingAt
    }
    source
    countryOfOrigin
    format
    duration
    season
    seasonYear
    startDate {
      year
      month
      day
    }
    endDate {
      year
      month
      day
    }
    genres
    studios(isMain: true) {
      nodes {
        id
        name
        siteUrl
      }
    }
    description
    trailer {
      site
      id
    }
    synonyms
    tags {
      name
      rank
      isMediaSpoiler
    }
    characters(sort: [ROLE, FAVOURITES_DESC], perPage: 25, page: 1) {
      edges {
        role
        voiceActors {
          id
          name {
            first
            middle
            last
            full
            native
            userPreferred
          }
          image {
            large
            medium
          }
          languageV2
        }
        node {
          id
          description
          gender
          image {
            medium
          }
          name {
            userPreferred
          }
          isFavourite
        }
      }
    }
    relations {
      edges {
        relationType(version: 2)
        node {
          id
          idMal
          mediaListEntry {
            progress
            private
            score(format: POINT_100)
            status
          }
          episodes
          chapters
          nextAiringEpisode {
            episode
          }
          popularity
          meanScore
          isAdult
          isFavourite
          format
          title {
            english
            romaji
            userPreferred
          }
          type
          status(version: 2)
          bannerImage
          coverImage {
            large
          }
        }
      }
    }
    staffPreview: staff(perPage: 8, sort: [RELEVANCE, ID]) {
      edges {
        role
        node {
          id
          image {
            large
            medium
          }
          name {
            userPreferred
          }
        }
      }
    }
    recommendations(sort: RATING_DESC) {
      nodes {
        mediaRecommendation {
          id
          idMal
          mediaListEntry {
            progress
            private
            score(format: POINT_100)
            status
          }
          episodes
          chapters
          nextAiringEpisode {
            episode
          }
          meanScore
          isAdult
          isFavourite
          format
          title {
            english
            romaji
            userPreferred
          }
          type
          status(version: 2)
          bannerImage
          coverImage {
            large
          }
        }
      }
    }
    externalLinks {
      url
      site
    }
  }
  Page(page: 1) {
    pageInfo {
      total
      perPage
      currentPage
      lastPage
      hasNextPage
    }
    mediaList(isFollowing: true, sort: [STATUS], mediaId: ${media.id}) {
      id
      status
      score(format: POINT_100)
      progress
      progressVolumes
      user {
        id
        name
        avatar {
          large
          medium
        }
      }
    }
  }
}''';
