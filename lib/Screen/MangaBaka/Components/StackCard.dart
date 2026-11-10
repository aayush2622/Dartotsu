import 'package:flutter/material.dart';

import '../../../Api/Services/MangaBaka/Data/Community.dart';
import '../../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../../Utils/Extensions/ContextExtensions.dart';
import '../../CommunityLists/Components/CommunityListCard.dart';

typedef StackCovers = CommunityCovers;

class StackCard extends StatelessWidget {
  final MangaBakaStack stack;
  final VoidCallback? onTap;
  final VoidCallback? onOwner;

  const StackCard({super.key, required this.stack, this.onTap, this.onOwner});

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    return CommunityListCard(
      title: stack.title,
      covers: stack.covers,
      author: stack.owner.username.isEmpty
          ? null
          : getString.stackBy(stack.owner.label),
      onAuthor: onOwner,
      meta: [
        getString.stackSeriesCount(stack.entryCount),
        getString.stackSavesCount(stack.saveCount),
      ].join(' · '),
      tags: [
        if (stack.featured) (getString.stacksFeatured, scheme.primary),
        if (stack.spoiler) (getString.stackSpoilers, scheme.tertiary),
      ],
      onTap: onTap,
    );
  }
}
