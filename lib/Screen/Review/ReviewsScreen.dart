import 'dart:async';

import 'package:flutter/material.dart';

import '../../Core/Services/MediaServiceController.dart';
import '../../Core/Services/Model/Media.dart';
import '../../Core/ThemeManager/LanguageSwitcher.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Functions/NavigateToScreen.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/EmptyState.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import 'ReviewCard.dart';
import 'ReviewScreen.dart';
import '../../Core/State/State.dart';

class ReviewsScreen extends StatefulWidget {
  final Media media;
  final DetailScreenView view;
  final List<Review> initial;

  const ReviewsScreen({
    super.key,
    required this.media,
    required this.view,
    this.initial = const [],
  });

  @override
  State<ReviewsScreen> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends BaseScreen<ReviewsScreen> {
  late final _items = widget.initial.liveList;
  final _loadingMore = false.live;
  final _failed = false.live;
  var _page = 1;
  var _hasMore = true;

  @override
  void initState() {
    super.initState();
    if (_items.isEmpty) unawaited(_more());
  }

  Future<void> _more() async {
    if (_loadingMore.value || !_hasMore) return;
    _loadingMore.value = true;
    try {
      final next = await widget.view.reviews(widget.media, page: _page + 1);
      final known = {for (final r in _items) r.id};
      final fresh = next.where((r) => !known.contains(r.id)).toList();
      if (fresh.isEmpty) {
        _hasMore = false;
      } else {
        _items.addAll(fresh);
        _page++;
      }
    } catch (_) {
      _hasMore = false;
      _failed.value = _items.isEmpty;
    } finally {
      _loadingMore.value = false;
    }
  }

  bool _onScroll(ScrollNotification n) {
    if (n.metrics.axis == Axis.vertical && n.metrics.extentAfter < 500) {
      unawaited(_more());
    }
    return false;
  }

  @override
  Widget buildContent(BuildContext context) {
    final service = find<MediaServiceController>().currentService.value;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(title: getString.reviewsTitle),
      body: Watch(() {
        final loading = _loadingMore.value;
        if (_items.isEmpty) {
          return loading
              ? const Center(child: CircularProgressIndicator())
              : EmptyState(
                  icon: Icons.rate_review_outlined,
                  title: _failed.value
                      ? getString.reviewsFailed
                      : getString.reviewsEmpty,
                  failed: _failed.value,
                );
        }
        final items = _items.toList();
        return NotificationListener<ScrollNotification>(
          onNotification: _onScroll,
          child: ScrollConfig(
            context,
            child: ListView.separated(
              padding: EdgeInsets.fromLTRB(
                Dimens.gap,
                Dimens.gapXs,
                Dimens.gap,
                Dimens.gapXl,
              ),
              itemCount: items.length + (loading ? 1 : 0),
              separatorBuilder: (_, _) => SizedBox(height: Dimens.gapSm),
              itemBuilder: (_, i) => i == items.length
                  ? const Padding(
                      padding: EdgeInsets.all(24),
                      child: Center(child: CircularProgressIndicator()),
                    )
                  : ReviewCard(
                      review: items[i],
                      onTap: () => navigateToPage(
                        context,
                        ReviewScreen(review: items[i], service: service),
                      ),
                    ),
            ),
          ),
        );
      }),
    );
  }
}
