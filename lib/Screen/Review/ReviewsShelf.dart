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

class ReviewsShelf extends StatefulWidget {
  final Media media;
  final DetailScreenView view;

  const ReviewsShelf({super.key, required this.media, required this.view});

  @override
  State<ReviewsShelf> createState() => _ReviewsShelfState();
}

class _ReviewsShelfState extends State<ReviewsShelf> {
  final _reviews = <Review>[].liveList;
  final _loaded = false.live;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    try {
      _reviews.value = await widget.view.reviews(widget.media);
    } catch (_) {
    } finally {
      _loaded.value = true;
    }
  }

  void _openAll() => navigateToPage(
    context,
    ReviewsScreen(
      media: widget.media,
      view: widget.view,
      initial: [..._reviews],
    ),
  );

  @override
  Widget build(BuildContext context) => Watch(() {
    if (!_loaded.value || _reviews.isEmpty) return const SizedBox.shrink();
    final service = find<MediaServiceController>().currentService.value;
    final shown = _reviews.take(3).toList();
    return ShelfFrame(
      title: getString.reviewsTitle,
      onTitleTap: _openAll,
      trailing: IconButton(
        icon: const Icon(Icons.arrow_forward_rounded),
        onPressed: _openAll,
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
                  onTap: () => navigateToPage(
                    context,
                    ReviewScreen(review: r, service: service),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  });
}
