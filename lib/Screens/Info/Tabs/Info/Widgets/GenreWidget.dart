import 'package:flutter/material.dart';
import '../../../../../Widgets/GenreItem.dart';

Widget GenreWidget(BuildContext context, List<String> genre) {
  final theme = Theme.of(context).colorScheme;
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
        Padding(
          padding: const EdgeInsets.symmetric(),
          child: Wrap(
            spacing: 8.0,
            runSpacing: 0.0,
            children: List.generate(genre.length, (index) {
              return GenreItem(context, genre[index].toUpperCase());
            }),
          ),
        ),
      ],
    ),
  );
}
