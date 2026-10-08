import 'package:flutter/material.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Shelf/ShelfFrame.dart';
import 'ReviewCard.dart';
import 'ReviewScreen.dart';
import 'ReviewsScreen.dart';
import '../../Core/State/State.dart';

class ReviewsShelf extends StatelessWidget {
  final Media media;
  final DetailScreenView view;

  const ReviewsShelf({super.key, required this.media, required this.view});

  void _openAll(BuildContext context) => navigateToPage(
    context,
    ReviewsScreen(media: media, view: view, initial: [...?media.review]),
  );

  @override
  Widget build(BuildContext context) {
    final shown = (media.review ?? const <Review>[]).take(3).toList();
    if (shown.isEmpty) return const SizedBox.shrink();
    final service = find<MediaServiceController>().currentService.value;
    return ShelfFrame(
      title: getString.reviewsTitle,
      onTitleTap: () => _openAll(context),
      trailing: IconButton(
        icon: const Icon(Icons.arrow_forward_rounded),
        onPressed: () => _openAll(context),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimens.pagePad),
        child: Column(
          children: [
            for (final r in shown)
              Padding(
                padding: EdgeInsets.only(bottom: Dimens.gapSm),
                child: ReviewCard(
                  review: r,
                  onUserTap: () => openReviewer(context, service, r),
                  onTap: () => navigateToPage(
                    context,
                    ReviewScreen(review: r, service: service, view: view),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
