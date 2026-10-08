import 'package:flutter/material.dart';

import '../../Core/Services/MediaService.dart';
import '../../Core/Services/ScoreFormat.dart';
import '../../Utils/Extensions/ContextExtensions.dart';
import '../../Utils/Extensions/Responsive.dart';
import '../../Utils/Function.dart';
import '../../Widgets/Components/AniHtml.dart';
import '../../Widgets/Components/AppBars.dart';
import '../../Widgets/Components/BaseScreen.dart';
import '../../Widgets/Components/ScrollConfig.dart';
import '../../Widgets/Components/SectionCard.dart';
import '../Social/Components/AniMediaCard.dart';
import '../Social/SocialNavigation.dart';

class ReviewScreen extends StatefulWidget {
  final Review review;
  final MediaService service;

  const ReviewScreen({super.key, required this.review, required this.service});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends BaseScreen<ReviewScreen> {
  @override
  Widget buildContent(BuildContext context) {
    final review = widget.review;
    final user = review.user;
    final url = review.siteUrl;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppScreenBar(
        title: user?.name ?? '',
        actions: [
          if (url != null)
            IconButton(
              icon: const Icon(Icons.open_in_new_rounded),
              onPressed: () => openLinkInBrowser(url),
            ),
        ],
      ),
      body: ScrollConfig(
        context,
        child: ListView(
          padding: EdgeInsets.fromLTRB(
            Dimens.gap,
            Dimens.gapXs,
            Dimens.gap,
            Dimens.gapXl,
          ),
          children: [
            SectionCard(
              title: review.summary,
              child: AniHtml(
                html: review.body ?? '',
                onLink: (link) => openAppLink(context, widget.service, link),
                linkCard: aniLinkCards(widget.service),
              ),
            ),
            if (review.score != null && review.score! > 0)
              Padding(
                padding: EdgeInsets.only(top: Dimens.gapSm),
                child: Text(
                  ScoreFormat.current.format(review.score ?? 0),
                  style: context.textTheme.titleMedium,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
