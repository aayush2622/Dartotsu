import 'package:flutter/material.dart';

import '../../../../Core/Services/Model/Media.dart';
import '../../../../Core/Services/Model/User.dart';
import '../../../../Utils/Extensions/ContextExtensions.dart';
import '../../../../Utils/Extensions/Responsive.dart';
import '../../../../Utils/Extensions/StringExtensions.dart';
import '../../../../Utils/Nav/DpadNav.dart';
import '../../../../Widgets/Components/CachedNetworkImage.dart';
import '../../../../Widgets/Components/ScrollConfig.dart';
import '../../../../Widgets/Shelf/ShelfFrame.dart';

class FollowersShelf extends StatelessWidget {
  final Media media;
  final List<User> users;
  final String? me;

  const FollowersShelf({
    super.key,
    required this.media,
    required this.users,
    this.me,
  });

  @override
  Widget build(BuildContext context) {
    final ordered = [
      ...users.where((u) => u.name == me),
      ...users.where((u) => u.name != me),
    ];
    return ShelfFrame(
      title: 'Following',
      child: SizedBox(
        height: 190,
        child: ScrollConfig(
          context,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
            itemCount: ordered.length,
            separatorBuilder: (_, _) => SizedBox(width: Dimens.gapSm),
            itemBuilder: (_, i) => _Follower(
              user: ordered[i],
              media: media,
              isMe: ordered[i].name == me,
            ),
          ),
        ),
      ),
    );
  }
}

class _Follower extends StatelessWidget {
  final User user;
  final Media media;
  final bool isMe;

  const _Follower({
    required this.user,
    required this.media,
    required this.isMe,
  });

  String get _status => user.status == 'CURRENT'
      ? (media.isAnime ? 'WATCHING' : 'READING')
      : (user.status ?? '').titleCase;

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final score = user.score ?? 0;
    return DpadFocusable(
      onSelect: () {},
      builder: dpadScaleFocus,
      child: SizedBox(
        width: 92,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Material(
              elevation: 2,
              shape: const CircleBorder(),
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                width: 84,
                height: 84,
                child: Stack(
                  children: [
                    cachedNetworkImage(
                      imageUrl: user.pfp,
                      fit: BoxFit.cover,
                      width: 84,
                      height: 84,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 84,
                        height: 26,
                        decoration: BoxDecoration(
                          color: score == 0 ? scheme.primary : scheme.tertiary,
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(256),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              (score / 10).toString(),
                              style: context.textTheme.labelMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: scheme.onPrimary,
                              ),
                            ),
                            Icon(
                              Icons.star_rounded,
                              size: 12,
                              color: scheme.onPrimary,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              _status,
              textAlign: TextAlign.center,
              style: context.textTheme.labelSmall?.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                color: scheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              isMe ? 'YOU' : user.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodyMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${user.progress ?? 0}',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: scheme.secondary,
                  ),
                ),
                Text(
                  ' | ${media.totalUnits ?? "~"}',
                  style: context.textTheme.bodySmall?.copyWith(
                    color: scheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
