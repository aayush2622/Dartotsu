import 'package:flutter/material.dart';
import '../../../Widgets/CachedNetworkImage.dart';

Widget ItemFollower(BuildContext context, String imgUrl, double userScore,
    String status, String username, String watched, String total) {
  final theme = Theme.of(context).colorScheme;
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Profile Avatar and Score Container
        Stack(
          alignment: Alignment.center,
          children: [
            // Profile Avatar Container (Card with rounded corners)
            Material(
              elevation: 2,
              shape: const CircleBorder(),
              clipBehavior: Clip.hardEdge,
              child: Container(
                width: 92,
                height: 92,
                color: Colors.transparent,
                child: cachedNetworkImage(
                  imageUrl: imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Compact Score Background (Initially hidden)
            Positioned(
                bottom: 0,
                child: Container(
                  width: 80,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: userScore == 0 ? theme.primary : theme.tertiary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(userScore.toString(),
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              color: theme.onPrimary)),
                      Icon(
                        Icons.star_rounded,
                        color: theme.onPrimary,
                        size: 12,
                      ),
                    ],
                  ),
                ))
          ],
        ),

        const SizedBox(height: 8),

        // Profile Info (Initially hidden)
        Visibility(
          visible: true, // set to false if you want it hidden by default
          child: Text(
            status, // Replace with localized string if necessary
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              fontStyle: FontStyle.normal,
              color: Colors.white.withOpacity(0.58),
            ),
          ),
        ),

        const SizedBox(height: 8),

        // Profile Username
        Text(
          username, // Replace with localized string if necessary
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: theme.onSurface,
          ),
        ),

        const SizedBox(height: 8),

        // Progress Container (Initially hidden)
        Visibility(
          visible: true, // set to false if you want it hidden by default
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                watched,
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Text(
               "/$total",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withOpacity(0.58),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
