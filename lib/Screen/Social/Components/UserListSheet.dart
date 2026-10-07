import 'package:flutter/material.dart';

import '../../../Core/Services/MediaService.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../../Widgets/Components/CustomBottomDialog.dart';
import '../../../Widgets/Components/AppSheet.dart';
import '../../../Widgets/Components/SheetTile.dart';
import '../SocialNavigation.dart';
import '../../../Widgets/Components/UserAvatar.dart';
import '../../../Utils/Functions/NavigateToScreen.dart';

String followLabel(UserBrief user) {
  if (user.isFollowing && user.isFollower) return 'Mutual';
  if (user.isFollowing) return 'Following';
  if (user.isFollower) return 'Follows you';
  return '';
}

Future<void> showUserListSheet(
  BuildContext context,
  MediaService service,
  String title,
  List<UserBrief> users,
) => showCustomBottomDialog<void>(
  context,
  AppSheet(
    title: title,
    heightFactor: users.length > 6 ? 0.7 : null,
    child: users.isEmpty
        ? Padding(
            padding: const EdgeInsets.all(32),
            child: Text(
              'Nobody yet',
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          )
        : ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 24),
            children: [
              for (final user in users)
                SheetTile(
                  leading: UserAvatar(url: user.avatar, name: user.name),
                  title: Text(user.name),
                  subtitle: followLabel(user).isEmpty
                      ? null
                      : Text(followLabel(user)),
                  onTap: () {
                    popPage(context);
                    openProfile(context, service, id: user.id, user: user);
                  },
                ),
            ],
          ),
  ),
);
