import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Widgets/CachedNetworkImage.dart';

Widget GenreItem(BuildContext context, String title,
    {Widget? route, String? imageUrl}) {
  double height = 54;
  double radius = 16;

  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
      side: BorderSide(
          color: context.theme.colorScheme.primaryContainer, width: 1.5),
    ),
    clipBehavior: Clip.antiAlias,
    child: Stack(
      alignment: Alignment.center,
      children: [
        if (imageUrl != null)
          cachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            width: double.infinity,
            height: height,
          ),
        Container(
          width: double.infinity,
          height: height,
          color: Colors.black.withValues(alpha: 0.6),
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
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
