import 'package:dantotsu/Functions/Function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../../DataClass/Media.dart';
import '../../../../../DataClass/SearchResults.dart';
import '../../../../../Widgets/GenreItem.dart';
import '../../../../Search/SearchScreen.dart';

Widget GenreWidget(BuildContext context, Media media) {
  final theme = Theme.of(context).colorScheme;
  final screenWidth = MediaQuery.of(context).size.width;
  var crossAxisCount = ((screenWidth) / 164).floor();
  if (crossAxisCount < 1) crossAxisCount = 1;
  var title = media.anime != null ? SearchType.ANIME : SearchType.MANGA;
  var genre = media.genres;
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Genres',
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: theme.onSurface,
          ),
        ),
        const SizedBox(height: 16.0),
        StaggeredGrid.count(
          crossAxisSpacing: 16,
          crossAxisCount: crossAxisCount,
          children: List.generate(
            genre.length,
            (index) {
              return GestureDetector(
                onTap: () => navigateToPage(
                  context,
                  SearchScreen(
                    title: title,
                    forceSearch: true,
                    args: SearchResults(
                      type: title,
                      sort: "POPULARITY_DESC",
                      genres: [genre[index]],
                    ),
                  ),
                ),
                onLongPress: () => copyToClipboard(genre[index]),
                child: SizedBox(
                  width: 154,
                  height: 54,
                  child: GenreItem(
                    context,
                    genre[index].toUpperCase(),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}
