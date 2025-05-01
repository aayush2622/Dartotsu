import 'package:dartotsu/Functions/string_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../../../../Widgets/CachedNetworkImage.dart';
import '../../../../../Api/Anilist/Anilist.dart';
import '../../../../../DataClass/User.dart';

Widget ItemFollower(BuildContext context, userData follower, String type) {
  final theme = Theme.of(context).colorScheme;
  String user =
      (Anilist.username.value.isEqualTo(follower.name)) ? "YOU" : follower.name;
  String status = (follower.status == "CURRENT")
      ? (type == "ANIME" ? 'WATCHING' : 'READING')
      : (follower.status ?? "");
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Material(
              elevation: 2,
              shape: const CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: Container(
                  width: 92,
                  height: 92,
                  color: Colors.transparent,
                  child: Stack(
                    children: [
                      cachedNetworkImage(
                          imageUrl: follower.pfp.toString(),
                          fit: BoxFit.cover,
                          height: 92,
                          width: 92),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 92,
                          height: 28,
                          decoration: BoxDecoration(
                            color: follower.score == 0.0
                                ? theme.primary
                                : theme.tertiary,
                            shape: BoxShape.rectangle,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(256),
                                topRight: Radius.circular(256)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                ((follower.score ?? 0) / 10).toString(),
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: theme.onPrimary,
                                ),
                              ),
                              Icon(
                                Icons.star_rounded,
                                color: theme.onPrimary,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          status,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 12,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w600,
            color: theme.onSurface.withValues(alpha: 0.58),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          user,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
            fontSize: 14,
            color: theme.onSurface,
          ),
        ),
        const SizedBox(height: 8),
        Row(
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
              " | ${follower.totalEpisodes ?? "~"}",
              style: TextStyle(
                fontSize: 14,
                color: theme.onSurface.withValues(alpha: 0.58),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
