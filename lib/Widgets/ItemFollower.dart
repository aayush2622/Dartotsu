import 'package:dantotsu/Functions/string_extensions.dart';
import 'package:flutter/material.dart';
import '../../../Widgets/CachedNetworkImage.dart';
import '../DataClass/User.dart';
import '../api/Anilist/Anilist.dart';

Widget ItemFollower(BuildContext context, userData follower) {
  final theme = Theme.of(context).colorScheme;
  String user = (Anilist.username.value.isEqualTo(follower.name)) ? "YOU" : follower.name;
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
                  imageUrl: follower.pfp.toString(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Compact Score Background (Initially hidden)
            Positioned(
                bottom: 0,
                child: Container(
                  width: 80,
                  height: 30,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                    color: follower.score == 0 ? theme.primary : theme.tertiary,
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30), bottomLeft: Radius.circular(100),bottomRight: Radius.circular(100)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(follower.score.toString(),
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
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
            follower.status.toString(), // Replace with localized string if necessary
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: theme.onSurface.withOpacity(0.58),
            ),
          ),
        ),

        const SizedBox(height: 8),

        // Profile Username
        Text(
          user, // Replace with localized string if necessary
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
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
                follower.progress.toString(),
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              Text(
               "/${follower.totalEpisodes}",
                style: TextStyle(
                  fontSize: 14,
                  color: theme.onSurface.withOpacity(0.58),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

