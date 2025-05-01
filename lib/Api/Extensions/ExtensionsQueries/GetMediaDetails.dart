part of '../ExtensionsQueries.dart';

extension on ExtensionsQueries {
  Future<Media?> _mediaDetails(Media media) async {
    final source = isar.sources.getSync(media.sourceData!.id!);

    if (source == null ||
        source.sourceCode == null ||
        source.isAdded == false) {
      snackString('Source not found did you remove it?');
      return null;
    }
    media.sourceData = source;
    var data =
        await getDetail(url: media.shareLink!, source: media.sourceData!);

    media.genres = data.genre ?? [];
    media.description = data.description;

    if (data.chapters != null) {
      if (media.anime != null) {
        animeData(media, data);
      } else {
        mangaData(media, data);
      }
    }
    return null;
  }

  void mangaData(Media media, MManga data) {
    media.manga?.mediaAuthor = author(name: data.author, id: hashCode);
    media.manga?.chapters =
        data.chapters?.reversed.map((e) => MChapterToChapter(e, data)).toList();
  }

  void animeData(Media media, MManga data) {
    var isFirst = true;
    var shouldNormalize = false;
    var additionalIndex = 0;
    var episodeNumbers = <String, int>{};
    var chapters = data.chapters;
    media.anime?.mediaAuthor = author(name: data.author, id: hashCode);
    if (chapters != null) {
      media.anime?.episodes = Map.fromEntries(
        chapters.reversed.mapIndexed((index, chapter) {
          final episode = MChapterToEpisode(chapter, data);

          if (isFirst) {
            isFirst = false;
            if (episode.number.toDouble() > 3.0) {
              shouldNormalize = true;
            }
          }

          if (shouldNormalize) {
            if (episode.number.toDouble() % 1 != 0) {
              additionalIndex--;
              var remainder =
                  (episode.number.toDouble() % 1).toStringAsFixed(2).toDouble();
              episode.number =
                  (index + 1 + remainder + additionalIndex).toString();
            } else {
              episode.number = (index + 1 + additionalIndex).toString();
            }
          }

          var baseNumber = episode.number;
          if (episodeNumbers.containsKey(baseNumber)) {
            episodeNumbers[baseNumber] = episodeNumbers[baseNumber]! + 1;
            episode.number = '$baseNumber.${episodeNumbers[baseNumber]}';
          } else {
            episodeNumbers[baseNumber] = 1;
          }
          episode.thumb = media.cover;
          return MapEntry(episode.number, episode);
        }),
      );
    }
  }
}
