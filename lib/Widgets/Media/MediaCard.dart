import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../Functions/Function.dart';

Widget MediaCard(BuildContext context, String title, Widget route,
    String imageUrl) {
  double height = 72;
  final theme = Theme.of(context).colorScheme;
  var screenWidth = MediaQuery.of(context).size.width;
  double width = screenWidth * 0.4;
  if (width > 256) width = 256;
  double radius = width * 0.07;

  return GestureDetector(
    onTap: () => navigateToPage(context, route),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            width: width,
            height: height,
          ),
          Container(
            width: width,
            height: height,
            color: Colors.black.withOpacity(0.6),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 9.0),
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 3.0,
                    width: 64.0,
                    color: theme.primary,
                    margin: const EdgeInsets.only(bottom: 4.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );

}