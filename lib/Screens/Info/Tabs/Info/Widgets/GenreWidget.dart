

import 'package:flutter/material.dart';
import '../../../../../Widgets/GenreItem.dart';


Widget GenreWidget(BuildContext context , genre) {
  final theme = Theme.of(context).colorScheme;
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
          Text(
            'Genres',
            style: TextStyle(
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: theme.onSurface),
          ),
        const SizedBox(height: 16.0),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: _itemCount(genre),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: _colNumber(genre, context),
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ),
              itemBuilder: (context, index ) {
                return GenreItem(context, genre[index]);
              },
            ),
          ),
        ),
      ],
    ),
  );
}

int _itemCount(genre){
  // print(genre.length);
  return genre.length;
}

int _colNumber(genre, BuildContext context){
  double screenWidth = MediaQuery.of(context).size.width;
  double itemWidth = 256;
  double gapWidth = 1; // Gap between items
  int columns = ((screenWidth + gapWidth) / (itemWidth + gapWidth)).floor();
  int numItems = genre.length; // Total number of items

  int finalColumns = (numItems < columns) ? numItems : columns;
  print(finalColumns);
  // print(genre);
  return finalColumns;
}