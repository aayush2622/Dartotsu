import 'package:dantotsu/Widgets/ChipTags.dart';
import 'package:flutter/material.dart';

Widget ChipWidget(BuildContext context, List<String> tags) {
  final theme = Theme.of(context).colorScheme;

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Tags',
          style: TextStyle(
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: theme.onSurface),
        ),
        const SizedBox(height: 16.0),
        SizedBox( // Add SizedBox to define height
          height: 150.0, // Adjust based on how much height you need
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width, // Set width constraint
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(), // Disable scrolling inside GridView
                      itemCount: tags.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: _colNumber(tags, context),
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                      ),
                      itemBuilder: (context, index) {
                        return ChipTags(context, tags[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        if (tags.isEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text('No tags available', style: TextStyle(color: theme.onSurface)),
          ),
      ],
    ),
  );
}

int _colNumber(List<String> tags, BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  double itemWidth = 256;
  double gapWidth = 1; // Gap between items
  int columns = ((screenWidth + gapWidth) / (itemWidth + gapWidth)).floor();
  int numItems = tags.length; // Total number of items

  return (numItems < columns) ? numItems : columns;
}
