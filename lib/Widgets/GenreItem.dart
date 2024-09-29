
import 'package:flutter/material.dart';

import '../../../Functions/Function.dart';
import '../../../Widgets/CachedNetworkImage.dart';

Widget GenreItem(BuildContext context, String title, {Widget? route, String? imageUrl}) {
  double height = 46;
  var screenWidth = MediaQuery.of(context).size.width;
  double width = screenWidth * 0.4;
  if (width > 154) width = 154;
  double radius = 16;

  return GestureDetector(
    onTap: () =>  route != null ? navigateToPage(context, route) : null,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (imageUrl != null)
            cachedNetworkImage(
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
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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