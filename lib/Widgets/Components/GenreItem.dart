import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CachedNetworkImage.dart';

Widget GenreItem(
  BuildContext context,
  String title, {
  Widget? route,
  String? imageUrl,
}) {
  double radius = 16;

  final scheme = context.theme.colorScheme;

  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
      side: BorderSide(color: scheme.outlineVariant, width: 1),
    ),
    clipBehavior: Clip.antiAlias,
    child: Stack(
      alignment: Alignment.center,
      children: [
        if (imageUrl != null)
          cachedNetworkImage(imageUrl: imageUrl, fit: BoxFit.cover),
        Container(
          color: scheme.scrim.withValues(alpha: 0.55),
          child: Center(
            child: Text(
              title,
              style: context.textTheme.labelLarge?.copyWith(
                color: Colors.white,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ),
      ],
    ),
  );
}
