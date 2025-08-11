import 'dart:math';

import 'package:dartotsu/Functions/Function.dart';
import 'package:dartotsu/Theme/LanguageSwitcher.dart';
import 'package:flutter/material.dart';

import '../../../../../DataClass/SearchResults.dart';
import '../../../../../Widgets/GenreItem.dart';
import '../../../../Search/SearchScreen.dart';

Widget GenreWidget(BuildContext context, List<String> genres, SearchType type) {
  final theme = Theme.of(context).colorScheme;
  final screenWidth = MediaQuery.of(context).size.width;
  const sidePadding = 16.0 * 2;
  const minGap = 12.0;
  const maxGap = 24.0;
  final itemWidth = 154;

  final availableWidth = screenWidth - sidePadding;
  final crossAxisCount =
      max(1, (availableWidth / (itemWidth + minGap)).floor());

  final totalItemWidth = crossAxisCount * itemWidth;
  final totalGapSpace = availableWidth - totalItemWidth;

  final gap = crossAxisCount > 1 ? totalGapSpace / (crossAxisCount - 1) : 0.0;

  final adjustedGap = gap.clamp(minGap, maxGap);

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: genres.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 16,
            crossAxisSpacing: adjustedGap,
            childAspectRatio: itemWidth / 54,
          ),
          itemBuilder: (context, index) {
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
                width: itemWidth.toDouble(),
                height: 54,
                child: GenreItem(
                  context,
                  genres[index].toUpperCase(),
                ),
              ),
            );
          },
        ),
      ],
    ),
  );
}
