import 'package:flutter/material.dart';

import '../../../Widgets/CachedNetworkImage.dart';

Widget MediaCard(
  BuildContext context,
  String title,
  String imageUrl, {
  void Function()? onTap,
}) {
  double height = 72;
  final theme = Theme.of(context).colorScheme;
  var screenWidth = MediaQuery.of(context).size.width;
  double width = screenWidth * 0.4;
  if (width > 256) width = 256;
  double radius = 10;

  return GestureDetector(
    onTap: onTap,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Stack(
        alignment: Alignment.center,
        children: [
          cachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            width: width,
            height: height,
          ),
          Container(
            width: width,
            height: height,
            color: Colors.black.withValues(alpha: 0.6),
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
