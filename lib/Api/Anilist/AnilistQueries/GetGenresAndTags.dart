part of '../AnilistQueries.dart';

extension on AnilistQueries {
  Future<bool> _getGenresAndTags() async {
    List<String> genres = loadData(PrefName.GenresList);
    List<String> adultTags = loadData(PrefName.TagsListIsAdult);
    List<String> nonAdultTags = loadData(PrefName.TagsListNonAdult);

    Map<bool, List<String>>? tags;
    if (adultTags.isEmpty || nonAdultTags.isEmpty) {
      tags = null;
    } else {
      tags = {true: adultTags..sort(), false: nonAdultTags..sort()};
    }

    if (genres.isEmpty) {
      var genreResponse = (await executeQuery<GenreCollectionResponse>(
        """{GenreCollection}""",
        force: true,
        useToken: false,
      ))
          ?.data;

      var genreCollection = genreResponse?.genreCollection;
      if (genreCollection != null) {
        genres = genreCollection;
        saveData(PrefName.GenresList, genreCollection);
      }
    }

    if (tags == null) {
      var tagResponse = (await executeQuery<MediaTagCollectionResponse>(
        """{ MediaTagCollection { name isAdult } }""",
        force: true,
      ))
          ?.data;

      var mediaTagCollection = tagResponse?.mediaTagCollection;
      if (mediaTagCollection != null) {
        List<String> adult = [];
        List<String> nonAdult = [];

        for (var node in mediaTagCollection) {
          if (node.isAdult == true) {
            adult.add(node.name);
          } else {
            nonAdult.add(node.name);
          }
        }

        tags = {true: adult, false: nonAdult};

        saveData(PrefName.TagsListIsAdult, adult);
        saveData(PrefName.TagsListNonAdult, nonAdult);
      }
    }
    if (genres.isNotEmpty && tags != null) {
      Anilist.genres = genres;
      Anilist.tags = tags;
      return true;
    } else {
      return false;
    }
  }
}
