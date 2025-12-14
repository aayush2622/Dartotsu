part of '../ExtensionsQueries.dart';

extension on ExtensionsQueries {
  Future<Media?> _mediaDetails(Media media) async {
    final manager = Get.find<ExtensionManager>().currentManager;
    if (media.sourceData == null || media.sourceData!.id == null) {
      snackString('Source not found did you remove it?');
      return null;
    }
    var sourceList =
        manager.getSortedInstalledExtension(media.sourceData!.itemType!).value;
    final source = sourceList.firstWhereOrNull(
      (s) => s.id == media.sourceData!.id,
    );

    if (source == null) {
      snackString('Source not found did you remove it?');
      return null;
    }

    media.sourceData = source;

    var data = await source.methods.getDetail(media.toDMedia());

    media.genres = data.genre ?? [];
    media.description = data.description;

    if (data.episodes != null) {
      if (media.anime != null) {
        animeData(media, data);
      } else {
        mangaData(media, data);
      }
    }
    return null;
  }

  void mangaData(Media media, DMedia data) {
    media.manga?.mediaAuthor = author(name: data.author, id: hashCode);
    media.manga?.chapters = data.episodes?.reversed.toList();
  }

  void animeData(Media media, DMedia data) {
    var isFirst = true;
    var shouldNormalize = false;
    var additionalIndex = 0;
    var episodeNumbers = <String, int>{};
    var chapters = data.episodes;
    media.anime?.mediaAuthor = author(name: data.author, id: hashCode);
    if (chapters != null) {
      media.anime?.episodes = Map.fromEntries(
        chapters.reversed.mapIndexed((index, chapter) {
          final episode = chapter;

          if (isFirst) {
            isFirst = false;
            if (episode.episodeNumber.toDouble() > 3.0) {
              shouldNormalize = true;
            }
          }

          if (shouldNormalize) {
            if (episode.episodeNumber.toDouble() % 1 != 0) {
              additionalIndex--;
              var remainder = (episode.episodeNumber.toDouble() % 1)
                  .toStringAsFixed(2)
                  .toDouble();
              episode.episodeNumber =
                  (index + 1 + remainder + additionalIndex).toString();
            } else {
              episode.episodeNumber = (index + 1 + additionalIndex).toString();
            }
          }

          var baseNumber = episode.episodeNumber;
          if (episodeNumbers.containsKey(baseNumber)) {
            episodeNumbers[baseNumber] = episodeNumbers[baseNumber]! + 1;
            episode.episodeNumber = '$baseNumber.${episodeNumbers[baseNumber]}';
          } else {
            episodeNumbers[baseNumber] = 1;
          }
          episode.thumbnail = media.cover;
          return MapEntry(episode.episodeNumber, episode);
        }),
      );
    }
  }
}
