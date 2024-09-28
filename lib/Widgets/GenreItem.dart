import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

Widget GenreItem(BuildContext context, String title) {
  final theme = Theme.of(context).colorScheme;

  // Using the full width of the container while maintaining a dynamic height based on the aspect ratio
  var screenWidth = MediaQuery.of(context).size.width;
  double width = screenWidth * 0.9; // Increased to 90% to fill more space
  if (width > 300) width = 300; // Optional cap to prevent it from growing too large
  double aspectRatio = 4; // Adjust the ratio for desired height
  double height = width / aspectRatio;
  double radius = 10;

  return GestureDetector(
    onTap: () => print("tapped"),
    child: SizedBox(
      width: width,
      height: height,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            // Background image
            CachedNetworkImage(
              imageUrl: "https://s4.anilist.co/file/anilistcdn/media/anime/banner/16498-8jpFCOcDmneX.jpg",
              fit: BoxFit.cover,
              width: width,
              height: height,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            // Dark overlay with title
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
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
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
    ),
  );
}


String _imageUrl(String title){
  return "https://placehold.co/600x400";
}