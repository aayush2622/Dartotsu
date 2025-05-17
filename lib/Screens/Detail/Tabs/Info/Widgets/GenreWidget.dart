import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../../DataClass/SearchResults.dart';
import '../../../../../Widgets/GenreItem.dart';
import '../../../../Search/SearchScreen.dart';

Widget GenreWidget(BuildContext context, List<String> genres, SearchType type) {
  final theme = Theme.of(context).colorScheme;
  final screenWidth = MediaQuery.of(context).size.width;
  var crossAxisCount = ((screenWidth) / 164).floor();
  if (crossAxisCount < 1) crossAxisCount = 1;
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          getString.genres,
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
            genres.length,
            (index) {
              return GestureDetector(
                onTap: () => navigateToPage(
                  context,
                  SearchScreen(
                    title: type,
                    forceSearch: true,
                    args: SearchResults(
                      type: type,
                      sort: "POPULARITY_DESC",
                      genres: [genres[index]],
                    ),
                  ),
                ),
                onLongPress: () => copyToClipboard(genres[index]),
                child: SizedBox(
                  width: 154,
                  height: 54,
                  child: GenreItem(
                    context,
                    genres[index].toUpperCase(),
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
