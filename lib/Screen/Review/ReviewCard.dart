import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/ScoreFormat.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Nav/DpadNav.dart';
import '../../Widgets/Components/Clickable.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../../Widgets/Components/UserAvatar.dart';
import '../Social/SocialNavigation.dart';

void openReviewer(BuildContext context, MediaService service, Review review) {
  final user = review.user;
  if (user == null || user.id == 0) return;
  openProfile(
    context,
    service,
    id: '${user.id}',
    user: UserBrief(id: '${user.id}', name: user.name, avatar: user.pfp),
  );
}

class ReviewCard extends StatelessWidget {
  final Review review;
  final VoidCallback? onTap;
  final VoidCallback? onUserTap;

  const ReviewCard({
    super.key,
    required this.review,
    this.onTap,
    this.onUserTap,
  });

  String get _excerpt => (review.summary?.isNotEmpty ?? false)
      ? review.summary!
      : (review.body ?? '').replaceAll(RegExp(r'<[^>]*>'), ' ').trim();

  @override
  Widget build(BuildContext context) {
    final scheme = context.colorScheme;
    final user = review.user;
    final score = ScoreFormat.current.format(review.score ?? 0);
    final total = review.ratingAmount ?? 0;
    return SectionCard(
      padding: EdgeInsets.zero,
      child: Material(
        color: Colors.transparent,
        borderRadius: Dimens.border,
        clipBehavior: Clip.antiAlias,
        child: DpadTap(
          borderRadius: Dimens.border,
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(Dimens.gapSm + 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Clickable(
                        onTap: onUserTap,
                        child: Row(
                          children: [
                            UserAvatar(
                              url: user?.pfp,
                              name: user?.name ?? '?',
                              size: 34,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    user?.name ?? '',
                                    style: context.textTheme.titleSmall,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  if (review.createdAt != null)
                                    Text(
                                      date(review.createdAt!),
                                      style: context.textTheme.labelSmall
                                          ?.copyWith(
                                            color: scheme.onSurfaceVariant,
                                          ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    if (score.isNotEmpty)
                      Chip(
                        visualDensity: VisualDensity.compact,
                        label: Text(score),
                        avatar: const Icon(Icons.star_rounded, size: 16),
                      ),
                  ],
                ),
                if (_excerpt.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text(
                    _excerpt,
                    style: context.textTheme.bodyMedium,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
                if (total > 0) ...[
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        size: 14,
                        color: scheme.onSurfaceVariant,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        getString.reviewHelpful(review.rating ?? 0, total),
                        style: context.textTheme.labelSmall?.copyWith(
                          color: scheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  static String date(int seconds) {
    final d = DateTime.fromMillisecondsSinceEpoch(seconds * 1000);
    return '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
  }
}
